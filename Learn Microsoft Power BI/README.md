# 📘 Power BI & DAX Functions Reference

Whether you're a beginner or an experienced user, this structure helps you navigate the essentials of **Power BI**.  
Each chapter builds on the previous one, starting from the basics and progressing to advanced topics like **time intelligence** and **table manipulations**.

👉 If you're using this for self-study, I recommend starting with **Chapter 1** and practicing each function in **Power BI Desktop**.

---

## 📑 Table of Contents

1. [Introduction to Power BI and DAX](#chapter-1-introduction-to-power-bi-and-dax)  
2. [Aggregation Functions](#chapter-2-aggregation-functions)  
3. [Date and Time Functions](#chapter-3-date-and-time-functions)  
4. [Filter Functions](#chapter-4-filter-functions)  
5. [Financial Functions](#chapter-5-financial-functions)  
6. [Information & Info Functions](#chapter-6-information--info-functions)  
7. [Logical Functions](#chapter-7-logical-functions)  
8. [Math and Trigonometry Functions](#chapter-8-math-and-trigonometry-functions)  
9. [Parent-Child and Relationship Functions](#chapter-9-parent-child-and-relationship-functions)  
10. [Statistical Functions](#chapter-10-statistical-functions)  
11. [Table Manipulation Functions](#chapter-11-table-manipulation-functions)  
12. [Text Functions](#chapter-12-text-functions)  
13. [Time Intelligence Functions](#chapter-13-time-intelligence-functions)  

---

## 📖 Detailed Chapters

### Chapter 1: Introduction to Power BI and DAX
- **What is Power BI?**  
- **Role of DAX (Data Analysis Expressions)**  
- **Calculated Columns vs Measures vs Tables**  
- **Row Context vs Filter Context**  
- **Syntax Basics in DAX**

---

### Chapter 2: Aggregation Functions
**Functions**: `SUM`, `SUMX`, `AVERAGE`, `AVERAGEX`, `COUNT`, `COUNTROWS`, `COUNTAX`, `DISTINCTCOUNT`, `MAX`, `MIN`, `PRODUCT`  

✅ **Use Cases**:  
- Total Sales (`SUM`)  
- Average Order Value (`AVERAGEX`)  
- Distinct Customer Count (`DISTINCTCOUNT`)  

---

### Chapter 3: Date and Time Functions
**Functions**: `TODAY`, `NOW`, `DATE`, `DATEDIFF`, `EOMONTH`, `NETWORKDAYS`, `YEAR`, `MONTH`, `WEEKNUM`, `CALENDAR`, `CALENDARAUTO`  

✅ **Use Cases**:  
- Year-to-Date Sales Comparison  
- Business Days Calculation (`NETWORKDAYS`)  
- Creating a Custom Date Table  

---

### Chapter 4: Filter Functions
**Functions**: `ALL`, `ALLEXCEPT`, `REMOVEFILTERS`, `FILTER`, `CALCULATE`, `KEEPFILTERS`, `LOOKUPVALUE`, `RANK`, `RUNNINGSUM`  

✅ **Use Cases**:  
- Ignoring filters for “Total Sales”  
- Calculating Rank of a Product  
- Conditional Filtering with `CALCULATE`  

---

### Chapter 5: Financial Functions
**Functions**: `FV`, `PV`, `RATE`, `NPER`, `PMT`, `PPMT`, `ACCRINT`, `DDB`, `SLN`, `XNPV`, `XIRR`  

✅ **Use Cases**:  
- Loan Payment Calculation (`PMT`)  
- Net Present Value (`NPV`, `XNPV`)  
- Depreciation Models (`DDB`, `SLN`)  

---

### Chapter 6: Information & Info Functions
**Functions**: `HASONEVALUE`, `ISBLANK`, `ISERROR`, `CONTAINS`, `ISEMPTY`, `USERNAME`, `USERPRINCIPALNAME`, `COLUMNSTATISTICS`  

✅ **Use Cases**:  
- Checking if a Measure Returns Blank  
- User-Based Row-Level Security  
- Model Inspection  

---

### Chapter 7: Logical Functions
**Functions**: `IF`, `IFERROR`, `SWITCH`, `AND`, `OR`, `NOT`, `COALESCE`  

✅ **Use Cases**:  
- High/Low Order Classification (`IF`)  
- Handling Division by Zero (`IFERROR`)  
- Creating Categories (`SWITCH`)  

---

### Chapter 8: Math and Trigonometry Functions
**Functions**: `ABS`, `ROUND`, `ROUNDUP`, `ROUNDDOWN`, `MOD`, `POWER`, `SQRT`, `RAND`, `RANDBETWEEN`, `DIVIDE`, `CEILING`, `FLOOR`, `LOG`, `PI`  

✅ **Use Cases**:  
- Random Sampling (`RANDBETWEEN`)  
- Discount Calculations (`ROUND`)  
- Growth Calculations (`POWER`)  

---

### Chapter 9: Parent-Child and Relationship Functions
**Functions**: `PATH`, `PATHITEM`, `PATHCONTAINS`, `RELATED`, `RELATEDTABLE`, `USERELATIONSHIP`, `CROSSFILTER`  

✅ **Use Cases**:  
- Employee Hierarchy Path (`PATH`)  
- Activating Inactive Relationships (`USERELATIONSHIP`)  
- Fetching Related Values (`RELATED`)  

---

### Chapter 10: Statistical Functions
**Functions**: `MEDIAN`, `MEDIANX`, `GEOMEAN`, `STDEV.P`, `VAR.S`, `RANKX`, `CONFIDENCE.T`, `NORM.DIST`, `LINEST`  

✅ **Use Cases**:  
- Median Salary Distribution  
- Standard Deviation of Sales Performance  
- Product Ranking by Revenue  

---

### Chapter 11: Table Manipulation Functions
**Functions**: `ADDCOLUMNS`, `SELECTCOLUMNS`, `SUMMARIZE`, `UNION`, `EXCEPT`, `INTERSECT`, `TOPN`, `GENERATESERIES`, `VALUES`, `CROSSJOIN`  

✅ **Use Cases**:  
- Creating Calculated Tables  
- Top N Customers Report (`TOPN`)  
- Joining Datasets (`UNION`, `INTERSECT`)  

---

### Chapter 12: Text Functions
**Functions**: `CONCATENATE`, `CONCATENATEX`, `FORMAT`, `LEFT`, `RIGHT`, `MID`, `SEARCH`, `REPLACE`, `TRIM`, `UPPER`, `LOWER`, `VALUE`  

✅ **Use Cases**:  
- Creating Full Names (`CONCATENATE`)  
- Formatting Dates (`FORMAT`)  
- Extracting Codes (`MID`, `RIGHT`)  

---

### Chapter 13: Time Intelligence Functions
**Functions**: `DATESYTD`, `DATESMTD`, `DATESQTD`, `SAMEPERIODLASTYEAR`, `PREVIOUSYEAR`, `DATEADD`, `TOTALYTD`, `TOTALMTD`, `CLOSINGBALANCEYEAR`, `OPENINGBALANCEMONTH`  

✅ **Use Cases**:  
- YoY Sales Growth  
- Month-to-Date Tracking  
- Seasonal Trend Analysis  

---

## 📝 Additional Notes
- **Prerequisites**: Basic knowledge of Excel or SQL is helpful.  
- **Practice Tip**: Download sample datasets from the Microsoft Power BI community.  
- **Resources**: [Official Microsoft DAX Documentation](https://learn.microsoft.com/en-us/dax/)  
- **Version Info**: Based on standard Power BI features (verify with the latest updates).  

---

🚀 Happy Learning! Practice each function in your own Power BI reports to master DAX.  
