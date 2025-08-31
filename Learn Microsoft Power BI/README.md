# 📊 DAX Functions Cheat Sheet

This repository contains a **comprehensive reference guide** of DAX (Data Analysis Expressions) functions, categorized for quick lookup.  
Useful for Power BI, Analysis Services, and Excel users who work with **data modeling, calculations, and time intelligence**.

---

## 📌 Table of Contents

1. [Aggregation Functions](#-aggregation-functions)  
2. [Date & Time Functions](#-date--time-functions)  
3. [Filter Functions](#-filter-functions)  
4. [Financial Functions](#-financial-functions)  
5. [Info Functions](#-info-functions)  
6. [Information Functions](#-information-functions)  
7. [Logical Functions](#-logical-functions)  
8. [Math & Trig Functions](#-math--trig-functions)  
9. [Other Functions](#-other-functions)  
10. [Parent & Child Functions](#-parent--child-functions)  
11. [Relationship Functions](#-relationship-functions)  
12. [Statistical Functions](#-statistical-functions)  
13. [Table Manipulation Functions](#-table-manipulation-functions)  
14. [Text Functions](#-text-functions)  
15. [Time Intelligence Functions](#-time-intelligence-functions)  

---

## 🔹 Aggregation Functions

| Function | Description | Syntax Example |
|----------|-------------|----------------|
| **APPROXIMATEDISTINCTCOUNT** | Estimated count of unique values | `APPROXIMATEDISTINCTCOUNT(Sales[CustomerID])` |
| **AVERAGE** | Average of numbers in a column | `AVERAGE(Sales[SalesAmount])` |
| **AVERAGEA** | Average including text/logical | `AVERAGEA(Sales[Quantity])` |
| **AVERAGEX** | Avg of expression over table | `AVERAGEX(Sales, Sales[SalesAmount]*Sales[Quantity])` |
| **COUNT** | Count numeric non-blanks | `COUNT(Sales[Quantity])` |
| **COUNTA** | Count all non-blanks | `COUNTA(Sales[CustomerName])` |
| **COUNTAX** | Count non-blank results of expression | `COUNTAX(Sales, Sales[Quantity]*2)` |
| **COUNTBLANK** | Count blank values | `COUNTBLANK(Sales[Remarks])` |
| **COUNTROWS** | Count rows in table | `COUNTROWS(Sales)` |
| **COUNTX** | Count numeric expression results | `COUNTX(Sales, Sales[Quantity]*Sales[UnitPrice])` |
| **DISTINCTCOUNT** | Count unique values | `DISTINCTCOUNT(Sales[CustomerID])` |
| **DISTINCTCOUNTNOBLANK** | Count unique values excluding blanks | `DISTINCTCOUNTNOBLANK(Sales[CustomerID])` |
| **MAX** | Largest numeric value | `MAX(Sales[SalesAmount])` |
| **MAXA** | Largest incl. logical/text | `MAXA(Sales[Score])` |
| **MAXX** | Max of expression per row | `MAXX(Sales, Sales[Quantity]*Sales[UnitPrice])` |
| **MIN** | Smallest numeric value | `MIN(Sales[SalesAmount])` |
| **MINA** | Smallest incl. logical/text | `MINA(Sales[Score])` |
| **MINX** | Min of expression per row | `MINX(Sales, Sales[Quantity]*Sales[UnitPrice])` |
| **PRODUCT** | Product of all values | `PRODUCT(Sales[Quantity])` |
| **PRODUCTX** | Product of expression per row | `PRODUCTX(Sales, Sales[Quantity]*Sales[UnitPrice])` |
| **SUM** | Sum of numbers in column | `SUM(Sales[SalesAmount])` |
| **SUMX** | Sum of expression per row | `SUMX(Sales, Sales[Quantity]*Sales[UnitPrice])` |

---

## 🔹 Date & Time Functions

| Function | Description | Syntax Example |
|----------|-------------|----------------|
| **CALENDAR** | Returns contiguous set of dates | `CALENDAR(DATE(2024,1,1), DATE(2024,12,31))` |
| **CALENDARAUTO** | Creates date table based on model | `CALENDARAUTO()` |
| **DATE** | Creates a date | `DATE(2025,8,17)` |
| **DATEDIFF** | Difference between dates | `DATEDIFF(DATE(2024,1,1), DATE(2024,12,31), DAY)` |
| **DATEVALUE** | Converts text to date | `DATEVALUE("2025-08-17")` |
| **DAY** | Extracts day | `DAY(DATE(2025,8,17))` |
| **EDATE** | Date shifted by months | `EDATE(DATE(2025,8,17), 2)` |
| **EOMONTH** | Last day of month shifted by N | `EOMONTH(DATE(2025,8,17), 1)` |
| **HOUR** | Extracts hour | `HOUR(NOW())` |
| **MINUTE** | Extracts minute | `MINUTE(NOW())` |
| **MONTH** | Extracts month number | `MONTH(DATE(2025,8,17))` |
| **NETWORKDAYS** | Working days count | `NETWORKDAYS(DATE(2025,8,1), DATE(2025,8,31))` |
| **NOW** | Current date & time | `NOW()` |
| **QUARTER** | Extracts quarter | `QUARTER(DATE(2025,8,17))` |
| **SECOND** | Extracts seconds | `SECOND(NOW())` |
| **TIME** | Creates time | `TIME(14,30,0)` |
| **TIMEVALUE** | Text time → datetime | `TIMEVALUE("2:45 PM")` |
| **TODAY** | Current date | `TODAY()` |
| **UTCNOW** | UTC date & time | `UTCNOW()` |
| **UTCTODAY** | Current UTC date | `UTCTODAY()` |
| **WEEKDAY** | Day of week | `WEEKDAY(DATE(2025,8,17))` |
| **WEEKNUM** | Week number | `WEEKNUM(DATE(2025,8,17), 2)` |
| **YEAR** | Extracts year | `YEAR(DATE(2025,8,17))` |
| **YEARFRAC** | Fraction of year between dates | `YEARFRAC(DATE(2025,1,1), DATE(2025,8,17))` |

---

## 🔹 Filter Functions
> Examples: `ALL`, `FILTER`, `LOOKUPVALUE`, `RANK`, `RUNNINGSUM`, `WINDOW`  
(See full list above in the repo.)

---

## 🔹 Financial Functions
> Examples: `ACCRINT`, `CUMIPMT`, `FV`, `NPER`, `PMT`, `PV`, `RATE`, `XIRR`, `YIELD`  
(Full detailed list available above.)

---

## 🔹 Info Functions
> DMV functions like `INFO.VIEW.TABLES()`, `INFO.VIEW.COLUMNS()`, `INFO.MEASURES()` etc.  

---

## 🔹 Information Functions
> Examples: `CONTAINS`, `CONTAINSSTRING`, `HASONEFILTER`, `ISBLANK`, `ISNUMBER`, `USERNAME()`  

---

## 🔹 Logical Functions
> Examples: `IF`, `IFERROR`, `AND`, `OR`, `NOT`, `SWITCH`, `COALESCE`  

---

## 🔹 Math & Trig Functions
> Examples: `ABS`, `ROUND`, `EXP`, `LOG`, `POWER`, `SQRT`, `RAND`, `MOD`, `TRUNC`  

---

## 🔹 Other Functions
> Examples: `BLANK()`, `ERROR()`, `TOCSV()`, `TOJSON()`  

---

## 🔹 Parent & Child Functions
> Examples: `PATH`, `PATHITEM`, `PATHCONTAINS`, `PATHLENGTH`  

---

## 🔹 Relationship Functions
> Examples: `RELATED`, `RELATEDTABLE`, `USERELATIONSHIP`, `CROSSFILTER`  

---

## 🔹 Statistical Functions
> Examples: `MEDIAN`, `PERCENTILEX.INC`, `STDEV.S`, `VAR.P`, `RANKX`, `GEOMEAN`  

---

## 🔹 Table Manipulation Functions
> Examples: `ADDCOLUMNS`, `GENERATE`, `SUMMARIZE`, `VALUES`, `CROSSJOIN`, `UNION`, `TOPN`  

---

## 🔹 Text Functions
> Examples: `CONCATENATE`, `LEFT`, `RIGHT`, `SEARCH`, `TRIM`, `UPPER`, `VALUE`, `FORMAT`  

---

## 🔹 Time Intelligence Functions
> Examples: `TOTALYTD`, `SAMEPERIODLASTYEAR`, `PREVIOUSMONTH`, `DATESMTD`, `CLOSINGBALANCEYEAR`  

---

## 📖 Notes
- This guide is structured for **quick lookup**.  
- Each section includes the **function name, description, and example syntax**.  
- Best suited for **Power BI developers, data analysts, and DAX learners**.  

---

## 🤝 Contributing
Feel free to **open issues or pull requests** to add more functions, improve examples, or fix mistakes.  

---

## 📜 License
This project is licensed under the [MIT License](LICENSE).  

---
