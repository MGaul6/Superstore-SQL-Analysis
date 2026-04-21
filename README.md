# Superstore-SQL-Analysis
SQL-based analysis of Superstore dataset to extract business insights

# 🛍️ Superstore Sales Analysis (SQL Project)

## 📊 Project Overview

This project analyzes a retail Superstore dataset using SQL to extract meaningful business insights. The goal is to understand sales performance, customer behavior, and profitability trends.

---

## 🛠️ Tools Used

* SQL Server (SQL SERVER MANAGEMENT STUDIO - SSMS)
* SQL

---

## 📁 Dataset

* Superstore dataset (retail sales data)
* Contains information about customers, orders, products, sales, and profit

---

## 🔍 Key Analysis Performed

* Total Sales and Profit Calculation
* Top Customers Identification
* Sales by Category and Segment
* Profit Analysis by Region
* Monthly Sales Trend Analysis
* Detection of Loss-making Orders
* Identification of High-value Customers

---

## 📈 Sample Queries

### Total Sales & Profit

```sql
SELECT 
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM [Sample - Superstore];
```

---

### Top Customers

```sql
SELECT TOP 5 
    Customer_Name,
    SUM(Sales) AS total_sales
FROM [Sample - Superstore]
GROUP BY Customer_Name
ORDER BY total_sales DESC;
```

---

### Loss-making Orders

```sql
SELECT *
FROM [Sample - Superstore]
WHERE Profit < 0;
```


## 💡 Key Insights

* Identified top customers contributing the highest revenue
* Found loss-making transactions affecting overall profit
* Analyzed category-wise sales performance
* Observed monthly trends in sales

---

## 🚀 Conclusion

This project demonstrates strong understanding of SQL fundamentals including data analysis, aggregation, filtering, and grouping. It showcases the ability to extract actionable insights from real-world datasets.
