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



### Business Related Terms

1. **Total content count:**
2. **Total Run Time:**
3. **Average Run Time:**
4. **Total users:**
5. **Paid users:**
6. **Paid users %:**
7. **Active users:**
8. **Inactive users:** 
9. **Inactive Rate (%):**
10. **Active Rate (%):**
11. **Non-Upgraded users:**
12. **Non-Upgraded Rate (%):**
13. **Upgraded users:**
14. **Upgrade Rate (%):**
15. **Downgraded users:**
16. **Downgrade Rate (%):**
17. **Total watch time (Hrs):**
18. **Average watch time (Hrs):**
19. **Upgrade / Downgrade Rate (%):**

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

1. **Content Library Analysis:** A comparative analysis of content types across both platforms, highlighting diversity, genre distribution, and runtime variations.
2. **Subscriber Insights:** An exploration of subscriber trends, including acquisition patterns and demographic differences.
3. **Inactivity Analysis:** An assessment of inactivity trends based on age groups, city tiers, and subscription plans, identifying potential retention challenges.
4. **Upgrade and Downgrade Patterns:** A deep dive into subscription transitions, examining factors influencing upgrades and analyzing trends associated with downgrades.
5. **Content Consumption Behavior:** An analysis of user engagement, including total watch time, device preferences, and variations based on demographic factors.

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
