# **Fraud Risk Analytics and Behavioral Anomaly Detection**

## Project Summary

This project implements a **fraud risk analytics framework** for large-scale digital transaction data using **SQL-based feature engineering** and **Power BI dashboards**.
The objective is to identify **fraud patterns, behavioral anomalies, and high-risk transactions** to support **risk monitoring and analyst decision-making**.

The project focuses on **explainable analytics** and **risk prioritization**, rather than black-box prediction models.

---

## Business Problem

Digital payment platforms process millions of transactions daily, where:

* Fraud events are **rare but high impact**
* Data is **highly imbalanced**
* Risk teams require **prioritized alerts**, not raw classifications

Traditional accuracy-based approaches are insufficient.
This project addresses the problem by building a **risk scoring and monitoring system** that helps identify **where fraud occurs, why it occurs, and which transactions require investigation**.

---

## Dataset Overview

* Total Transactions: ~6,000,000
* Fraud Transactions: 8,213
* Overall Fraud Rate: 0.13%
* High-Risk Transactions Identified: 954

The dataset exhibits strong **class imbalance**, making **precision-focused risk analysis** essential.

---

## Analytics and Technical Approach

### 1. SQL Feature Engineering

Extensive feature engineering was performed using SQL to generate interpretable fraud risk signals, including:

* Balance mismatch detection
* Extreme transaction amount detection using statistical thresholds
* Sender-level behavioral baselines
* Fraud concentration and Pareto analysis
* Time-based transaction behavior analysis

Advanced SQL concepts used:

* Common Table Expressions (CTEs)
* Window functions
* Behavioral aggregations
* Risk scoring logic

---

### 2. Risk Scoring Framework

A **risk score (0–1)** was calculated for each transaction by combining multiple interpretable indicators:

* System fraud flags
* Balance inconsistencies
* Amount anomalies
* Behavioral deviation signals

This enables **transaction prioritization** instead of binary fraud classification.

---

### 3. Power BI Dashboard

A multi-page **Power BI fraud monitoring dashboard** was developed to support risk analysis:

**Executive Summary**

* Transaction volume
* Fraud rate
* Fraud trends over time

**Fraud Drivers and Patterns**

* Fraud rate by transaction type
* Amount-based fraud patterns
* Behavioral risk indicators

**High-Risk Transactions**

* Filterable table of high-risk transactions
* Risk score–based prioritization
* Analyst-ready investigation view

---

## Key Findings

* Fraud is **highly concentrated**, with a small subset of users accounting for a large share of fraud
* Certain transaction types show **significantly higher fraud rates**
* High-value and anomalous transactions exhibit elevated risk
* Behavioral deviations are stronger indicators than raw transaction counts
* Fraud occurrences show **temporal clustering**, indicating attack windows

---

## Tools and Technologies

* SQL (MySQL)
* Power BI
* Data Analytics
* Fraud Risk Analysis
* Behavioral Analytics

---

## Repository Structure

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

## Skills Demonstrated

* SQL querying and optimization
* Feature engineering for risk analytics
* Handling imbalanced datasets
* Fraud and anomaly analysis
* Dashboard development for decision support
* Business-oriented data analysis

---

## Use Cases

This project is relevant for:

* Fraud analytics roles
* Risk analytics teams
* Fintech and digital payments platforms
* Trust and safety analytics
* Consulting and analytics firms

---

## Future Enhancements

* Risk score optimization using machine learning models
* Real-time fraud alert simulation
* Extended behavioral pattern analysis
* Model explainability integration

---

## Author Note

This project was designed to reflect **real-world fraud analytics workflows**, emphasizing **clarity, interpretability, and actionable insights** for risk and analytics teams.

---

## Note:
The original Power BI file contains a large embedded dataset and exceeds GitHub’s file size limit.
This repository includes a lightweight template PBIX with all visuals, measures, and data model structure preserved.
