# **Fraud Risk Analytics & Behavioral Anomaly Detection**

##  Project Overview

This project delivers an **end-to-end fraud risk analytics solution** for large-scale digital transaction data using **SQL-based feature engineering** and **Power BI dashboards**.

It is designed to help **risk and fraud teams**:

* Identify **where fraud occurs**
* Understand **why it occurs**
* Prioritize **which transactions require investigation**

The focus is on **explainable, decision-driven analytics**, not black-box prediction models.

---

##  What This Project Delivers

* A **risk scoring framework (0–1)** to prioritize suspicious transactions
* A **fraud monitoring dashboard** aligned with real-world BFSI workflows
* An **analyst-ready investigation queue** for high-risk cases
* Clear insights into **fraud drivers, behavioral anomalies, and risk concentration**

---

##  Business Problem

Digital payment platforms process millions of transactions daily where:

* Fraud events are **rare but high impact**
* Data is **highly imbalanced**
* Risk teams need **prioritized alerts**, not raw classifications

Traditional accuracy-based models fail in such environments.
This project addresses the gap by building a **risk-based monitoring system** that supports **investigation and decision-making**, not just prediction.

---

##  Dataset Overview

* **Total Transactions:** ~6,000,000
* **Fraud Transactions:** 8,213
* **Overall Fraud Rate:** 0.13%
* **High-Risk Transactions Identified:** 954

This reflects a **realistic fraud scenario** with extreme class imbalance.

---

##  Analytics & Technical Approach


Each SQL file represents a **distinct stage of a professional data analytics pipeline**, similar to workflows used in product and fintech companies.

---

##  Step-by-Step Workflow

### 1️. Schema Design
- Designed a normalized transaction schema
- Defined appropriate data types and constraints
- Prepared the database for large-scale data ingestion

---

### 2️. Data Cleaning & Validation
- Removed invalid and negative transactions
- Identified and flagged balance inconsistencies
- Eliminated records with null critical identifiers
- Ensured data reliability before downstream analysis

---

### 3️. Feature Engineering
Engineered fraud-indicative features including:
- **Balance mismatch flag**
- **Extreme transaction amount flag**
- **Zero balance behavior flag**
- **Amount-based thresholds**

These features are commonly used in **real-world fraud detection systems** to capture abnormal transaction behavior.

---

### 4️. Exploratory Data Analysis (EDA)
Performed analysis to understand transaction behavior and fraud patterns:
- Transaction type distribution
- Fraud rate by transaction type
- Amount bucket vs fraud probability
- Time-based transaction behavior

EDA was used to **validate assumptions and surface high-risk patterns**.

---

### 5️. Business Metrics
Computed **decision-ready KPIs**, including:
- Overall fraud rate
- Fraud contribution by transaction type
- Concentration of fraud among top users
- Identification of high-risk behavioral segments

These metrics align with what **product, risk, and operations teams** monitor regularly.

---

### 6️. Risk Scoring Model (SQL-based)
Developed an **interpretable, rule-based risk scoring system** using engineered features such as:
- Balance mismatch
- Extreme transaction amounts
- Zero-balance patterns
- Flagged fraud indicators

Each transaction is categorized into:
- **HIGH Risk**
- **MEDIUM Risk**
- **LOW Risk**

This scoring approach is suitable for **early-stage deployment** and prioritization before applying machine learning models.

---

### 7️. Final Recommendations
Based on the analysis, the project identifies:
- High-risk users recommended for immediate blocking
- High-risk transactions requiring manual review
- Behavioral patterns contributing disproportionately to fraud

---

## Power BI Fraud Monitoring Dashboard

**Executive Overview**

* Transaction volume
* Fraud rate
* Trend monitoring

**Fraud Drivers & Patterns**

* Fraud rate by transaction type
* Amount-based risk patterns
* Behavioral anomaly indicators

**High-Risk Transactions**

* Filterable analyst queue
* Risk score–based prioritization
* Actionable investigation view


---

##  Key Insights

* Fraud is **highly concentrated**, with a small subset of users driving most fraud
* Certain transaction types exhibit **disproportionately higher fraud rates**
* High-value and anomalous transactions carry elevated risk
* Behavioral deviation is a stronger risk signal than raw transaction volume
* Fraud shows **temporal clustering**, indicating attack windows

---

##  Business Recommendations

* Auto-flag transactions with **risk score > 0.85** for analyst review
* Apply stricter monitoring to **high-value transfer transactions**
* Use risk-based prioritization to reduce manual investigation load
* Focus controls on users with repeated behavioral anomalies

---

##  Tools & Technologies

* SQL (MySQL)
* Power BI
* Fraud & Risk Analytics
* Behavioral Analytics
* Business Intelligence

---

##  Repository Structure

```
fraud-risk-analytics/
│
├── sql/
│   ├── 1.Schema.sql
│   ├── 2.Data_Cleaning.sql
|   ├── 3.Feature_Engineering.sql
|   ├── 4.Exploratory_Analysis.sql
|   ├── 5.Business_Metrics.sql
|   ├── 6.Risk_Scoring.sql
|   ├── 7.Final Recommendation.sql
|
├── powerbi/
│   ├── Fraud_Analysis_01_Navigation.png
|   |── Fraud_Analysis_02_Executive_Overview.png
|   |── Fraud_Analysis_03_Fraud_Patterns.png
|   |── Fraud_Analysis_04_High_Risk_Transactions.png
|   ├── README.md
|
├── insights/
│   └── dashboard_insights.pdf
│
└── README.md

```

---

##  Skills Demonstrated

* Advanced SQL for analytics
* Feature engineering for imbalanced data
* Fraud and anomaly analysis
* Risk scoring and prioritization
* Power BI dashboarding for decision support
* Business-oriented analytical thinking

---

##  Why This Project Matters

This project reflects **real-world fraud analytics workflows**, where the goal is not just detection, but **prioritization, explainability, and actionability** for risk and analytics teams.

---




