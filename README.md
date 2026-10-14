# 🏨 Hotel Booking Analytics & Revenue Optimization

[![Database](https://img.shields.io/badge/Database-PostgreSQL-blue.svg)](https://www.postgresql.org/)
[![Visualization](https://img.shields.io/badge/Tool-Power_BI-yellow.svg)](https://powerbi.microsoft.com/)
[![Documentation](https://img.shields.io/badge/Status-Complete-green.svg)]()

---

## 📌 Executive Summary
This project analyzes hotel booking patterns and cancellation rates using an integrated **PostgreSQL** and **Power BI** pipeline. By standardizing over 100k raw booking records into clean SQL relational views and building an interactive executive dashboard, this analysis identified key cancellation drivers, tracking **revenue-at-risk** and delivering actionable strategies to improve overall occupancy and booking retention.

---

## 🎯 Business Problem
A resort and city hotel chain experienced high cancellation rates and unpredictable booking seasonality, making capacity planning and revenue management challenging. 
* **Key Challenges:** High financial exposure from unbooked rooms, lack of centralized tracking for cancellation patterns, and unoptimized overbooking policies.
* **Objective:** Clean historical booking data, construct analytical KPIs (Cancellation Rate, Revenue Impact), and deliver actionable recommendations for management.

---

## 🛠️ Skills & Tech Stack
* **Database & Querying:** PostgreSQL (Data Transformation, Data Cleaning, Conditional Logic, Relational Views).
* **Data Visualization & BI:** Power BI Desktop, DAX Measures (KPI Cards, Percentages, Conditional Aggregations).
* **Data Modeling:** Star Schema design and Data Normalization.
* **Documentation & Version Control:** Git, GitHub Markdown, Professional Data Storytelling.

---

## 🔄 Data Pipeline & Methodology
1. **Data Ingestion & Cleaning (PostgreSQL):**
   * Imported raw booking datasets into PostgreSQL.
   * Constructed custom views (`public.v_cleaned_hotel_bookings`) to handle null values, standardize date formats, and group hotel types.
2. **Data Modeling & Calculations (Power BI):**
   * Connected Power BI directly to PostgreSQL views.
   * Created custom DAX metrics for **Total Bookings**, **Cancellation Rate (%)**, and **Revenue Impact**.
3. **Dashboard Design:**
   * Built an interactive 4-visual dashboard focusing on Executive KPIs, Seasonality Patterns, and Cancellation Drivers.

---

## 📊 Dashboard Preview & Key Results

![Hotel Booking Dashboard](docs/portfolio-project1.jpg)

### 🔑 Key Findings:
* **High Cancellation Rates:** Average cancellation rate reached ~37%, significantly impacting predicted monthly revenue.
* **Lead Time Impact:** Bookings made with longer lead times (>60 days) exhibited a higher probability of cancellation.
* **Transient Customers:** Non-contracted, transient visitors accounted for the majority of last-minute cancellations.

---

## 💡 Business Recommendations (Actionable Insights)

Based on the data findings, the following business strategies are recommended:

1. **Dynamic Deposit Policy for Long Lead Times:**
   * *Insight:* Bookings made far in advance have the highest cancellation rates.
   * *Action:* Implement a 15-20% non-refundable deposit for bookings made >60 days in advance to secure commitment.

2. **Targeted Overbooking Strategy:**
   * *Insight:* Seasonal patterns show predictable cancellation spikes during peak months.
   * *Action:* Utilize historical cancellation percentages to establish dynamic overbooking margins during high-demand months, reducing vacant room costs.

3. **Cancellation Penalty Structure for Transient Bookings:**
   * *Insight:* Transient customers generate the most volatile cancellation patterns.
   * *Action:* Introduce tiered cancellation fees within 48 hours of arrival to offset last-minute revenue loss.

---

## 🔮 Next Steps & Future Enhancements
* **Predictive Analytics:** Build a Machine Learning classification model (e.g., Logistic Regression in Python) to calculate a "Cancellation Probability Score" per customer upon booking.
* **Automated Data Refresh:** Set up scheduled ETL pipelines (e.g., using Apache Airflow or dbt) for real-time dashboard updates.
* **Customer LTV Analysis:** Integrate customer demographics to evaluate lifetime value across marketing channels.
