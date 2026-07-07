# Logistics Performance & Risk Analysis: 2015 – 2018

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![DAX](https://img.shields.io/badge/DAX-005C84?style=for-the-badge&logo=microsoft&logoColor=white)
![Data_Modeling](https://img.shields.io/badge/Data_Modeling-20232A?style=for-the-badge&logo=databricks&logoColor=white)
![Data_Visualization](https://img.shields.io/badge/Data_Visualization-107C41?style=for-the-badge&logo=microsoftexcel&logoColor=white)

## Project Overview
This project is an end-to-end Business Intelligence solution designed to diagnose and visualize global supply chain inefficiencies. By analyzing 181,000+ orders across a four-year period, this dashboard transitions raw logistics data into an interactive diagnostic tool, pinpointing exactly where and why delivery delays occur.

The primary goal of this project was to move beyond simple descriptive statistics (what happened) and provide **diagnostic analytics** (why it happened) to empower business stakeholders with actionable, data-driven recommendations.

---

## Dashboard Previews

### 1. Executive Summary & KPI Tracking
*(This view provides the high-level metrics for quick stakeholder consumption.)*

![Executive Overview](images/Executive_summary.png)

### 2. Geographic Risk Matrix
*(Identifying high-volume, high-delay clusters across the globe.)*

![Risk Matrix](images/Geographic_Performance.png)

### 3. AI-Driven Root Cause Analysis
*(Decomposition tree identifying the exact bottlenecks in the logistics path.)*

![Root Cause Analysis](images/Root_Cause.png)

---

## Methodology: How I Built This

To ensure accuracy and performance, I followed a strict data engineering and modeling lifecycle:

1. **Data Cleaning & Preparation:** 
   - Addressed dirty data, specifically handling null/blank values within regional and departmental columns to ensure accurate geographic mapping.
   - Standardized naming conventions across the dataset, converting backend database abbreviations into clean, business-friendly headers (e.g., converting `Avg_Shipping_Delay_Days` to `Avg Delay (Days)`).
2. **Data Modeling & DAX:** 
   - Engineered specific DAX measures to calculate performance benchmarks, including total revenue, order volume, and an On-Time Delivery (OTD) percentage.
   - Built a dynamic `Late Orders` measure (`[Total_Orders] - [Orders_On_Time]`) to isolate failures for root cause analysis.
3. **UI/UX & Visual Design:** 
   - Designed a clear, high-contrast visual hierarchy (Red/Green color coding) to immediately draw the user's eye to underperforming categories.

---

## The Biggest Challenge & Overcoming It

**The Challenge: Shifting from Descriptive to Diagnostic Analytics**
Initially, the data naturally guided the visuals toward highlighting successes showing total orders and overall on-time delivery. However, presenting an OTD rate of 45.17% without explaining the *why* does not solve the business problem. The hardest part of this project was re-engineering the analytical focus from "what went right" to tracking "what went wrong."

**The Solution:**
I had to write custom DAX logic to isolate the negative variance (`Late Orders`) and feed that specific measure into Power BI's AI-driven Decomposition Tree. By explicitly commanding the AI to find the "Highest Value" of delays across multiple dimensions (Shipping Mode, Region, Department), the tool dynamically mapped out the exact failure paths. This shifted the dashboard from a static reporting screen into an interactive diagnostic engine, ultimately revealing that the "Standard Class" shipping mode was the primary operational bottleneck. 

---

## Key Business Insights
* **Delivery Deficit:** The global logistics network is severely underperforming, maintaining an On-Time Delivery Rate of only **45.17%** with an average delay of **1.62 days**.
* **Primary Bottleneck:** The AI path analysis identified that the "Standard Class" shipping mode is the most significant driver of late orders across all departments.
* **Geographic Risk:** Specific city clusters fall into the high-risk, top-right quadrant (High Volume / High Delay), presenting an immediate opportunity for targeted operational audits.

---

## Executive Presentation

To ensure these data insights are actionable for business stakeholders, I translated the dashboard findings into a concise, 6-slide executive presentation. 

The presentation bridges the gap between technical data modeling and business strategy by focusing strictly on the bottom line. It highlights the core performance gap specifically that the on-time delivery rate sits under the 50% target at 45.17% and walks stakeholders through the geographic risk factors. 

Most importantly, it concludes with targeted operational next steps, such as auditing Standard Class logistics partners operating in the highest-risk top-right quadrant.

<p align="center">
  <img src="images/slide2.png" width="32%" />
  <img src="images/slide4.png" width="32%" />
  <img src="images/slide6.png" width="32%" />
</p>

*Note: [Click here to view the full Executive Summary Presentation (PDF)](Executive%20Summary.pdf).*