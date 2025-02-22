CREATE TABLE PATIENTS(
pat_id VARCHAR2(10) NOT NULL,
pat_firstname VARCHAR2(20),
pat_lastname VARCHAR2(20),
pat_gender VARCHAR2(10),
pat_dob date,
pat_phone VARCHAR2(10),
pat_address VARCHAR2(100),
pat_zipcode VARCHAR2(5),
pat_province VARCHAR2(15),
pat_status VARCHAR2(10) default 'Green',
pat_drungallergic VARCHAR2(50),
pat_congenitaldisease VARCHAR2(50),
pat_symptom VARCHAR2(50),
pat_treatmentringhts VARCHAR2(3) default 'SSS',
PRIMARY KEY(pat_id)
);

ALTER TABLE PATIENTS 
ADD CONSTRAINT check_pat_gender CHECK(pat_gender in('Female', 'Male'));

ALTER TABLE PATIENTS 
ADD CONSTRAINT check_pat_status CHECK(pat_status in('Green', 'Yellow', 'Red'));

INSERT INTO PATIENTS(pat_id, pat_firstname, pat_lastname, pat_gender, pat_phone, pat_address, pat_zipcode, pat_province, pat_status, pat_drungallergic, pat_congenitaldisease, pat_symptom, pat_treatmentringhts)
Values ('HN12749886', 'Meechok', 'Sukchai', 'Male', '0909874736', '254 Phayathai Road, Wang Mai Subdistrict', '10330', 'Bangkok', 'Green', '-', '-', 'cough, sore throat', 'UCS');

INSERT INTO PATIENTS(pat_id, pat_firstname, pat_lastname, pat_gender, pat_phone, pat_address, pat_zipcode, pat_province, pat_status, pat_drungallergic, pat_congenitaldisease, pat_symptom, pat_treatmentringhts)
Values ('HN10853094', 'Chanida', 'Wongprasert', 'Female', '0902376553', '99 Ratchadaphisek Road Bukkhalo Subdistrict, Thon Buri District', '10600', 'Bangkok', 'Green', '-', '-', 'cough, sore throat, Dry cough','SSS');

INSERT INTO PATIENTS(pat_id, pat_firstname, pat_lastname, pat_gender, pat_phone, pat_address, pat_zipcode, pat_province, pat_status, pat_drungallergic, pat_congenitaldisease, pat_symptom, pat_treatmentringhts)
Values ('HN12997309', 'Nantida', 'Sukrungruaeng', 'Female', '0840136998', '518 Petchkasem Road North Bang Khae Subdistrict Bang Khae District', '10600', 'Bangkok', 'Green', '-', '-', 'Fever, Anosmia','UCS');

INSERT INTO PATIENTS(pat_id, pat_firstname, pat_lastname, pat_gender, pat_phone, pat_address, pat_zipcode, pat_province, pat_status, pat_drungallergic, pat_congenitaldisease, pat_symptom, pat_treatmentringhts)
Values ('HN09427962', 'Methawin', 'Thongkong', 'Male', '0857983042', '3522 Ladprao Rd. Klongchan Bang Kapi District', '10240', 'Bangkok', 'Yellow', 'Carbamazepine', '-', 'Sore throat, Diarrhea','SSS');

INSERT INTO PATIENTS(pat_id, pat_firstname, pat_lastname, pat_gender, pat_phone, pat_address, pat_zipcode, pat_province, pat_status, pat_drungallergic, pat_congenitaldisease, pat_symptom, pat_treatmentringhts)
Values ('HN10100989', 'Yanisa', 'Ratchatathiwat', 'Female', '0908628146', 'Ramkhamhaeng Road, Huamark Subdistrict, Bangkapi District', '10240', 'Bangkok', 'Yellow', '-', '-', 'Sore throat, Tiredness','UCS');

INSERT INTO PATIENTS(pat_id, pat_firstname, pat_lastname, pat_gender, pat_phone, pat_address, pat_zipcode, pat_province, pat_status, pat_drungallergic, pat_congenitaldisease, pat_symptom, pat_treatmentringhts)
Values ('HN14749886', 'Jirayu', 'Soinark', 'Male', '0609525605', '7/1 Borommaratchachonnani Road, Khwaeng Arun Amarin, Khet Bangkok Noi', '10700', 'Bangkok', 'Green', '-', 'Hypertension','Sore throat','UCS');

INSERT INTO PATIENTS(pat_id, pat_firstname, pat_lastname, pat_gender, pat_phone, pat_address, pat_zipcode, pat_province, pat_status, pat_drungallergic, pat_congenitaldisease, pat_symptom, pat_treatmentringhts)
Values ('HN11200989', 'Chayaphon', 'Kongpan', 'Male', '0624096678', '299 Charoennakorn Road, Khlong Ton Sai Subdistrict Khong Ton Sai Subdistrict', '10600', 'Bangkok', 'Yellow', '-', 'daibetes mellitus type 1', 'Diarrhea, Fever','UCS');

INSERT INTO PATIENTS(pat_id, pat_firstname, pat_lastname, pat_gender, pat_phone, pat_address, pat_zipcode, pat_province, pat_status, pat_drungallergic, pat_congenitaldisease, pat_symptom, pat_treatmentringhts)
Values ('HN21097437', 'Racha', '-', 'Male', '0639763325', '607 Petchkasem Road, Bangwa Subdistrict Phasi Charoen District', '10160', 'Bangkok', 'Yellow', '-', '-', 'Sore throat, Anosmia','UCS');

INSERT INTO PATIENTS(pat_id, pat_firstname, pat_lastname, pat_gender, pat_phone, pat_address, pat_zipcode, pat_province, pat_status, pat_drungallergic, pat_congenitaldisease, pat_symptom, pat_treatmentringhts)
Values ('HN09427007', 'Rakorn', 'Prombut', 'Male', '0909931654', '88 Sukhumvit Soi 19 Sukhumvit Rd. North Klongtoei, Wattana', '10110', 'Bangkok', 'Green', 'Cephalosporin', '-', 'Fever, Dry cough, Sore throat','SSS');

INSERT INTO PATIENTS(pat_id, pat_firstname, pat_lastname, pat_gender, pat_phone, pat_address, pat_zipcode, pat_province, pat_status, pat_drungallergic, pat_congenitaldisease, pat_symptom, pat_treatmentringhts)
Values ('HN13100989', 'Nida', 'Keawsutthi', 'Female', '0613408374', '209 Charansanitwong Road Bang Bamru Subdistrict, Bang Phlat District', '10700', 'Bangkok', 'Green', '-', '-', 'Sore throat','UCS');


CREATE TABLE DOCTORS(
doc_id VARCHAR2(10) NOT NULL,
doc_firstname VARCHAR2(20),
doc_lastname VARCHAR2(20),
doc_gender VARCHAR2(10),
doc_position VARCHAR2(20) NOT NULL,
doc_skill VARCHAR2(50),
doc_dob date,
doc_phone VARCHAR2(10),
doc_email VARCHAR2(30),
doc_address VARCHAR2(100),
doc_zipcode VARCHAR2(5),
doc_province VARCHAR2(15),
PRIMARY KEY(doc_id)
);

ALTER TABLE DOCTORS
ADD CONSTRAINT check_doc_gender CHECK(doc_gender in('Female', 'Male'));

ALTER TABLE DOCTORS
ADD CONSTRAINT check_doc_position CHECK(doc_position in('Intern', 'Resident', 'Fellow', 'Staff'));

INSERT INTO DOCTORS(doc_id, doc_firstname, doc_lastname, doc_gender, doc_position, doc_skill, doc_phone, doc_email, doc_address, doc_zipcode, doc_province) 
Values ('DT63011234', 'Raksa', 'Sommot', 'Male', 'Resident', 'Surgeon general', '0909769794', 'raksasommot@gmail.com', '2 Wang Lang Road, Siriraj Subdistrict Bang Khun Thian District', '10700', 'Bangkok');

INSERT INTO DOCTORS(doc_id, doc_firstname, doc_lastname, doc_gender, doc_position, doc_skill, doc_phone, doc_email, doc_address, doc_zipcode, doc_province) 
Values ('DT60014567', 'Surat', 'Sompon', 'Male', 'Fellow', 'Oto-rhino-laryngologis', '0909769570', 'rakswa123@gmail.com', 'Rangsit-Nakhon Nayok Road, Ongkharak Subdistrict, Ongkharak District', '26120', 'Nakhon Nayok');

INSERT INTO DOCTORS(doc_id, doc_firstname, doc_lastname, doc_gender, doc_position, doc_skill, doc_phone, doc_email, doc_address, doc_zipcode, doc_province) 
Values ('DT59033567', 'Yuwadee', 'Deemesok', 'Female', 'Staff', 'Radiologist', '0840720960', 'Yuwadee@gmail.com', '50 Ngamwongwan Road, Ladyao Subdistrict, Chatuchak District', '10900', 'Bangkok');

INSERT INTO DOCTORS(doc_id, doc_firstname, doc_lastname, doc_gender, doc_position, doc_skill, doc_phone, doc_email, doc_address, doc_zipcode, doc_province) 
Values ('DT50014569', 'Phonsook', 'Phonpan', 'Male', 'Staff', 'Pulmonary Medicine', '0983048812', 'Phonsook@gmail.com', 'Phutthamonthon Soi 4 Road, Salaya Subdistrict, Phutthamonthon District', '73170', 'Nakhon Pathom');

INSERT INTO DOCTORS(doc_id, doc_firstname, doc_lastname, doc_gender, doc_position, doc_skill, doc_phone, doc_email, doc_address, doc_zipcode, doc_province) 
Values ('DT65017890', 'Phakamai', 'Vorasook', 'Female', 'Intern', 'Surgeon general', '0846685420', 'Phakamai@gmail.com', 'Rama 6 Road Thung Phaya Thai Subdistrict, Ratchathewi District', '10400', 'Bangkok');


CREATE TABLE PHARMACISTS(
phar_id VARCHAR2(10) NOT NULL,
phar_firstname VARCHAR2(20),
phar_lastname VARCHAR2(20),
phar_gender VARCHAR2(10),
phar_dob date,
phar_phone VARCHAR2(10),
phar_email VARCHAR2(30),
phar_address VARCHAR2(100),
phar_zipcode VARCHAR2(5),
phar_province VARCHAR2(15),
PRIMARY KEY(phar_id)
);

ALTER TABLE PHARMACISTS
ADD CONSTRAINT check_phar_gender CHECK(phar_gender in('Female', 'Male'));

INSERT INTO PHARMACISTS(phar_id, phar_firstname, phar_lastname, phar_gender, phar_phone, phar_email, phar_address, phar_zipcode, phar_province)
Values('PH63010125', 'Rakrain', 'Meesuk', 'Female', '0901234567','Rakrain1234@gmail.com', '114 Sukhumvit 23, Watthana District', '10110', 'Bangkok');

INSERT INTO PHARMACISTS(phar_id, phar_firstname, phar_lastname, phar_gender, phar_phone, phar_email, phar_address, phar_zipcode, phar_province)
Values ('PH63095296', 'Chalermdej', 'Prapinpairoj', 'Male', '0897537966', 'Chalermdej@gmail.com', '444 Maharat Road, Ohra Borommaharajawang District Phra Nakhon District', '10200', 'Bangkok');

INSERT INTO PHARMACISTS(phar_id, phar_firstname, phar_lastname, phar_gender, phar_phone, phar_email, phar_address, phar_zipcode, phar_province)
Values ('PH57826419', 'Nattha', 'Suphasanan', 'Female', '0909874761', 'Nattha@gmail.com', '227 Phayathai Road, Pathum Wan Subdistrict Pathum Wan District', '10330', 'Bangkok');

INSERT INTO PHARMACISTS(phar_id, phar_firstname, phar_lastname, phar_gender, phar_phone, phar_email, phar_address, phar_zipcode, phar_province)
Values ('PH59001863', 'Nirut', 'Sanchai', 'Male', '0847536533', 'Nirut@gmail.com', '146 Soi Kudi Chin, Wat Kanlaya Subdistrict Thonburi District', '10600', 'Bangkok');



CREATE TABLE MEDICINES(
med_id VARCHAR2(8) NOT NULL,
med_name VARCHAR2(20) NOT NULL,
med_dosageform VARCHAR2(20) ,
med_type VARCHAR2(20) default 'able to withdraw' ,
med_treat VARCHAR2(500) NOT NULL,
med_use VARCHAR2(500) NOT NULL,
med_sideeffects VARCHAR2(500),
med_contraindication VARCHAR2(500) NOT NULL,
med_quantityinstock numeric(14,0) NOT NULL,
med_price numeric(6,2) default 0,
med_MFGdate date NOT NULL,
med_EXPdate date NOT NULL,
PRIMARY KEY(med_id)
);

ALTER TABLE MEDICINES 
ADD CONSTRAINT check_med_dosageform CHECK(med_dosageform in('Capsule', 'Solution', 'Potion', 'Tablet', 'Pill'));

ALTER TABLE MEDICINES 
ADD CONSTRAINT check_med_type CHECK(med_type in('able to withdraw', 'cannot withdraw'));

ALTER TABLE MEDICINES 
ADD CONSTRAINT check_med_quantityinstock CHECK(med_quantityinstock > 0);

INSERT INTO MEDICINES(med_id, med_name, med_dosageform, med_type, med_treat, med_use, med_sideeffects, med_contraindication, med_quantityinstock, med_price) 
Values ('12908484', 'Paracetamol', 'Pill', 'able to withdraw', 'Used to relieve fever, headache, body-aches and pain in general.', 'The typical dose for adults and children is 10 to 15 mg/kg of body weight (kg), taken at least 4 hours apart on a single day. Do not exceed 8 tablets (4,000 mg). Used for primary pain treatment. Do not take any medication for a long period of time without consulting a doctor or pharmacist.', '1. An allergic reaction, which can cause a rash and swelling 2. Flushing, low blood pressure and a fast heartbeat – this can sometimes happen when paracetamol is given in hospital into a vein in your arm 3. blood disorders, such as thrombocytopenia (low number of platelet cells) and leukopenia (low number of white blood cells) 4. Liver and kidney damage, if you take too much(overdose) – this can be fatal in severe cases', 'Taking paracetamol with other medicines, food and alcohol. Paracetamol can react unpredictably with certain other medications. This can affect how well either medicine works and might increase the risk of side effects. It may not be safe to take paracetamol at the same time as: carbamazepine , colestyramine ,imatinib and busulfan , ketoconazole ,lixisenatide , metoclopramide ,phenobarbital, phenytoin and primidone ,warfarin', 25000, 15);

INSERT INTO MEDICINES(med_id, med_name, med_dosageform, med_type, med_treat, med_use, med_sideeffects, med_contraindication, med_quantityinstock, med_price) 
Values ('12908485', 'Aspirin', 'Pill', 'able to withdraw', ' Used to relieve pain, reduce fever and reduce the risk of stroke and heart disease.', 'The dose of aspirin depends on the indication. And at the doctor is discretion. Pain, inflammation, fever reduction: Aspirin 325-650 mg every 4-6 hours or use when symptoms occur. Take the medicine immediately after meals. for the prevention of coronary artery disease and treatment of acute myocardial ischemia Talk to your doctor before starting this medication.', '1. Nausea, vomiting, abdominal pain 2. stomach irritation gastrointestinal ulcer 3. bronchial stenosis, asthma attack 4. abnormal bleeding 5. hives rash', ' Avoid drinking alcohol while taking aspirin. as it increases the risk of bleeding disorders Do not use in patients who are allergic to aspirin and other NSAIDs. Avoid use of aspirin in patients with asthma. because the drug will shrink the bronchi resulting in an exacerbation of asthma', 10000, 15);

INSERT INTO MEDICINES(med_id, med_name, med_dosageform, med_type, med_treat, med_use, med_sideeffects, med_contraindication, med_quantityinstock, med_price) 
Values ('12908486', 'Dextromethorphan', 'Pill', 'able to withdraw', 'Used to relieve cough without phlegm or dry cough. The drug acts on the nervous system, causing the bronchi to not constrict. resulting in less coughing', 'This drug is used for Treatment of dry cough without phlegm Dosage form Tablet size 15 mg How to use: Children over 12 years old and adults take 1-2 tablets 3-4 times a day after breakfast, lunch and dinner (and before bedtime).', '1. Abdominal pain or constipation 2. Headache, confusion, dizziness, or mild drowsiness. 3. Nausea or vomiting', '1. Should not be used in case of coughing with phlegm. Or in children younger than 6 years 2. Do not use in patients who are allergic to this drug. Patients with chronic cough, such as cough from smoking, asthma, emphysema, or cough with a lot of mucus 3. When the cough persists after taking the drug for 7 days or has a high fever, rash, headache with coughing should consult a doctor', 17000, 30);

INSERT INTO MEDICINES(med_id, med_name, med_dosageform, med_type, med_treat, med_use, med_sideeffects, med_contraindication, med_quantityinstock, med_price) 
Values ('12908487', 'Chlorpheniramine', 'Potion', 'able to withdraw', 'Used to relieve various symptoms from allergies such as runny nose, watery eyes, red eyes, itchy eyes, itchy nose, itchy throat, sneezing, hives, rashes. Used to reduce nasal discharge in colds.', 'This medication may be taken with meals or on an empty stomach. Take according to the amount and duration prescribed by your doctor or on the drug label. Do not use more than the recommended dosage or length of time without consulting your doctor. The tablets should not be crushed, bitten or chewed before swallowing. The tablet should be swallowed whole. Liquid medicine should be taken with a measuring spoon or medicine cup.', '1. constipation, lack of appetite 2. Diarrhea, upset stomach, nausea, vomiting 3. Dizziness, blurred vision, drowsiness 4. Insomnia, exhaustion, anxiety, panic easily 5. dry mouth, dry nose, or dry throat', 'You should not drink alcohol while taking this medication. Tell your doctor first if you take sleeping pills. Antidepressants, sedatives, muscle relaxants, sedatives may cause drowsiness after taking them, so should not perform tasks that require caution and consciousness.', 32000, 30);

INSERT INTO MEDICINES(med_id, med_name, med_dosageform, med_type, med_treat, med_use, med_sideeffects, med_contraindication, med_quantityinstock, med_price) 
Values ('12908488', 'Fexofenadine', 'Potion', 'able to withdraw', 'Used to relieve symptoms caused by allergic rhinitis, sneezing, runny nose, itching in the nose, roof of the mouth, throat, itching in the eyes, watery eyes, red eyes. Can be used for hives. Chronic rash of unknown cause', 'Adults: 180 mg orally once daily or 60 mg twice daily (maximum 180 mg daily). Children 6 months to 2 years: 15 mg twice a day, 2-11 years: 30 mg twice a day.', '1. headache, drowsiness, fatigue, drowsiness 2. disorders of the nervous system 3. Symptoms related to the cardiovascular system include palpitations, rapid heartbeat. 4. Gastrointestinal related symptoms include nausea, indigestion, diarrhea. 5. Symptoms related to the respiratory system include respiratory tract infections, sinusitis. 6. Urinary tract symptoms include urinary tract infections. 7. Symptoms associated with the skin system include rashes.', 'Do not use if you have or are suffering from kidney disease. or have kidney problems Problems urinating or taking erythromycin or ketoconazole, which may increase the risk of side effects. When used with Fexofenadine, the drug may cause drowsiness. Do not drive or do other activities that may cause danger.', 20000, 60);

INSERT INTO MEDICINES(med_id, med_name, med_dosageform, med_type, med_treat, med_use, med_sideeffects, med_contraindication, med_quantityinstock, med_price) 
Values ('12908489', 'Ibuprofen', 'Capsule', 'able to withdraw', 'It is a drug in the group of non-steroidal anti-inflammatory drugs (NSAIDs) that have the effect of pain relief and swelling. Ibuprofen is used to treat pain from many diseases such as headaches, toothaches, menstrual cramps. muscle pain or arthritis flu pain or influenza', 'The drug should be taken with meals. or after meals Because the drug may cause irritation to the stomach. Indications for reducing fever Adult dose: 200-400 mg every 4-6 hours, maximum daily dose: 1200 mg.', 'Cause bleeding, dizziness, headache, abnormal alertness, abdominal pain, heartburn, nausea, decreased appetite, constipation, diarrhea, difficulty swallowing, vomiting, edema, and red rash. or interfere with daily life should consult a doctor', 'Do not use in patients with a history of peptic ulcer disease. or gastrointestinal bleeding Do not use in infants with congenital heart disease. Do not use in patients with kidney disease. Use with caution in patients with bleeding disorders.', 17000, 35);

INSERT INTO MEDICINES(med_id, med_name, med_dosageform, med_type, med_treat, med_use, med_sideeffects, med_contraindication, med_quantityinstock, med_price) 
Values ('12908495', 'Amoksiklav 2x', 'Tablet', 'able to withdraw', 'used to treat many different infections caused by bacteria, such as sinusitis, pneumonia, ear infections, bronchitis, urinary tract infections, and infections of the skin.', 'Adults-Children over 12 years old and weighing over 40 kg. Take 1 tablet twice a day or every 12 hours.', '1. Common side effects of the drug include diarrhea, nausea, vomiting, skin rashes and vaginitis. If the symptoms are mild, the drug does not need to be discontinued. There is not need to stop medication 2. Severe side effects that require immediate medical attention include severe diarrhea. Blood in the stool, hard blister, watery blister or blisters all over the body or severe abdominal pain with high fever.', '1. Precautions for using the drug. 2. Do not use this drug in patients who are allergic to amoxicillin. or allergic to beta-lactam drugs 3. Do not use in patients with a history of abnormal liver function caused by taking this drug. 4. Be careful using this drug in patients with fever and enlarged lymph nodes. (Mononucleosis) 5. Be careful using this drug in patients with kidney and liver disease. 6. Be careful using this drug in children, pregnant women and lactating women.', 9000, 150);

INSERT INTO MEDICINES(med_id, med_name, med_dosageform, med_type, med_treat, med_use, med_sideeffects, med_contraindication, med_quantityinstock, med_price) 
Values ('12908491', 'Favipiravir', 'Tablet', 'able to withdraw', 'Favipiravir belongs to a group of antiviral medicines used to treat Covid-19 . Besides this, FAVIPIRAVIR is also indicated for the treatment of influenza, ebola and other pathogenic viral infections.', 'Adults Take 9 tablets every 12 hours on the first day. and reduced to 4 tablets every 12 hours For Children , the dose must be calculated based on body weight. Patients should take the drug strictly on the scheduled day and time. The duration of treatment is 5-10 days, depending on the severity of the disease and the patient is response to treatment.', '1. Nausea and vomiting 2. liver and kidney impairment', 'Resulting in abnormal blood sugar levels when taken with certain drugs Including affecting liver function so should not eat together with Andrographis paniculate or drugs that affect the liver.', 30000, 15);

INSERT INTO MEDICINES(med_id, med_name, med_dosageform, med_type, med_treat, med_use, med_sideeffects, med_contraindication, med_quantityinstock, med_price) 
Values ('12908492', 'Decolgen', 'Pill', 'able to withdraw', 'Relieves colds with nasal congestion, runny nose, headache and fever.', 'Adults take 1-2 tablets every 4-6 hours, children over 12 years old take 1 tablet every 4-6 hours.', 'The most common side effects that may occur while using this formulation are: (If it is continuous or interferes with daily life should inform the doctor or pharmacist) is dry eyes, dry nose, dry mouth, double vision, drowsiness, dizziness, forgetfulness, noise in the ears. Mild nausea, constipation, abdominal pain, difficulty urinating', 'Do not use expired or deteriorated drugs. Do not use this drug for more than 5 consecutive days or more than the prescribed dose. because it can be toxic to the liver (Patients with liver disease, kidney disease should consult a doctor or pharmacist before taking this drug.) Avoid taking this drug together with drinking alcoholic beverages.', 23000, 20);

INSERT INTO MEDICINES(med_id, med_name, med_dosageform, med_type, med_treat, med_use, med_sideeffects, med_contraindication, med_quantityinstock, med_price) 
Values ('12908493', 'Brompheniramine', 'Potion', 'able to withdraw', 'It is a medicine to treat and relieve symptoms of runny nose, sneezing, eye irritation, itchy eyes, red eyes or watery eyes caused by allergies, hay fever or the common cold. various allergies, thus helping to alleviate the symptoms But it may only be used to relieve symptoms. Cannot directly treat the disease that is the cause of the illness', 'Allergic reactions Allergic rhinitis Use of the drug in oral form (tablets and liquids) Adult dosage: 4 mg every 4-6 hours, up to a maximum daily dose of 24 mg. Dosage for children 2-6 years: 1 mg every 4-6 hours, up to a maximum daily dose of 4 mg.', 'Drowsiness, blurred vision, constipation, red skin, warmth or stabbing sensation in the skin, mouth, nose, or throat dry mouth, nausea, headache, chest discomfort. feeling restless or excited, especially in children But if the symptoms do not improve or worsen, you should consult a doctor.', 'This drug should not be used by pregnant women. Especially in the group of pregnant women in the third trimester. Use with caution in patients with glaucoma. enlarged prostate obstructed urinary tract due to power anticholinergic of the drug can promote the severity of the disease', 38000, 60);


CREATE TABLE PRESCRIBING_INFORAMATIONS(
pre_id VARCHAR2(11) NOT NULL,
med_id VARCHAR2(100) NOT NULL,
pat_id VARCHAR2(10) NOT NULL,
phar_id VARCHAR2(10) NOT NULL,
doc_id VARCHAR2(10) NOT NULL,
pre_dispensing date,
pre_dose numeric(2),
PRIMARY KEY(pre_id),
CONSTRAINT fk_doctor FOREIGN KEY (doc_id) REFERENCES DOCTORS(doc_id) on delete cascade,
CONSTRAINT fk_pat FOREIGN KEY (pat_id) REFERENCES PATIENTS(pat_id) on delete cascade,
CONSTRAINT fk_phar FOREIGN KEY (phar_id) REFERENCES PHARMACISTS(phar_id) on delete cascade,
CONSTRAINT fk_med FOREIGN KEY (med_id) REFERENCES MEDICINES(med_id) on delete cascade
);

INSERT INTO PRESCRIBING_INFORAMATIONS(pre_id, doc_id, med_id, pat_id, phar_id, pre_dose)
Values ('PRE00001234', 'DT63011234', '12908484', 'HN12749886', 'PH63010125', 10);

INSERT INTO PRESCRIBING_INFORAMATIONS(pre_id, doc_id, med_id, pat_id, phar_id, pre_dose)
Values ('PRE00001239', 'DT59033567', '12908484', 'HN10853094', 'PH57826419', 15);