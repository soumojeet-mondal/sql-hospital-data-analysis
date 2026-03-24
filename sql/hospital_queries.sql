CREATE TABLE hospital (
		Hospital_Name VARCHAR(50),
		Location VARCHAR(50),
		Department VARCHAR(50),
		Doctors_Count INT,
		Patients_Count INT,
		Admission_Date DATE,
		Discharge_Date DATE,
		Medical_Expenses NUMERIC(10,2)

)

SELECT * FROM hospital;

--1) total patients across all hospitals
SELECT SUM(Patients_Count) AS total_patients
FROM hospital;

--2) average doctors per hospital
SELECT Hospital_Name, AVG(Doctors_Count) AS avg_doctors
FROM hospital
GROUP BY Hospital_Name;

--3) top 3 departments with highest no. of patients
SELECT Department, SUM(patients_count) AS top_departments FROM hospital
GROUP BY Department
ORDER BY top_departments DESC LIMIT 3;

--4) hospital with max medical expenses
SELECT Hospital_Name, SUM(medical_expenses) AS total_expense FROM hospital
GROUP BY hospital_name
ORDER BY total_expense DESC LIMIT 1;

--5) average medical expense per day for each hospital
SELECT Hospital_Name, AVG(medical_expenses / (discharge_date - admission_date)) AS avg_expense
FROM hospital
GROUP BY Hospital_Name;


-- 6) Patient with longest stay
SELECT Hospital_Name, discharge_date - admission_date AS longest_stay
FROM hospital
ORDER BY longest_stay DESC LIMIT 1;

-- 7) total no. of patients in each city
SELECT location, SUM(patients_count) AS each_city
FROM hospital
GROUP BY location;

-- 8) average duration of stay per department
SELECT department, ROUND(AVG(discharge_date - admission_date), 2) AS stay_per_department
FROM hospital
GROUP BY department;


-- 9) find department with the least no. of patient
SELECT department, SUM(patients_count) AS lowest_patients
FROM hospital
GROUP BY department
ORDER BY lowest_patients LIMIT 1;


-- 10) group the data by month, calculate total medical expense for each month
SELECT SUM(medical_expenses) AS monthly_expense,
		EXTRACT(MONTH FROM admission_date) AS month
FROM hospital
GROUP BY EXTRACT(MONTH FROM admission_date)   
ORDER BY month














