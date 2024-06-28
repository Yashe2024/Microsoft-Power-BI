# Travel Trends Maven National Rail Insights for Rail Managers
## Created & Analyzed by Yash Sinha [Linkedin]([https://www.linkedin.com/in/yashsinha2024/](https://www.linkedin.com/in/yashsinha2024/))
## Dashboard at Maven Analytics with documentations [Dashboard Live Link](https://mavenanalytics.io/project/15570)

### Live Dashboard at Novypro [Live_link_Novypro](https://project.novypro.com/0kedOi)

#

## About Maven National Rail
![Screenshot 2024-06-08 074717](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/b59075cd-dd08-4907-bd4f-d029fd2fc606)

Maven National Rail is a prominent company dedicated to providing comprehensive business services to passenger train operators across England, Scotland, and Wales.

With a commitment to enhancing the efficiency and performance of rail transport, Maven National Rail collaborates with various operators to deliver top-notch solutions that cater to the evolving needs of the railway industry.


#



## Project Objective
For the Maven Rail Challenge, I took on the role of a Business Intelligence (BI) Developer for National Rail.

My manager tasked me with creating an exploratory dashboard with the following objectives:

 * 1. **Identify the Most Popular Routes:** Analyze booking data to determine which train routes are the most frequented by passengers.

 * 2. **Determine Peak Travel Times:** Assess travel patterns to pinpoint the busiest travel times, allowing for better resource allocation and scheduling.

 * 3. **Analyze Revenue from Different Ticket Types & Classes:** Evaluate revenue streams from various ticket categories and classes to understand financial performance and customer preferences.

 * 4. **Diagnose On-time Performance and Contributing Factors:** Investigate punctuality issues and identify factors that impact train schedules to improve overall service reliability.

Before proceeding further, I would like to provide an overview of the dataset used in this project

#


## About the Dataset
![Screenshot 2024-06-07 093208](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/6b985e8f-050f-47f3-a077-59d7baed934c)

For this dashboard, I have been provided with a dataset related to ticket bookings for Maven National Rail from December 8, 2023, to April 30, 2024. The dataset contains 31,563 rows of data, capturing essential details about each ticket purchase.

## Data Preparation and Cleaning
When I first loaded the dataset into Power BI, I used the Power Query Editor to meticulously ensure the quality and consistency of each column. Here's a summary of the key data preparation and cleaning steps I undertook:

**1. Ensuring Data Quality:** I began by checking the data quality for each column, making sure there were no discrepancies or inconsistencies in the data types and values.

**2. Standardizing Delay Reasons:** I standardized various entries in the "Reason for Delay" column for consistency:

 * Replaced "Staffing" and "Staff Shortage" with "Staff Shortage."
 * Consolidated "Weather Conditions" and "Weather" into "Weather."
 * Unified "Signal failure" and "Signal Failure" into "Signal Failure."

**3. Creating a Travel Route Column:** I introduced a new column called "Travel Route," which merges the "Departure Station" and "Arrival Station" columns. This was done using the merge function in Power Query Editor, allowing for better analysis of specific travel routes.

**4. Additional Minor Adjustments:** I made other minor changes and adjustments to the dataset to enhance its overall quality and consistency.

Through these steps, I ensured that the dataset was clean, consistent, and ready for insightful analysis and visualization in the dashboard.

## Dashboard Overview
Based on the project objectives and stakeholder requests, I have created a single-page Power BI report dashboard with dimensions of 3300 pixels in height and 2400 pixels in width.

My main goal in designing this dashboard was to keep it simple and intuitive, ensuring that stakeholders could easily understand the insights and make strategic decisions for the future based on the data presented.

*Key Features of the Dashboard: Bookmarks for Easy Navigation:

The dashboard includes five bookmarks to facilitate user navigation and enhance the user experience:

◾ About Dataset: Provides detailed information about the dataset used for the analysis.

◾ Project Objective : Summarizes the primary objectives of the project.

◾ Key Notes: Highlights important points and insights derived from the data.

◾ User Guide: Offers a guide on how to use the dashboard effectively.

◾ Filters :Allows users to apply filters and customize the data view according to their needs.

By clicking on these bookmarks, users can quickly access relevant sections and select values as per their requirements, making the dashboard interactive and user-friendly.

Lets Jump to Dashboard:
#


## Important KPI's:

![Screenshot 2024-06-08 084714](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/0f15b622-effa-4719-877f-6cb98e0a264e)

 * **Total Bookings** :Total bookings represent the total number of train ticket transactions recorded within a specified timeframe. I have also displayed the percentage of Total bookings out of the total bookings along with their MoM growth.

 * **Successful Bookings**: Successful bookings indicate tickets that resulted in *actual travel without being delayed or canceled, hence not refunded.

 * **Refund Tickets:** Refund tickets represent the *number of tickets for which refunds were applied due to delays or cancellations.

 * **Total Revenue:** Total revenue is the sum of the price of all purchased tickets. 

📝It is calculated by summing up the ticket prices, providing a measure of the total income generated from ticket sales.

 * **Net Revenue:** Net revenue indicates the revenue generated from successful bookings, excluding any amounts refunded. 

📝It is calculated by subtracting the refund amount from the total revenue.

* **Refund Amount**; Refund amount indicates the total value of ticket prices that have been refunded due to delays or cancellations. 

📝This metric is derived from summing up the refunded ticket prices.

#

### 1. Identify the most popular routes:
To identify the most popular routes, a detailed table analysis has been conducted. The insights gathered are as follows
![Screenshot 2024-06-08 085522](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/dc675bd4-8a76-4901-8e8f-6cc7a47d573f)  ![Picture1](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/75e2d9a5-2685-48f3-ae3c-e9fe087341ef)


#### Most Popular Route by Ticket Bookings:
The route from Manchester Piccadilly to Liverpool Lime Street emerges as the most popular, with a total of 4,628 ticket bookings.

This accounts for 14.6% of the total bookings. Within this route, 4,537 tickets were successfully used for travel, representing 14.3% of the total successful tickets.

#### Most Popular Route by Revenue:
In terms of revenue, the route from London Kings Cross to York is the highest earner, generating £183k.

This route alone covers 24.7% of the total revenue. The net revenue for this route is £179k, which accounts for 24.2% of the total net revenue, making it the most financially significant route.

#### Route with the Highest Ticket Refunds:
The route from Liverpool Lime Street to London Euston has the highest number of ticket refunds, with a total of 171 refunded tickets.

Despite the high refunds, this route still generated significant revenue, amounting to £113k,which is 15.3% of the total revenue. However, the high refund rate indicates potential issues affecting customer satisfaction or service reliability on this route.

#

## 2. Analyze revenue from different ticket types & classes:
I've not only displayed revenue by ticket types and classes but also provided six distinct parameters such as

 * Total Bookings,
 * Successful Bookings,
 * Refunded Tickets,
 * Total Revenue,
 * Net Revenue, and
 * Refund Amount.

Users can view these metrics based on selected values such as purchase type, ticket class, payment method, ticket type, and rail card.undefined

For instance, when 'revenue' is selected,
![Screenshot 2024-06-08 092843](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/f086d240-7942-4487-9f54-c7c1d3b3bcd4)

users can observe revenue by purchase type. It shows that online revenue amounts to $383k, which is 51.6% of the total, while revenue from stations accounts for $359k, or 48.4% of the total.

Similarly, revenue by ticket class displays that standard class generates $593k, constituting 79.9% of the total revenue, whereas first class contributes $149k, representing 20.1%.

Furthermore, revenue by payment method reveals that the highest revenue is generated from credit card bookings, totaling $470k, or 63.3% of the total revenue. Users can also analyze revenue based on contactless and debit card transactions.

Revenue by ticket type indicates that 41.7% of the total revenue comes from advance ticket bookings, while off-peak bookings contribute 30.1%, and any-time bookings contribute 28.2%.

Users can explore these insights from various perspectives based on the selected parameters and values.

#

## 3. Determine peak travel times:
Before analyzing, I extracted the hour from the departure time, ranging from 0 to 23.

Then, I formatted it to fit between 12 am and 12 pm using DAX.

I represented this data in a clustered column chart, distributing it based on the total bookings.

![Screenshot 2024-06-08 101116](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/2c00d55b-2812-4ea0-81ee-f31131d94ce7)


Analysis reveals that the peak travel time was at 6 am, with 3112 bookings, accounting for 9.8% of the total and 6 pm with 3113 booking.

Overall, the peak time spans from 6 am to 8 am, with a total of 8086 bookings, constituting 25.5% of the total. During this period, there were 7942 successful bookings and 144 refunds. Additionally, 37.7% of the total revenue, amounting to $280k, was generated.

In the evening, the peak time is from 4 pm to 6 pm, with a total of 8302 bookings, representing 26.2% of the total. Within this timeframe, there were 7975 successful bookings and 327 refunded tickets.

**Conclusion**: This indicates that most people book tickets to travel to their offices or workplaces in the morning and return home in the evening.

Users can gain detailed insights for each time period by hovering over any bar.

as example:
![Screenshot 2024-06-08 101414](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/7bc50668-baa3-4f7f-8ac9-ccdacfd68c5e)


## 4. Diagnose on-time performance and contributing factors
Before delving into further analysis, it's crucial to examine the journey status.

![Screenshot 2024-06-08 105508](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/72340ef4-58ec-4537-b7f3-5e2530f23235)

Analysis reveals that 86.82% of total booking , or 27,481 journeys, were on-time, while 7.24% (2,292 journeys booking) were delayed, and 5.94% (1,880 bookings) were canceled.
#

Next, it's important to understand the overall reasons behind delays.
![Screenshot 2024-06-08 105930](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/f05bfc2d-bd5b-4f7e-9459-f9502fd58da2)

Out of the total 31,653 journey booking , 27,481 on-time journeys, 4.33% (1,372 journeys) were delayed due to weather conditions, 3.06% (970 journeys) due to signal failures, 2.56% (809 journeys) due to staff shortages, 2.23% (707 journeys) due to technical issues, and 0.99% (314 journeys) due to traffic.

#

To further investigate delayed or canceled journeys, I utilized a decomposition tree visual.
![Screenshot 2024-06-08 110213](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/1ba51d0c-2de5-4583-934f-c6fd9b2a7d14)

Analysis indicates that out of the 2292 delayed bookings, weather conditions caused 927 delays, technical issues led to 472 delays, and signal failures resulted in 451 delays. Staff shortages caused 355 delays, and traffic caused 87 delays.

#
![Screenshot 2024-06-08 110231](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/6588293d-d0f5-4fb8-b697-a0f1e2fdc49b)

On the other hand, out of the 1880 canceled bookings, signal failures were responsible for 519 cancellations, staff shortages led to 454 cancellations, weather conditions caused 445 cancellations, technical issues resulted in 235 cancellations, and traffic led to 227 cancellations.


✨This implies that overall, weather conditions are the primary cause of delays, while signal failures and staff shortages are the main reasons for train cancellations.

#

Additionally,
![Screenshot 2024-06-08 110851](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/c515cf05-6154-4abf-ac21-9304e01f2b83)

I've provided insights into total bookings by departure station, revealing that the highest number of bookings occurred at Manchester Piccadilly departure station, with 5650 bookings.

For further detailed insights, users can hover over any departure station name bar with their cursor to gain additional information, as demonstrated below.
![Screenshot 2024-06-08 111217](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/90e52e1d-a97a-4286-a173-c81cc66e000a)

#
Also Additionally,

![Screenshot 2024-06-08 111710](https://github.com/user-saddam123/Travel-Trends-Maven-National-Rail-Insights-for-Rail-Managers/assets/123800896/17a7b3ef-6cfb-4788-8019-896dc28ba30e)


I've presented the total bookings by arrival station, revealing that York stands out as the most frequented arrival station, with 4019 bookings.

For further detailed insights, users can hover over any departure station name on the bar chart and gain additional insights.

--------------------------------------------------------------------------------------------------------
## Conclusions:

Based on the insights derived from the Maven Rail Challenge project, several key conclusions can be drawn:

* **Route Popularity:** The analysis revealed that the route from Manchester Piccadilly to Liverpool Lime Street is the most popular in terms of ticket bookings.

This indicates a high demand for travel between these destinations, suggesting potential opportunities for expanding services or offering additional amenities to cater to passenger needs.

* **Revenue Generation:** While the Manchester Piccadilly to Liverpool Lime Street route may be the most popular in terms of ticket bookings, the route from London Kings Cross to York emerges as the highest revenue earner.

This highlights the importance of considering not only passenger volume but also revenue generation potential when planning routes and allocating resources.

* **Service Reliability:** The analysis of on-time performance and contributing factors revealed that weather conditions are the primary cause of delays, while signal failures and staff shortages are the main reasons for train cancellations.

Addressing these factors is crucial for improving overall service reliability and enhancing customer satisfaction.

* **Peak Travel Times:** Peak travel times occur in the morning and evening, coinciding with typical commuting hours. This indicates that most passengers book tickets to travel to their workplaces or offices in the morning and return home in the evening.

Understanding these patterns allows for better resource allocation and scheduling to accommodate peak demand periods.

#

**This project is the result of over 10+ days of hard work, and I invite you to 👍 like, share, and connect with me on [LinkedIn](https://www.linkedin.com/in/yashsinha2024/).**

I hope scrolling through this project provides you with insightful understanding.

Thank you for taking the time to view my project.

#


## How you can help me:

I've successfully completed over 55 Power BI projects, all showcased in my [Novypro portfolio](https://www.novypro.com/profile_projects/saddamansari). You're all invited to visit my portfolio and explore these amazing projects!

**Additionally, I'm currently seeking internship or entry-level opportunities. If you have any opportunities available or need a freelance Power BI project completed, please connect with me on LinkedIn.**

Looking forward to connecting with you all!

#

### Created and Presented by-

Yash Sinha [LinkedIn](https://www.linkedin.com/in/yashsinha2024/)

Location: India

THE END

