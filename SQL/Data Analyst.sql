/*ดูข้อมูลคนที่มีสถานะสีเขียวและอยู่ใน กทม. */
select * from patients where pat_status = 'Green' and pat_province = 'Bangkok'

/* เรียงลำดับจำนวนยาในคลังจากมากไปน้อย (เอาทั้งหมด)*/
select * from medicines order by med_quantityinstock DESC;

/*เรียงลำดับจำนวนยาในคลังจากมากไปน้อย เอาบางส่วน*/
select med_id, med_name, med_dosageform, med_quantityinstock, med_price, med_mfgdate, med_expdate from medicines order by med_quantityinstock DESC;

/*ดูข้อมูลยาที่มีชื่อลงท้ายด้วย e */
select * from medicines where med_name Like '%e'; 
/* or */
select med_id, med_name, med_dosageform, med_quantityinstock, med_price, med_mfgdate, med_expdatefrom medicines where med_name Like '%e'; 

/* หาจำนวนยาที่มากที่สุดในคลังยา */ 
select max(med_quantityinstock) as LargestQuantityInstock from medicines

/* หาจำนวนยาที่มากที่สุดในคลังยา */
select min(med_quantityinstock) as SmallestQuantityInstock from medicines

/* หาค่าเฉลี่ยของจำนวนยาทั้งหมดในคลัง 8*/
select avg(med_quantityinstock) as QuantityInstockAverage from medicines

/* ดูรายชื่อยาที่มีจำนวนยาในคลังมากกว่าจำนวนยาเฉลี่ยทั้งหมดในคลัง */
select med_name from medicines where med_quantityinstock > (select avg(med_quantityinstock) as QuantityinstockAverage from medicines)
select med_name, med_quantityinstock from medicines where med_quantityinstock > (select avg(med_quantityinstock) as QuantityinstockAverage from medicines) order by med_quantityinstock

/* ดูรายชื่อที่หมดอายุก่อนยาที่มีชื่อว่า Brompheniramine โดยเรียงลำดับข้อมูลตามวันที่หมดอายุของยาจากน้อยไปมาก */
select med_name, med_MFGdate, med_EXPdate from medicines 
where med_EXPdate < (select med_EXPdate from medicines where med_name = 'Brompheniramine')
order by med_EXPdate;

/* แสดงรายข้อมูลชื่อ ส่วนสูง และน้ำหนักของคนไข้ในกลุ่มสีเขียว เฉพาะคนที่มีน้ำหนักตัวน้อยกว่าผู้ป่วยที่มีน้ำหนักตัวมากที่สุดในกลุ่มสีเหลือง */
select pat_firstname, pat_height, pat_weight from patients
where pat_status = 'Green' and pat_weight < (select max(pat_weight) from patients where pat_status = 'Yellow');

/* แสดงรหัสใบจ่ายยา รหัสผู้ป่วยและชื่อผู้ป่วย ด้วย left join */
select p.pat_firstname, p.pat_lastname, r.pre_id from PRESCRIBING_INFORAMATIONS r
left join patients p
on p.pat_id = r.pat_id
order by p.pat_id

/* แสดงรหัสใบจ่ายยา รหัสผู้ป่วยและชื่อผู้ป่วย ด้วย right join */
select p.pat_firstname, p.pat_lastname, r.pre_id from PRESCRIBING_INFORAMATIONS r
right join patients p
on p.pat_id = r.pat_id
order by p.pat_id

/* แสดงชื่อคนไข้ นามสกุลคนไข้ ชื่อยาที่ได้รับ และจำนวนยาที่ได้รับ (left join) */
select pat_firstname, pat_lastname, med_name, pre_dose from  patients 
left join PRESCRIBING_INFORAMATIONS on patients.pat_id = PRESCRIBING_INFORAMATIONS.pat_id
left join medicines on medicines.med_id  = PRESCRIBING_INFORAMATIONS.med_id 

/* แสดงชื่อคนไข้ นามสกุลคนไข้ ชื่อยาที่ได้รับ และจำนวนยาที่ได้รับ (right join) */
select pat_firstname, pat_lastname, med_name, pre_dose from  medicines
right join PRESCRIBING_INFORAMATIONS on medicines.med_id = PRESCRIBING_INFORAMATIONS.med_id
right join patients on  patients.pat_id  = PRESCRIBING_INFORAMATIONS.pat_id

/* แสดงชื่อเภสัชผู้จ่าย รหัสใบจ่ายยา และชื่อยาที่สั่งจ่าย  */
select phar_firstname, pre_id, med_name from  pharmacists  
join PRESCRIBING_INFORAMATIONS on pharmacists.phar_id = PRESCRIBING_INFORAMATIONS.phar_id
join medicines on medicines.med_id  = PRESCRIBING_INFORAMATIONS.med_id 
where phar_firstname = 'Rakrain'

/* แสดงชื่อ นามสกุลคนไข้ ชื่อยาที่สั่งได้รับ และจำนวนยาที่ได้รับ */
select pat_firstname, pat_lastname, med_name, pre_dose from  patients 
join PRESCRIBING_INFORAMATIONS on patients.pat_id = PRESCRIBING_INFORAMATIONS.pat_id
join medicines on medicines.med_id  = PRESCRIBING_INFORAMATIONS.med_id
select p.phar_firstname, r.pre_id, m.med_name from  PRESCRIBING_INFORAMATIONS r
join pharmacists p on r.phar_id = p.phar_id
join medicines m on r.phar_id  = p.phar_id 
order by r.phar_id

/* ดูจำนวนผู้ป่วย */
select count(Distinct pat_firstname) from patients

/* แสดงข้อมูลรหัสใบสั่งยาที่บันทึกวันที่ 12/12/2024 โดยแสดงเลขที่ใบสั่งยา ชื่อผู้ป่วย ชื่อยา ชื่อแพทย์ ชื่อเภสัช  */
select pre_id, pat_firstname, med_name, doc_firstname, phar_firstname, pre_dispensing from  pharmacists  
join PRESCRIBING_INFORAMATIONS on pharmacists.phar_id = PRESCRIBING_INFORAMATIONS.phar_id
join medicines on medicines.med_id  = PRESCRIBING_INFORAMATIONS.med_id 
join doctors on doctors.doc_id = PRESCRIBING_INFORAMATIONS.doc_id
join patients on patients.pat_id = PRESCRIBING_INFORAMATIONS.pat_id
where pre_dispensing = '12/12/2024'