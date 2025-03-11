# Comparison Analysis of OTT Platforms

### Quick Links
  * [Live Dashboard](https://app.powerbi.com/view?r=eyJrIjoiZDU3ZmYwNWYtOWYxMS00MDNhLWEyZTctYWRjMzUxMDMwODRjIiwidCI6ImM2ZTU0OWIzLTVmNDUtNDAzMi1hYWU5LWQ0MjQ0ZGM1YjJjNCJ9)
  * [LinkedIn Post](https://www.linkedin.com/posts/badernader_business-insight-360-activity-7264969422296031232-T1a7?utm_source=share&utm_medium=member_desktop)
  * [Presentation Video](https://youtu.be/4qEMS7RKdic)
  * Project Files
    * [PBIX]()
    * [PPT]()
    * [PDF]()

### Table of Contents
* [Project Overview](#project-overview)
    * [Business Problem](#business-problem)
    * [Approach & Methodology](#approach-and-methodology)
    * [Key Insights & Outcomes](#key-insights-and-outcomes)
    * [Questions for Business Analysis](#questions-for-business-analysis)
    * [Business Related Terms](#business-related-terms)
    * [Key Learnings](#key-learnings)
* [Understanding the Datasets](#understanding-the-datasets)
* [Data Modelling](#data-modelling)
* [Dashboards](#dashboards)

## Project Overview



### Business Problem 

#### Merger Analysis: Lio & Jotstar  

Lio, a leading telecommunications provider in India, is planning a strategic merger with Jotstar, one of the country’s most prominent streaming platforms. This potential partnership aims to combine LioCinema’s expansive subscriber base and Jotstar’s diverse content library to revolutionize digital streaming in India.  

As part of the merger preparation, the management team at Lio wants to analyze the performance and user behavior of both platforms—LioCinema and Jotstar—over the past year (January to November 2024). The goal is to gain insights into individual platform performance, content consumption patterns, subscriber growth, inactivity behavior, and upgrade and downgrade trends. The insights derived from this study will help the management make informed decisions and optimize content strategies post-merger, with the ultimate goal of establishing Lio-Jotstar as the leading OTT platform in India.  

Peter Pandey is the data analyst at Lio, and he is tasked with analyzing the data and providing insights.  

#### Key Areas of Analysis  
The management expects detailed insights into the following:  

1. **Content Library Analysis** – A detailed comparison of content types across both platforms.  
2. **Subscriber Insights** – Analyze trends in subscriber acquisition and demographic variations.  
3. **Inactivity Analysis** – Patterns of inactivity across age groups, city tiers, and subscription plans.  
4. **Upgrade Patterns** – Insights into subscription upgrades and their influencing factors.  
5. **Downgrade Patterns** – Analysis of subscription downgrades and associated trends.  
6. **Content Consumption Behavior** – Patterns in total watch time, device preferences, and variations by user demographics.  

#### Task  
Imagine yourself as Peter Pandey and perform the following tasks:  

1. **Review the Metadata and Dataset** – Analyze the datasets thoroughly as this is the fundamental step.  
2. **Refer to the ‘primary_and_secondary_questions.pdf’** – Use any tool of your choice (Python, SQL, Power BI, Tableau, Excel) to analyze and answer these questions. More instructions are provided in this document.  
3. **Design a Comparison Dashboard** – The dashboard should include relevant metrics and analysis, and it should be self-explanatory and easy to understand.  
4. **Prepare a Stakeholder Presentation** – Create a compelling presentation with actionable insights to present to key stakeholders.  
5. **Extend the Analysis** – Add more research questions and answer them in your presentation to strengthen your recommendations.  
6. **Enhance Your Presentation** – A creative approach, including an audio/video presentation, will have more weightage.  

#### Resources Provided  
- **Dataset** required for the preliminary analysis.  
- **Metadata** describing the dataset structure.  
- **Supporting Documents** for further reference.  

### Approach and Methodology



### Key Insights and Outcomes



### Questions for Business Analysis

#### Primary Questions

1. **Total Users & Growth Trends**
   ● What is the total number of users for LioCinema and Jotstar, and how do they compare in terms of growth trends (January–November 2024)?
2. **Content Library Comparison**
   ● What is the total number of contents available on LioCinema vs. Jotstar? How do they differ in terms of language and content type?
3. **User Demographics**
   ● What is the distribution of users by age group, city tier, and subscription plan for each platform?
4. **Active vs. Inactive Users**
   ● What percentage of LioCinema and Jotstar users are active vs. inactive? How do these rates vary by age group and subscription plan?
5. **Watch Time Analysis**
   ● What is the average watch time for LioCinema vs. Jotstar during the analysis period? How do these compare by city tier and device type?
6. **Inactivity Correlation**
   ● How do inactivity patterns correlate with total watch time or average watch time? Are less engaged users more likely to become inactive?
7. **Downgrade Trends**
   ● How do downgrade trends differ between LioCinema and Jotstar? Are downgrades more prevalent on one platform compared to the other?
8. **Upgrade Patterns**
   ● What are the most common upgrade transitions (e.g., Free to Basic, Free to VIP, Free to Premium) for LioCinema and Jotstar? How do these differ across platforms?
9. **Paid Users Distribution**
   ● How does the paid user percentage (e.g., Basic, Premium for LioCinema; VIP, Premium for Jotstar) vary across different platforms? Analyse the proportion of premium users in Tier 1, Tier 2, and Tier 3 cities and identify any notable trends or differences.
10. **Revenue Analysis**
    ● Assume the following monthly subscription prices, calculate the total revenue generated by both platforms (LioCinema and Jotstar) for the analysis period (January to November 2024)

<br>
<img src="" class="center">

      The calculation should consider:
       ❖ Subscribers count under each plan.
       ❖ Active duration of subscribers on their respective plans.
       ❖ Upgrades and downgrades during the period, ensuring revenue reflects the time spent under each plan.

#### Further Analysis & Recommendations

1. What strategies can the merged platform implement to increase engagement among inactive users and convert them into active users?
2. What type of brand campaigns should the merged platform launch to establish itself as the go-to OTT platform in India?
3. How should the merged platform price its subscription plans to compete effectively while maintaining profitability?
4. How can the platform leverage partnerships with telecom companies to expand its subscriber base?
5. What role can AI and machine learning play in personalizing the user experience and improving content discovery?
6. Who should be the brand ambassador for the newly merged OTT platform (LioCinema-Jotstar) to effectively represent its identity and attract a diverse audience?
    
### Business Related Terms

1. **Total Content Count:** This is the number of different pieces of content we have in our library. We're counting each unique item, so even if something appears multiple times, it only counts once.
2. **Total Run Time (Hrs):** This is the total amount of time all of our content takes to run, measured in hours. We've added up the runtime of every piece of content to get this number.
3. **Average Run Time (Hrs):** This is the average amount of time each piece of content takes to run, measured in hours. We calculated this by adding up the runtime of all content and then dividing by the number of pieces of content.
4. **Total Users:** This is the total number of unique users. We count each user only once, even if they've logged in multiple times or have done multiple actions.
5. **Paid Users:** These are the users who have a Premium or VIP subscription. We know they're paid users because their 'Subscription Plan' or 'New Subscription Plan' columns show 'Premium' or 'VIP'.
6. **Paid Users %:** This shows the percentage of all Jotstar users who have a paid subscription (Premium or VIP). It's calculated by dividing the number of paid users by the total number of users and then multiplying by 100.
7. **Free Users:** These are the users who are currently using the free version of Jotstar. We can identify them by looking at the 'Subscription Plan' and 'New Subscription Plan' columns, where it will say 'Free'.
8. **Free Users (%):** This shows the percentage of all Jotstar users who are using the free version. It's calculated by dividing the number of free users by the total number of users and then multiplying by 100.
9. **Active Users:** These are the users who are currently active on Jotstar. We know they're active when we don't see a 'Last Active Date' listed for them. If that date is empty, it means they're still actively using the platform.
10. **Inactive Users:** These are users who haven't been active recently. We can tell because their 'Last Active Date' shows when they last used Jotstar. If there is a date in that column, they are considered inactive. 
11. **Inactive Rate (%):** This shows the percentage of all Jotstar users who are currently inactive. It's calculated by dividing the number of inactive users by the total number of users and then turning that into a percentage.
12. **Active Rate (%):** This shows the percentage of all Jotstar users who are currently active. It's calculated by dividing the number of active users by the total number of users and then turning that into a percentage. 
13. **Non-Upgraded Rate (%):** This is the percentage of users who haven't changed their plan. We look for users where we don't have any information on a plan change.
14. **Upgrade Rate (%):** This is the percentage of users who have moved to a more expensive plan. For example, people who went from a free plan to a Premium or VIP plan, or from a Premium plan to a VIP plan.
15. **Downgrade Rate (%):** This is the percentage of users who have moved to a cheaper plan. For example, people who went from a basic or premium plan to a free plan, or from a premium plan to a basic plan.
16. **Total Watch Time (Hrs):** This is the total amount of time all users have spent watching our content, measured in hours. We've added up the watch time of every single viewing to get this number.
17. **Average Watch Time (Hrs):** This is the average amount of time each viewing of our content lasts, measured in hours. We calculated this by adding up all the watch time and then dividing by the total number of views.
18. **Upgrade / Downgrade Rate (%):** This shows the overall balance. Are more people moving to better (upgrading) or less expensive (downgrading) plans? It's the difference between those two groups, shown as a percentage of all our users.

### Key Learnings



## Understanding the Datasets

### Metadata Descriptions for `LioCinema_db` and `Jotstar_db`

#### LioCinema Database

This database contains detailed data on content, subscribers, and content consumption for the LioCinema platform, enabling insights into content, user behavior, and platform performance trends.

###### 1. `contents`
**Purpose:** This table provides detailed information about the content available on the LioCinema platform, enabling analysis of content diversity, genre popularity, and runtime patterns.

- `content_id`: Unique identifier for each content item on the platform (e.g., `CLCMHIROM1bdbc`, `CLCMHIDRAfce3f`).
- `content_type`: Type of content (e.g., `Movie`, `Series`).
- `language`: Language in which the content is available (e.g., `Hindi`, `English`).
- `genre`: Genre of the content (e.g., `Romance`, `Action`, `Drama`).
- `run_time`: Duration of the content in minutes (e.g., `120`, `150`).

###### 2. `subscribers`
**Purpose:** This table captures demographic and subscription details for LioCinema users, enabling insights into subscriber acquisition, upgrades, downgrades, and inactivity patterns.

- `user_id`: Unique identifier for each subscriber (e.g., `UIDLC1d62ccb715a`, `UIDLC0d6f2dad4bb`).
- `age_group`: Age group of the subscriber (e.g., `18-24`, `25-34`).
- `city_tier`: City category of the subscriber (e.g., `Tier 1`, `Tier 2`, `Tier 3`).
- `subscription_date`: The date when the user subscribed to LioCinema (formatted as `YYYY-MM-DD`).
- `subscription_plan`: The initial subscription plan chosen by the user at the time of subscribing (e.g., `Free`, `Basic`, `Premium`).
- `last_active_date`: The most recent date the user interacted with the platform. For inactive users, this column captures the last recorded date of activity, and for active users, it is `NULL` (formatted as `YYYY-MM-DD`).
- `plan_change_date`: Date when the user’s subscription plan was last updated (formatted as `YYYY-MM-DD`).
- `new_subscription_plan`: The updated subscription plan, if applicable, reflecting any upgrades or downgrades (e.g., upgrade to `Basic/Premium`, downgrade to `Free/Basic`).

###### 3. `content_consumption`
**Purpose:** This table captures user-level content consumption data, enabling analysis of total watch time, device preferences, and engagement trends.

- `user_id`: Unique identifier for each subscriber (e.g., `UIDLC1d62ccb715a`).
- `device_type`: Type of device used to consume content (e.g., `Mobile`, `TV`, `Tablet`).
- `total_watch_time (mins)`: Total time spent watching content in minutes (e.g., `2721`, `3286`).

---

#### Jotstar Database

This database contains detailed data on content, subscribers, and content consumption for the Jotstar platform, enabling insights into content, user behavior, and platform performance trends.

###### 1. `contents`
**Purpose:** This table provides detailed information about the content available on the Jotstar platform, enabling analysis of content diversity, genre popularity, and runtime patterns.

- `content_id`: Unique identifier for each content item on the platform (e.g., `CJSMHITHR850d1`, `CJSMHIACTf59cd`).
- `content_type`: Type of content (e.g., `Movie`, `Series`).
- `language`: Language in which the content is available (e.g., `Hindi`, `English`).
- `genre`: Genre of the content (e.g., `Romance`, `Action`, `Drama`).
- `run_time`: Duration of the content in minutes (e.g., `120`, `150`).

###### 2. `subscribers`
**Purpose:** This table captures demographic and subscription details for Jotstar users, enabling insights into subscriber acquisition, upgrades, downgrades, and inactivity patterns.

- `user_id`: Unique identifier for each subscriber (e.g., `UIDJS7215b8ce306`, `UIDJSa5e350fa952`).
- `age_group`: Age group of the subscriber (e.g., `18-24`, `25-34`).
- `city_tier`: City category of the subscriber (e.g., `Tier 1`, `Tier 2`, `Tier 3`).
- `subscription_date`: The date when the user subscribed to Jotstar (formatted as `YYYY-MM-DD`).
- `subscription_plan`: The initial subscription plan chosen by the user at the time of subscribing (e.g., `Free`, `VIP`, `Premium`).
- `last_active_date`: The most recent date the user interacted with the platform. For inactive users, this column captures the last recorded date of activity, and for active users, it is `NULL` (formatted as `YYYY-MM-DD`).
- `plan_change_date`: Date when the user’s subscription plan was last updated (formatted as `YYYY-MM-DD`).
- `new_subscription_plan`: The updated subscription plan, if applicable, reflecting any upgrades or downgrades (e.g., upgrade to `VIP/Premium`, downgrade to `Free/VIP`).

###### 3. `content_consumption`
**Purpose:** This table captures user-level content consumption data, enabling analysis of total watch time, device preferences, and engagement trends.

- `user_id`: Unique identifier for each subscriber (e.g., `UIDJS6dc2a37454b`).
- `device_type`: Type of device used to consume content (e.g., `Mobile`, `TV`, `Tablet`).
- `total_watch_time (mins)`: Total time spent watching content in minutes (e.g., `13598`, `2105`).


## Data Modelling

<img src="" class="center">

## Dashboards

There are five dashboards providing insights into various aspects of the two platforms.

1. **Content Library Analysis:** This dashboard explores the content available on the platform. It includes total content count, run time, and a breakdown of content by type, genre, and language. Key visuals include bar charts for content distribution across genres and languages, and a matrix comparing content type against total content count.
2. **Subscriber Insights:** This dashboard provides an overview of user demographics and subscription trends. It displays total, paid, and free user counts, along with their percentages. The visuals include a breakdown of user growth by age group, city tier, and device type, a stacked bar chart of subscription plan trends over time, and an age-group distribution comparison across subscription types.
3. **Inactivity Analysis:** This dashboard tracks user engagement by highlighting inactive users. It presents metrics on total users, active and inactive users, and their percentages. Visuals include a table showing inactive users by month and age group, a bar chart comparing active vs. inactive users by city tier, and a stacked bar chart of monthly activity trends.
4. **Upgrade and Downgrade Patterns:** This dashboard analyzes user subscription changes, showcasing upgrade and downgrade percentages. Key visuals include a Sankey chart illustrating user flow between plans, a bar chart for upgrade/downgrade timing, and a breakdown of subscription changes by age group and city tier.
5. **Content Consumption Behavior:** This dashboard provides insights into user watch time and device usage. It features total and average watch time, a stacked bar chart of watch time by subscription plan over quarters, a treemap of device types used for content consumption, and a bar chart showing average watch time by age group and device type.

### Home Page

<br>
<img src="" class="center">

### Jotstar DB

#### Subscriber Insights

<br>
<img src="" class="center">

#### Upgrade and Downgrade Patterns

<br>
<img src="" class="center">

#### Inactivity Analysis

<br>
<img src="" class="center">


#### Content Library Analysis

<br>
<img src="" class="center">

#### Consumption Behavior

<br>
<img src="" class="center">

### Liocinema DB

#### Subscriber Insights

<br>
<img src="" class="center">

#### Upgrade and Downgrade Patterns

<br>
<img src="" class="center">

#### Inactivity Analysis

<br>
<img src="" class="center">

#### Content Library Analysis

<br>
<img src="" class="center">

#### Consumption Behavior

<br>
<img src="" class="center">
