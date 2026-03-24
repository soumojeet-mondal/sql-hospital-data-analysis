# 🏥 SQL Data Analysis Project – Hospital Dataset

## 📌 Project Overview

This project demonstrates **SQL-based data analysis using PostgreSQL** on a hospital dataset.

The goal of this project is to analyze hospital operational data such as:

* patient statistics
* hospital expenses
* department performance
* patient stay duration

The analysis was completed as part of a **30 Days SQL Micro Course practice project**.

---

# 📂 Dataset

The dataset contains hospital-related information including:

| Column           | Description                         |
| ---------------- | ----------------------------------- |
| hospital_name    | Name of the hospital                |
| location         | City of the hospital                |
| department       | Department where patient is treated |
| patients_count   | Number of patients                  |
| doctors_count    | Number of doctors                   |
| admission_date   | Patient admission date              |
| discharge_date   | Patient discharge date              |
| medical_expenses | Total medical expenses              |

---

# 🛠 Technologies Used

* PostgreSQL
* SQL
* CSV dataset
* PgAdmin / PostgreSQL Query Tool

---

# 📊 Advanced SQL Analysis

This project focuses on performing **analytical SQL queries** to extract meaningful insights from hospital operational data.

Some key analytical tasks include:

### Hospital Performance Analysis

* Identifying the **top 3 departments treating the highest number of patients**
* Determining the **hospital with the maximum medical expenses**

### Financial Analysis

* Generating a **monthly medical expense report**
* Calculating the **daily average medical expense per hospital**

### Patient Stay Analysis

* Finding the **longest hospital stay** using date difference calculations
* Computing the **average length of stay for each department**

These queries demonstrate the use of:

* Aggregate Functions (`SUM`, `AVG`)
* `GROUP BY`
* `ORDER BY`
* Date arithmetic
* Ranking and filtering using `LIMIT`

📂 **View the complete SQL queries here:**
[`sql/hospital_queries.sql`](sql/hospital_queries.sql)

---

# 🔍 Example SQL Queries

Below are some of the analytical queries used in this project.

### 1️⃣ Longest Hospital Stay

This query identifies the hospital record with the **longest patient stay**.

```sql
SELECT hospital_name,
       discharge_date - admission_date AS longest_stay
FROM hospital
ORDER BY longest_stay DESC
LIMIT 1;
```

---

### 2️⃣ Monthly Medical Expense Report

This query analyzes **hospital expenses over time** by grouping data by month.

```sql
SELECT EXTRACT(MONTH FROM admission_date) AS month,
       SUM(medical_expenses) AS monthly_expense
FROM hospital
GROUP BY month
ORDER BY month;
```

---

### 3️⃣ Top Departments by Patient Load

This query identifies the **top 3 departments handling the most patients**.

```sql
SELECT department,
       SUM(patients_count) AS total_patients
FROM hospital
GROUP BY department
ORDER BY total_patients DESC
LIMIT 3;
```

---

# 📁 Project Structure

```
sql-hospital-data-analysis
│
├── dataset
│   └── Hospital_Data.csv
│
├── sql
│   └── hospital_queries.sql
│
├── project_report
│   └── sql_project_report.pdf
│
└── README.md
```

---

# 🚀 How to Run the Project

1. Create a PostgreSQL database.
2. Import the hospital dataset.
3. Create the hospital table.
4. Execute the SQL queries from the `/sql` folder.

---

# 📊 Sample Insights

Some insights obtained from the analysis include:

* Hospitals with the **highest medical expenses**
* Departments handling the **largest patient load**
* **Monthly trends** in hospital medical expenses
* Patient stay **duration patterns across departments**

---

# 🎓 Academic Context

This project was completed as part of a **SQL practice project to strengthen database querying and analytical skills using PostgreSQL**.

---

# 👤 Author

**Soumojeet**

If you find this project helpful, feel free to ⭐ the repository.
