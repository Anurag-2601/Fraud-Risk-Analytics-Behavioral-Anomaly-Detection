# Fraud Analysis Dashboard (Power BI)

End-to-end fraud monitoring dashboard designed to support **risk analysis, fraud detection, and analyst investigation workflows**.

---

##  Dashboard Overview

This Power BI dashboard enables:

- Executive-level fraud monitoring
- Identification of fraud drivers and behavioral anomalies
- Prioritization of high-risk transactions for investigation

The dashboard is built on transaction-level data and applies **risk scoring, behavioral deviation analysis, and amount-based heuristics**.

---

##  Dashboard Pages

### 1️. Executive Overview
High-level KPIs and fraud trends for quick decision-making.

**Key Metrics**
- Total Transactions
- Fraud Transactions
- Fraud Rate (%)
- High-Risk Transactions

**Visuals**
- Fraud vs Non-Fraud distribution
- Fraud activity over time (step-based trend)

---

### 2️. Fraud Pattern Analysis
Deep dive into fraud drivers and risk patterns.

**Analysis Includes**
- Fraud rate by transaction type
- Amount bucket vs fraud rate analysis
- Identification of high-risk transaction categories

This view helps explain *why* fraud is occurring, not just *how much*.

---

### 3️. High-Risk Transactions
Analyst-focused investigation view.

**Capabilities**
- Filterable high-risk transaction queue
- Risk score–based prioritization
- Transaction-level details for investigation

Designed to simulate a real-world fraud operations workflow.

---

##  Key Insights

- Fraud is **highly concentrated**, driven by a small subset of users
- Certain transaction types exhibit **disproportionately higher fraud rates**
- High-value and anomalous transactions carry elevated risk
- Behavioral deviation is a stronger fraud signal than raw transaction volume
- Fraud activity shows **temporal clustering**, indicating attack windows

---

##  Business Recommendations

- Auto-flag transactions with **risk score > 0.85** for analyst review
- Apply stricter controls to **high-value transfer transactions**
- Use risk-based prioritization to reduce manual investigation effort
- Focus monitoring on users with repeated behavioral anomalies

---

##  File Access

- **Dashboard file:** Power BI (.pbix)
- **File size:** 642 MB

Due to file size constraints, the Power BI file is **not stored in GitHub**.  
It is hosted externally as per industry best practices.

 **Download link:**  
https://drive.google.com/file/d/1Ls_GIRyHhP9yQjTzJrzfeg46JUfrFbjP/view

---

##  Requirements

- Power BI Desktop (latest version)
- Minimum 8 GB RAM recommended

---

##  Tools & Technologies

- Power BI
- SQL (MySQL)
- Fraud & Risk Analytics
- Behavioral Analytics
- Business Intelligence

