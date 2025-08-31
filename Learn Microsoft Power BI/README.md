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

| Function | Description | Syntax Example |
|----------|-------------|----------------|
| **ALL** | Returns all rows in a table/column, ignoring filters | `CALCULATE(SUM(Sales[Amount]), ALL(Sales))` |
| **ALLCROSSFILTERED** | Clears filters from related tables | `CALCULATE(SUM(Sales[Amount]), ALLCROSSFILTERED(Product))` |
| **ALLEXCEPT** | Clears all filters except specified | `CALCULATE(SUM(Sales[Amount]), ALLEXCEPT(Sales, Sales[Region]))` |
| **ALLNOBLANKROW** | Returns all rows except blank row | `CALCULATE(COUNTROWS(Customer), ALLNOBLANKROW(Customer))` |
| **ALLSELECTED** | Clears filters only from current selection | `CALCULATE(SUM(Sales[Amount]), ALLSELECTED(Sales))` |
| **CALCULATE** | Evaluates expression with modified filter context | `CALCULATE(SUM(Sales[Amount]), Sales[Region]="West")` |
| **CALCULATETABLE** | Returns a table with modified filter context | `CALCULATETABLE(FILTER(Sales, Sales[Amount]>1000), Sales[Region]="West")` |
| **EARLIER** | Gets column value from earlier row context | `FILTER(Sales, Sales[Amount] > EARLIER(Sales[Amount]))` |
| **EARLIEST** | Similar to EARLIER, earliest outer evaluation | *(used inside nested row contexts)* |
| **FILTER** | Returns a filtered table | `FILTER(Sales, Sales[Amount]>1000)` |
| **FIRST** | Visual calc: first row value on axis | `FIRST(SUM(Sales[Amount]))` |
| **INDEX** | Returns row at absolute position | `INDEX(3, Sales, ORDERBY(Sales[Amount], ASC))` |
| **KEEPFILTERS** | Keeps filters instead of overriding | `CALCULATE(SUM(Sales[Amount]), KEEPFILTERS(Sales[Amount]>1000))` |
| **LAST** | Visual calc: last row value on axis | `LAST(SUM(Sales[Amount]))` |
| **LOOKUP** | Visual calc: lookup value with filters | *(matrix context)* |
| **LOOKUPWITHTOTALS** | Lookup with explicit filters only | *(similar to LOOKUP)* |
| **LOOKUPVALUE** | Returns value matching condition(s) | `LOOKUPVALUE(Product[Price], Product[ProductID], 101)` |
| **MATCHBY** | Defines match columns in window functions | `MATCHBY(Sales[Region])` |
| **MOVINGAVERAGE** | Returns moving average over axis | `MOVINGAVERAGE(SUM(Sales[Amount]), -3, 0)` |
| **NEXT** | Visual calc: value from next row | `NEXT(SUM(Sales[Amount]))` |
| **OFFSET** | Returns row offset by N | `OFFSET(-1, Sales, ORDERBY(Sales[Date], ASC))` |
| **ORDERBY** | Defines order in window functions | `ORDERBY(Sales[Date], ASC)` |
| **PARTITIONBY** | Defines partition columns in window functions | `PARTITIONBY(Sales[Region])` |
| **PREVIOUS** | Visual calc: value from previous row | `PREVIOUS(SUM(Sales[Amount]))` |
| **RANGE** | Returns interval of rows | `RANGE(-2, 0, ORDERBY(Sales[Date], ASC))` |
| **RANK** | Ranking within partition | `RANK(SUM(Sales[Amount]), ORDERBY(Sales[Amount], DESC))` |
| **REMOVEFILTERS** | Clears filters from table/column | `CALCULATE(SUM(Sales[Amount]), REMOVEFILTERS(Sales))` |
| **ROWNUMBER** | Unique row number within partition | `ROWNUMBER(ORDERBY(Sales[Amount], DESC))` |
| **RUNNINGSUM** | Running total along axis | `RUNNINGSUM(SUM(Sales[Amount]))` |
| **SELECTEDVALUE** | Returns value if one value is selected | `SELECTEDVALUE(Sales[Region], "Multiple")` |
| **WINDOW** | Returns multiple rows in interval | `WINDOW(-2, 0, ORDERBY(Sales[Date], ASC))` |

---

| Function       | Description                                   | Syntax Example                                                                             |
| -------------- | --------------------------------------------- | ------------------------------------------------------------------------------------------ |
| **ACCRINT**    | Accrued interest for periodic-paying security | `ACCRINT(issue, first_int, settlement, rate, par, freq)`                                   |
| **ACCRINTM**   | Accrued interest for maturity-paying security | `ACCRINTM(issue, settlement, rate, par)`                                                   |
| **AMORDEGRC**  | Depreciation with coefficient                 | `AMORDEGRC(cost, date_purch, first_per, salvage, period, rate)`                            |
| **AMORLINC**   | Linear depreciation                           | `AMORLINC(cost, date_purch, first_per, salvage, period, rate)`                             |
| **COUPDAYBS**  | Days from coupon start → settlement           | `COUPDAYBS(settlement, maturity, freq)`                                                    |
| **COUPDAYS**   | Total days in coupon period                   | `COUPDAYS(settlement, maturity, freq)`                                                     |
| **COUPDAYSNC** | Days from settlement → next coupon            | `COUPDAYSNC(settlement, maturity, freq)`                                                   |
| **COUPNCD**    | Next coupon date after settlement             | `COUPNCD(settlement, maturity, freq)`                                                      |
| **COUPNUM**    | Number of coupons until maturity              | `COUPNUM(settlement, maturity, freq)`                                                      |
| **COUPPCD**    | Previous coupon date before settlement        | `COUPPCD(settlement, maturity, freq)`                                                      |
| **CUMIPMT**    | Cumulative interest in period                 | `CUMIPMT(rate, nper, pv, start, end, type)`                                                |
| **CUMPRINC**   | Cumulative principal in period                | `CUMPRINC(rate, nper, pv, start, end, type)`                                               |
| **DB**         | Declining balance depreciation                | `DB(cost, salvage, life, period)`                                                          |
| **DDB**        | Double-declining depreciation                 | `DDB(cost, salvage, life, period, factor)`                                                 |
| **DISC**       | Discount rate for security                    | `DISC(settlement, maturity, pr, redemption, basis)`                                        |
| **DOLLARDE**   | Convert fractional price → decimal            | `DOLLARDE(1.02, 16)`                                                                       |
| **DOLLARFR**   | Convert decimal → fractional price            | `DOLLARFR(1.125, 16)`                                                                      |
| **DURATION**   | Macauley duration                             | `DURATION(settlement, maturity, coupon, yld, freq, basis)`                                 |
| **EFFECT**     | Effective annual interest rate                | `EFFECT(nominal_rate, npery)`                                                              |
| **FV**         | Future value of investment                    | `FV(rate, nper, pmt, [pv], [type])`                                                        |
| **INTRATE**    | Interest rate for fully invested security     | `INTRATE(settlement, maturity, investment, redemption, basis)`                             |
| **IPMT**       | Interest payment for a period                 | `IPMT(rate, per, nper, pv)`                                                                |
| **ISPMT**      | Interest in specific period                   | `ISPMT(rate, per, nper, pv)`                                                               |
| **MDURATION**  | Modified Macauley duration                    | `MDURATION(settlement, maturity, coupon, yld, freq, basis)`                                |
| **NOMINAL**    | Nominal rate given effective                  | `NOMINAL(effect_rate, npery)`                                                              |
| **NPER**       | Number of periods for investment              | `NPER(rate, pmt, pv, [fv], [type])`                                                        |
| **ODDFPRICE**  | Price of bond w/ odd first period             | `ODDFPRICE(settlement, maturity, issue, first_coupon, rate, yld, redemption, freq, basis)` |
| **ODDFYIELD**  | Yield of bond w/ odd first period             | `ODDFYIELD(settlement, maturity, issue, first_coupon, rate, pr, redemption, freq, basis)`  |
| **ODDLPRICE**  | Price of bond w/ odd last period              | `ODDLPRICE(settlement, maturity, last_interest, rate, yld, redemption, freq, basis)`       |
| **ODDLYIELD**  | Yield of bond w/ odd last period              | `ODDLYIELD(settlement, maturity, last_interest, rate, pr, redemption, freq, basis)`        |
| **PDURATION**  | Periods to reach target FV                    | `PDURATION(rate, pv, fv)`                                                                  |
| **PMT**        | Loan payment (constant payments)              | `PMT(rate, nper, pv)`                                                                      |
| **PPMT**       | Principal part of payment                     | `PPMT(rate, per, nper, pv)`                                                                |
| **PRICE**      | Price of bond (periodic interest)             | `PRICE(settlement, maturity, rate, yld, redemption, freq, basis)`                          |
| **PRICEDISC**  | Price of discount security                    | `PRICEDISC(settlement, maturity, discount, redemption, basis)`                             |
| **PRICEMAT**   | Price of bond paying at maturity              | `PRICEMAT(settlement, maturity, issue, rate, yld, basis)`                                  |
| **PV**         | Present value of investment                   | `PV(rate, nper, pmt, [fv], [type])`                                                        |
| **RATE**       | Interest rate per period                      | `RATE(nper, pmt, pv, [fv], [type])`                                                        |
| **RECEIVED**   | Amount received at maturity                   | `RECEIVED(settlement, maturity, investment, discount, basis)`                              |
| **RRI**        | Equivalent growth rate                        | `RRI(nper, pv, fv)`                                                                        |
| **SLN**        | Straight-line depreciation                    | `SLN(cost, salvage, life)`                                                                 |
| **SYD**        | Sum-of-years digits depreciation              | `SYD(cost, salvage, life, per)`                                                            |
| **TBILLEQ**    | Bond-equivalent yield for T-Bill              | `TBILLEQ(settlement, maturity, discount)`                                                  |
| **TBILLPRICE** | Price per \$100 T-Bill                        | `TBILLPRICE(settlement, maturity, discount)`                                               |
| **TBILLYIELD** | Yield for T-Bill                              | `TBILLYIELD(settlement, maturity, pr)`                                                     |
| **VDB**        | Variable declining balance depreciation       | `VDB(cost, salvage, life, start, end, [factor], [no_switch])`                              |
| **XIRR**       | IRR for irregular cashflows                   | `XIRR(values, dates, [guess])`                                                             |
| **XNPV**       | NPV for irregular cashflows                   | `XNPV(rate, values, dates)`                                                                |
| **YIELD**      | Yield of periodic-paying bond                 | `YIELD(settlement, maturity, rate, pr, redemption, freq, basis)`                           |
| **YIELDDISC**  | Yield of discount security                    | `YIELDDISC(settlement, maturity, pr, redemption, basis)`                                   |
| **YIELDMAT**   | Yield of bond paying at maturity              | `YIELDMAT(settlement, maturity, issue, rate, pr, redemption, basis)`                       |

---

## 🔹 Info Functions
*(full DMV-style function table expanded — e.g., `INFO.VIEW.TABLES()`, `INFO.MEASURES()`, etc.)*  

---

## 🔹 Information Functions
*(full list expanded — e.g., `CONTAINS`, `CONTAINSSTRING`, `ISNUMBER`, `HASONEFILTER`, `USERNAME()`, etc.)*  

---

## 🔹 Logical Functions
*(expanded — `IF`, `IFERROR`, `AND`, `OR`, `NOT`, `SWITCH`, `COALESCE`, etc. with examples)*  

---

## 🔹 Math & Trig Functions
*(expanded — `ABS`, `ROUND`, `EXP`, `POWER`, `SQRT`, `LOG`, `RAND`, `TRUNC`, etc.)*  

---

## 🔹 Other Functions
*(expanded — `BLANK()`, `ERROR()`, `TOCSV()`, `TOJSON()`)*  

---

## 🔹 Parent & Child Functions
*(expanded — `PATH`, `PATHITEM`, `PATHCONTAINS`, `PATHLENGTH`)*  

---

## 🔹 Relationship Functions
*(expanded — `RELATED`, `RELATEDTABLE`, `USERELATIONSHIP`, `CROSSFILTER`)*  

---

## 🔹 Statistical Functions
*(expanded — `MEDIAN`, `PERCENTILEX.INC`, `STDEV.S`, `VAR.P`, `RANKX`, `GEOMEAN`, etc.)*  

---

## 🔹 Table Manipulation Functions
*(expanded — `ADDCOLUMNS`, `GENERATE`, `SUMMARIZE`, `VALUES`, `CROSSJOIN`, `UNION`, `TOPN`, etc.)*  

---

## 🔹 Text Functions
*(expanded — `CONCATENATE`, `LEFT`, `RIGHT`, `SEARCH`, `TRIM`, `UPPER`, `VALUE`, `FORMAT`, etc.)*  

---

## 🔹 Time Intelligence Functions
*(expanded — `TOTALYTD`, `SAMEPERIODLASTYEAR`, `DATESMTD`, `CLOSINGBALANCEYEAR`, `PREVIOUSMONTH`, etc.)*  

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
