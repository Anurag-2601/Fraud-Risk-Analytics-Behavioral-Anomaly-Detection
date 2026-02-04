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

### 1️. SQL Feature Engineering

Fraud risk indicators were engineered using SQL, including:

* Balance mismatch detection
* Extreme transaction amount detection (statistical thresholds)
* Sender-level behavioral baselines
* Fraud concentration and Pareto analysis
* Time-based behavioral patterns

**SQL concepts used:**

* CTEs
* Window functions
* Aggregations and behavioral metrics
* Risk scoring logic

---

### 2️. Risk Scoring Framework

Each transaction is assigned a **risk score (0–1)** by combining:

* System fraud flags
* Balance inconsistencies
* Amount anomalies
* Behavioral deviation indicators

This enables **risk prioritization** instead of binary fraud labeling.

---

### 3️. Power BI Fraud Monitoring Dashboard

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
│   ├── feature_engineering.sql
│   ├── behavioral_analysis.sql
│
├── powerbi/
│   └── fraud_risk_dashboard.pbix
│
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

##  Note on Power BI File

The original Power BI file contains a large embedded dataset and exceeds GitHub’s file size limits.
This repository includes a **lightweight template PBIX** with all visuals, measures, and data model structure preserved.

---

