# Comparison Analysis of OTT Platforms

### Quick Links
  * [Live Dashboard]([https://app.powerbi.com/links/gzC0cKmK4N?ctid=c6e549b3-5f45-4032-aae9-d4244dc5b2c4&pbi_source=linkShare](https://app.powerbi.com/view?r=eyJrIjoiZTZlZmJiMjAtMDhjZC00ZDlkLTliMWItNTQyZTNkYjNiZjM3IiwidCI6ImM2ZTU0OWIzLTVmNDUtNDAzMi1hYWU5LWQ0MjQ0ZGM1YjJjNCJ9))
  * [LinkedIn Post]()
  * [Presentation Video]()
  * Project Files
    * [PBIX](https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/0508a68a7f26dd78946ec7bab6de86fb051f4c54/Solutions/Comparison%20Analysis%20of%20OTT%20Platforms.pbix)
    * [PPT](https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/0508a68a7f26dd78946ec7bab6de86fb051f4c54/Solutions/Presentation%20File.pptx)
    * [PDF]()

### Table of Contents
* [Project Overview](#project-overview)
    * [Business Problem](#business-problem)
    * [Approach & Methodology](#approach-and-methodology)
    * [Key Insights & Outcomes](#key-insights-and-outcomes)
         * [Analysis of Metrics](#analysis-of-metrics-jotstar-vs-liocinema)
         * [Jotstar Monthly Trends Analysis](#jotstar-monthly-trends-analysis)
         * [Liocinema Monthly Trends Analysis](#liocinema-monthly-trends-analysis)
         * [Subscriber Insights](#subscriber-insights)
         * [Upgrade & Downgrade Patterns](#upgrade-and-downgrade-patterns)
         * [Inactivity Analysis](#inactivity-analysis)
         * [Content Library Analysis](#content-library-analysis)
         * [Content Consumption Behaviour](#content-consumption-behaviour)
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

***

### Approach and Methodology

To analyze and compare the performance of LioCinema and Jotstar, we followed a structured approach:

#### 1. Understanding Business Requirements
Before diving into the data, we identified key business questions that needed to be answered. The goal was to help LioCinema’s management understand subscriber behavior, content consumption trends, and financial performance to optimize the merger with Jotstar.

#### 2. Project Planning & Dashboard Mockup
We outlined the project scope, deliverables, and timelines. A rough dashboard mockup was created to visualize key metrics and ensure alignment with business expectations before starting data work.

#### 3. Data Collection & Data Exploration
We gathered datasets containing subscriber details, content libraries, and watch-time data for both platforms. An initial exploration helped us understand the data structure, spot inconsistencies, and identify missing values.

#### 4. Data Cleaning & Transformation
To ensure accuracy, we cleaned the data by handling missing values, correcting inconsistencies, and standardizing formats. Transformations were applied to create calculated fields for metrics like total watch time, subscription upgrades, and inactivity rates.

#### 5. Data Modelling
A structured data model was designed to efficiently analyze relationships between subscribers, content, and engagement metrics. Fact and dimension tables were created to streamline data retrieval for reporting and visualization.

#### 6. Further Dashboard Customization for Different Platforms
Since each OTT platform had unique content and subscriber patterns, we customized dashboard elements accordingly. Dynamic filters and platform-specific views allowed deeper insights tailored to LioCinema and Jotstar individually.

#### 7. Performing Analytics and Extracting Major Insights
Using Power BI, we created interactive dashboards with key performance indicators (KPIs), trends, and comparisons. Analytics focused on user engagement, subscription trends, watch-time patterns, and content preferences.

#### 8. Iterative Refinement
After the initial dashboard development, we refined the design based on feedback. Adjustments included improving visualizations, adding more comparison metrics, and ensuring data clarity for stakeholders.

#### 9. Creating a Detailed Report
A final report and presentation were prepared, summarizing insights with actionable recommendations for LioCinema’s management. The report included visual breakdowns of trends, key takeaways, and strategies to optimize the merger’s success.

***

### Key Insights and Outcomes

#### **Analysis of Metrics: Jotstar vs. Liocinema**

#### **User Base & Subscription Types**
- **Liocinema has a much larger user base** than Jotstar, with **four times more users** (183.45K vs. 44.62K).  
- **Jotstar has a higher percentage of paying users** (67.57% paid vs. 32.43% free).  
- **Liocinema, on the other hand, has more free users** (33.09% paid vs. 66.91% free).  
- This means **Jotstar is more reliant on paid subscriptions**, while **Liocinema attracts more free users**.  

#### **Subscription Plan Changes**
- **More users downgrade their plans than upgrade on both platforms**:  
  - **Jotstar**: 11.64% downgraded, 4.25% upgraded.  
  - **Liocinema**: 11.37% downgraded, 2.26% upgraded.  
- However, **most users (over 80%) don't change their plans** at all.  
- When comparing upgrades and downgrades, **Jotstar users are more likely to switch plans** than Liocinema users.  

#### **User Engagement (Active vs. Inactive Users)**
- **Jotstar has a much higher percentage of active users (85.09%)** compared to Liocinema (55.13%).  
- **Liocinema has nearly half of its users inactive (44.87%)**, which is significantly higher than Jotstar (14.91%).  
- This suggests that **Jotstar’s users are more engaged**, while Liocinema struggles with inactive users.  

#### **Content Library & Watch Time**
- **Jotstar offers more content** (2.36K titles with a total runtime of 3.52K hours) compared to **Liocinema’s smaller library** (1.25K titles with 2.14K hours).  
- **Jotstar also has a higher total watch time** (15.69M hours) than Liocinema (11.03M hours), indicating that users spend more time watching content on Jotstar.  

#### **Key Takeaways**
- **Jotstar focuses more on paid users, has higher engagement, and a bigger content library.**  
- **Liocinema has a larger user base but struggles with engagement, as more of its users are inactive and prefer free plans.**  
- **Jotstar users are more likely to switch plans, while Liocinema users tend to stick with their current subscription.**  
- **Jotstar leads in total watch time, suggesting stronger content consumption.**

***

### Jotstar Monthly Trends Analysis

#### User Base Metrics

#### Active vs Inactive Users
* Active users show a steady growth trend, indicating successful user engagement strategies
* Inactive user numbers remain relatively low, suggesting good user retention
* The ratio between active and inactive users demonstrates healthy platform engagement

#### User Type Distribution

#### Free Users
* Maintains a substantial base, representing the platform's primary user acquisition channel
* Shows gradual month-over-month growth, indicating successful user acquisition
* Serves as a potential pool for conversion to paid subscriptions

#### Paid Users
* Exhibits consistent growth, suggesting effective monetization strategies
* Represents a stable revenue stream for the platform
* Growth pattern indicates successful conversion from free to paid tiers

#### Upgrade & Downgrade Patterns
* Upgraded users show a positive trend, indicating effective premium feature marketing
* Downgrade rates remain lower than upgrade rates, suggesting good value proposition
* The positive difference between upgrades and downgrades indicates healthy business growth

#### Non-Upgraded Users
* Represents a significant opportunity for conversion
* Fluctuates seasonally, suggesting potential timing for targeted upgrade campaigns
* Provides insights for improvement in premium feature marketing

#### Engagement Metrics

#### Watch Time Analysis

#### Total Watch Time
* Shows an upward trend, indicating increasing platform engagement
* Peaks during certain months, suggesting seasonal viewing patterns
* Correlates with user growth and content popularity

#### Average Watch Time
* Maintains steady levels, indicating consistent user engagement
* Slight variations month-to-month reflect changing content consumption patterns
* Provides insights into content strategy effectiveness

#### Key Insights

#### Growth Indicators
* Overall user base shows healthy growth across both free and paid segments
* Positive upgrade-downgrade differential indicates successful retention strategies
* Watch time metrics suggest strong user engagement and content appeal

#### Areas of Opportunity
* Non-upgraded users represent potential for conversion through targeted campaigns
* Seasonal patterns in watch time can be leveraged for content strategy
* User engagement patterns can inform future feature development

#### Strategic Implications
* Focus on maintaining high engagement levels among active users
* Continue optimizing upgrade pathways to maintain positive conversion rates
* Leverage watch time data to enhance content recommendations and user experience

***

### Liocinema Monthly Trends Analysis

#### User Base Metrics

#### Total Users
* Steady growth in the overall user base throughout the period
* Consistent month-over-month increase indicates successful user acquisition strategies
* The growth trajectory suggests effective marketing and platform appeal

#### Active vs Inactive Users
* Active users show a positive trend, representing engaged audience
* Inactive users remain relatively low, suggesting good user retention
* Monthly fluctuations in active users align with typical streaming service patterns

#### User Type Distribution

#### Free vs Paid Users
* Free users maintain a substantial base, serving as potential conversion opportunities
* Paid users show gradual increase, indicating successful monetization
* The ratio between free and paid users suggests room for conversion optimization

#### User Conversion Metrics
* Upgraded users demonstrate consistent positive momentum
* Downgraded users remain minimal, suggesting good value proposition
* The positive difference between upgrades and downgrades indicates strong user satisfaction
* Non-upgraded users present ongoing conversion opportunities

#### Watch Time Analysis

#### Total Watch Time
* Overall watch time shows upward trend, indicating growing content engagement
* Monthly variations reflect seasonal viewing patterns
* Peak viewing periods align with content release strategies

#### Average Watch Time
* Consistent average watch time per user suggests stable engagement levels
* Slight monthly fluctuations indicate content consumption patterns
* Higher average watch times correlate with new content releases

#### Key Insights
* Strong user base growth with healthy conversion rates
* Effective user retention with low downgrade rates
* Robust engagement metrics in terms of watch time
* Clear opportunity for converting free users to paid subscriptions
* Seasonal patterns influence viewing behavior and engagement

#### Recommendations
* Focus on converting non-upgraded users through targeted campaigns
* Maintain content quality to sustain high watch times
* Leverage peak viewing periods for new content releases
* Implement strategies to re-engage inactive users
* Continue monitoring upgrade-downgrade differential for early warning signals

***

### Subscriber Insights

- **Jotstar**  
  - The **25-34 age group** is more likely to pay for a subscription, with **31.64% of paid users** coming from this group, compared to only **13.34% of free users**.  
  - Among paid users, the split between **Premium (51.72%) and VIP (48.28%)** is nearly even, showing balanced demand for both plans.  
  - **Tier 1 cities** dominate in paid users (**63.23%**), suggesting that people in major cities are more willing to pay for content.  
  - **Free users** are more evenly distributed across city tiers, but **Tier 1 (44.14%) still leads**, followed by **Tier 2 (33.88%)**.  

- **Subscription Plan Ranking Over Time (Jotstar)**
  - **Consistent Growth:** The total number of subscribers has gradually increased from **January to November**, reaching **4.32K in November.**
  - **Free Plan Dominance:** The **Free plan** consistently had the highest number of subscribers across all months, suggesting that most users prefer free content.
  - **Steady Premium Growth:** The **Premium plan** shows a steady increase over time, indicating growing interest in paid content.
  - **VIP Plan Stability:** The **VIP plan** remains relatively stable throughout the year, with slight fluctuations.
  - **Significant Increase in Q3 & Q4:** Subscription numbers saw a notable rise starting in **August**, continuing into **October and November**. This could be due to seasonal trends, promotions, or new content releases.

- **Liocinema**  
  - The **18-24 age group** is the biggest segment of paying users (**29.12%**), while only **14.39% of free users** come from this age group, indicating younger audiences are more likely to pay.  
  - Most paid users prefer the **Basic plan (73.8%)**, while fewer opt for **Premium (26.2%)**, suggesting affordability is a key factor.  
  - **Tier 2 cities lead in paid users (40.47%)**, followed by **Tier 3 (31.03%)**, showing that Liocinema’s paying audience comes more from mid-sized and smaller cities.  
  - **Free users** are concentrated in **Tier 3 cities (48.68%)**, followed by **Tier 2 (32%)**, indicating that users in smaller cities prefer free content.

- **Subscription Plan Ranking Over Time (Jotstar)**
  - **Steady Growth in Subscriptions**  
    - The total number of subscribers has increased consistently from **6.76K in January to 37.00K in November**, indicating strong user acquisition.  
  
  - **Free Plan Dominates Growth**  
    - The **Free plan** has seen the most significant growth, reaching **22.60K users in November**, making up the largest share of the total subscriptions.  
    - This suggests that more users are opting for free content, possibly due to affordability concerns or trial usage before upgrading.  
  
  - **Premium and Basic Plans Growing at a Slower Pace**  
    - **Premium and Basic subscriptions have increased gradually**, but at a much slower rate compared to the Free plan.  
    - **Premium subscriptions reached 10.07K in November**, showing consistent but moderate growth.  
    - **Basic plan subscriptions have also increased but remain lower compared to Free and Premium.**  
  
  - **Significant Growth in Q4**  
    - The largest spike in subscriptions happened in **October and November**, with numbers rising from **18.33K in October to 37.00K in November**.  
    - This suggests possible promotional activities, seasonal demand, or content releases that attracted more users.  

- **Key Takeaways**  
  - **Jotstar** attracts more paying users from **Tier 1 cities and the 25-34 age group**, with a fairly balanced demand for Premium and VIP plans.  
  - **Liocinema’s paid audience skews younger (18-24) and is mostly from Tier 2 and 3 cities**, with a strong preference for the **Basic plan over Premium**.  
  - **Free users on both platforms are more spread across city tiers**, but **Jotstar sees more free users in Tier 1, while Liocinema’s free audience is mostly in Tier 3**.
  - The platform is experiencing **steady user growth**, with the Free plan being the most popular choice.  
  - **Paid subscriptions (Premium & Basic) are growing but not as fast**, indicating potential room for strategies like exclusive content or better incentives to convert free users.  
  - **The biggest surge happened in Q4**, hinting at a successful marketing campaign or increased demand during this period.  

***

### Upgrade and Downgrade Patterns

#### Liocinema Insights  

- **Users Who Haven’t Upgraded**  
  - The majority of non-upgraded users are on the **Free plan (64.51%)**, followed by **Basic (26.31%)**, and **Premium (9.18%)**.  
  - **Younger users (18-24) are the least likely to upgrade (44.09%)**, possibly due to budget constraints.  
  - **Tier 3 cities have the highest percentage of non-upgraders (45.22%)**, suggesting lower purchasing power or less interest in premium content.  

- **Upgrade & Downgrade Patterns**  
  - **More free users moved to the Basic plan (2,078 users) than Premium (715 users)**, indicating that affordability plays a key role in upgrades.  
  - **Basic users are more likely to downgrade than upgrade**, with **10,309 downgrading to Free**, while only **1,362 moved to Premium**.  
  - **Premium users saw significant downgrades**, with **7,439 moving to Free**, while **3,111 downgraded to Basic**.  
    - This suggests **Premium pricing might not be sustainable for many users**, and they prefer the affordability of lower-tier plans.  

- **Who Is More Likely to Upgrade?**  
  - **Users aged 35-44 make up the largest share of upgraded users (39.18%)**, followed by those aged 25-34 (31.29%).  
    - This indicates that **middle-aged users are more willing to pay for premium content**.  
  - **Tier 1 cities have the highest upgrade rate (45.34%)**, likely due to better income levels and stronger interest in paid content.  

- **Who Is More Likely to Downgrade?**  
  - **Young adults (18-24) have the highest downgrade rate (45.50%)**, possibly due to financial limitations.  
  - **Tier 2 cities show the most downgrades (39.38%)**, suggesting affordability concerns.  

#### Jotstar Insights  

- **Users Who Haven’t Upgraded**  
  - Unlike Liocinema, Jotstar’s non-upgraded users are spread across all plans:  
    - **VIP (37.8%)**, **Premium (34.04%)**, and **Free (28.16%)**.  
  - **Users aged 25-34 are the least likely to upgrade (45.20%)**, followed by those aged 35-44 (24.51%).  
  - **Tier 1 cities have the highest percentage of non-upgraders (57.04%)**, which is surprising given their high upgrade rates.  

- **Upgrade & Downgrade Patterns**  
  - **More free users upgraded to VIP (844 users) than Premium (683 users)**, suggesting that **users see value in skipping mid-tier plans**.  
  - **VIP users were more likely to downgrade than upgrade**, with **2,821 downgrading to Premium** and **2,149 dropping to Free**.  
  - **Premium users showed relatively lower movement**, with only **368 upgrading to VIP and 225 downgrading to Free**.  

- **Who Is More Likely to Upgrade?**  
  - **Users aged 25-34 are the biggest group of upgraded users (42.48%)**, followed by 35-44 (31.24%).  
  - **Tier 1 cities dominate upgrades (61.53%)**, indicating a strong preference for paid content in urban areas.  

- **Who Is More Likely to Downgrade?**  
  - **The highest downgrade rate is among users aged 25-34 (44.27%)**, followed by 35-44 (28.59%).  
  - **Surprisingly, Tier 1 cities also have the highest downgrade rate (55.42%)**, meaning some urban users might be reconsidering their premium subscriptions.  

#### Key Takeaways  

- **Liocinema’s Free plan dominates, while Jotstar has a more balanced user base across plans.**  
- **Younger users (18-24) are least likely to upgrade and most likely to downgrade on Liocinema.**  
- **Tier 1 users in Jotstar are highly engaged but also downgrade frequently, which could indicate price sensitivity.**  
- **VIP upgrades on Jotstar suggest users may prefer skipping mid-tier plans when upgrading.**  
- **Liocinema’s premium retention is weaker, with many Premium users downgrading to Free or Basic.**  

***

### Inactivity Analysis

- **Jotstar Insights**  
  - Most active users (44.63%) are aged **25-34**, showing that this age group is the most engaged.  
  - **Tier 1 cities** have the highest engagement (58.23%), suggesting strong urban user activity.  
  - Premium users make up the largest share of active users (40.5%), followed by VIP (33.61%) and Free (25.89%).  
  - The majority of inactive users (46.98%) also belong to the **25-34** age group.  
  - **Tier 1 cities** also have the highest number of inactive users (50.23%), meaning user retention in urban areas needs improvement.  
  - Free users make up the largest portion of inactive users (46.8%), while premium users are the least likely to become inactive (13.54%).  

- **Monthly Active vs. Inactive Users (Jotstar)**  
  - **January had the highest activity (81.38%)**, possibly due to New Year trends and marketing efforts.  
  - Engagement declined throughout the year, with **November showing the lowest active users (68.93%)**.  
  - As active users decreased, inactive users increased, highlighting a retention challenge.  
  - **The inactive user percentage remained stable (11% - 18%)**, suggesting a consistent disengaged user base.  

- **Liocinema Insights**  
  - Most active users (40.18%) are **18-24 years old**, showing that younger audiences drive engagement.  
  - **Tier 2 cities** lead in active users (38.09%), with Tier 3 following at 19.49%, meaning suburban areas have strong engagement.  
  - Free users make up the largest share of active users (59.48%), indicating a preference for free content.  
  - The majority of inactive users (47.59%) are also from the **18-24** age group, showing that engagement retention is a challenge for younger users.  
  - **Tier 3 cities** have the highest inactive users (52.04%), suggesting engagement struggles in rural areas.  
  - Free users are the most likely to become inactive (72.65%), while premium users have the lowest inactivity rate (5.45%).  

- **Monthly Active vs. Inactive Users (Liocinema)**  
  - **January to September had consistently high inactive users (over 50%)**, with March peaking at 62.70% inactivity.  
  - **A major shift happened in October and November, with active users reaching 71.49%**, likely due to new content, promotions, or seasonal trends.  
  - The biggest changes occurred between **September to October and October to November**, signaling a turning point in user engagement.  

- **Key Takeaways**  
  - **Younger users (18-34) are the most engaged**, but also show high inactivity rates, highlighting the need for targeted retention strategies.  
  - **Urban users (Tier 1) engage more with Jotstar, while suburban users (Tier 2) dominate Liocinema**, suggesting different audience preferences.  
  - **Free users have the highest inactivity rates**, indicating that premium content or incentives could help retain them.  
  - **Liocinema saw a significant user engagement boost in the last quarter**, possibly due to strategic campaigns or content releases.  
  - **Jotstar experienced a steady decline in engagement over the year**, signaling a need for improved long-term user retention efforts.  

***

### Content Library Analysis

#### Liocinema Insights  

- **Movies dominate the platform**, making up **72% of all content (900 items)**.  
- **Series** account for **24%**, while **Sports content** is minimal at **4%**.  
- **Movies also contribute the most to total watchable hours**, making up **88.65% of total run time (1.9K hours)**.  
  - This suggests Liocinema focuses more on **long-form storytelling**, with fewer series and sports events.  

- **Most Popular Genres (By Content Count)**  
  - **Drama (31.60%)** leads the content library, followed by **Comedy (16.80%)** and **Action (13.36%)**.  
  - This indicates that **Liocinema caters more to audiences who enjoy emotional and light-hearted content**.  

- **Most Popular Languages (By Content Count)**  
  - **Hindi is the most dominant language (33.92%)**, followed by **Telugu (19.36%)** and **Tamil (17.68%)**.  
  - This shows a strong focus on regional Indian content, likely appealing to a **diverse linguistic audience**.  

- **Most Watched Genres (By Total Run Time)**  
  - **Drama (30.07%)** is the most consumed genre, followed by **Comedy (16.90%)** and **Action (13.61%)**.  
  - Since **Drama has both the highest content count and watch time**, it is likely a core offering that keeps users engaged.  

- **Most Watched Languages (By Total Run Time)**  
  - **Hindi (32.50%)** leads in total hours watched, followed by **Telugu (20.38%)** and **Tamil (18.55%)**.  
  - This aligns with content availability, confirming that Hindi-language content is **both widely available and widely watched**.
 
#### Jotstar Insights  

- **Movies and series are more balanced**, with **Movies making up 50% (1,180 items)** and **Series at 35%**.  
- **Sports content is significantly higher than Liocinema at 15%**.  
- In terms of total run time, **Movies contribute 69.51% (2.4K hours)**, followed by **Sports (17.79%)** and **Series (12.7%)**.  
  - This suggests that Jotstar is **investing in sports content**, which typically has high engagement.  

- **Most Popular Genres (By Content Count)**  
  - **Action (16.86%)** is the most common genre, followed closely by **Drama (16.40%)** and **Thriller (12.20%)**.  
  - Unlike Liocinema, **Jotstar focuses more on action-packed and suspenseful content**.  

- **Most Popular Languages (By Content Count)**  
  - **English (33.90%)** is the top language, followed by **Hindi (26.99%)** and **Tamil (10.64%)**.  
  - This indicates Jotstar has a **more international audience** compared to Liocinema.  

- **Most Watched Genres (By Total Run Time)**  
  - **Live Matches (16.18%)** contribute the most to watch time, followed by **Drama (16.12%)** and **Action (15.96%)**.  
  - The high percentage of **live matches suggests a strong sports viewership on Jotstar**, making it a key differentiator from Liocinema.  

- **Most Watched Languages (By Total Run Time)**  
  - **English (30.97%)** leads in total watch time, followed by **Hindi (28.78%)** and **Telugu (11.19%)**.  
  - This reinforces that Jotstar serves both **English and Hindi-speaking audiences**, with a smaller but notable Telugu audience.
 
#### Key Takeaways  

- **Liocinema heavily invests in movies**, with Drama being the top genre.  
- **Jotstar has a more balanced content strategy**, with a mix of movies, series, and sports.  
- **Jotstar has 3x more sports content than Liocinema**, and live matches drive significant watch time.  
- **Liocinema focuses on Indian languages (Hindi, Telugu, Tamil), while Jotstar has a stronger English presence**.  
- **Jotstar has a larger content library**, but Liocinema’s **movie-dominated strategy leads to higher watch time per item**.  
- **Liocinema is ideal for users who prefer a strong movie catalog, especially in Hindi and regional Indian languages**.  
- **Jotstar appeals to a wider audience with action-heavy content, sports events, and a mix of English & Hindi programming**.

***

### Content Consumption Behaviour

- **Jotstar Viewing Trends**  
  - **Device Preferences:** Most users watch content on **mobile devices (50.06%)**, followed by **TV (26.93%)** and **laptops (23.02%)**.  
    - Mobile’s popularity suggests that users prefer on-the-go entertainment, while TV is still a key platform for home viewing.  
  - **Who Watches the Most?**  
    - **Young adults aged 25-34 contribute nearly half (45.68%) of the total watch time.**  
  - **Subscription-Based Viewing:**  
    - **Premium users account for the highest watch time (51.81%)**, followed by **VIP (31.22%)**, while **free users contribute the least (16.97%)**.  
    - This indicates that **paid users are more engaged** and likely getting value from their subscription.  
  - **Where Are Viewers Located?**  
    - **Tier 1 cities contribute the majority of total watch time (63.92%)**, showing that urban users are the most active consumers of Jotstar’s content.  

- **Liocinema Viewing Trends**  
  - **Device Preferences:** A significant majority of users prefer watching on **mobile (76.57%)**, with much lower engagement on **TV (14.18%)** and **laptops (9.25%)**.  
    - This suggests that **Liocinema is a mobile-first platform**, likely due to its content format or target audience preferences.  
  - **Who Watches the Most?**  
    - **Viewers aged 18-24 contribute the most watch time (44.55%)**, meaning **a younger audience dominates engagement** compared to Jotstar.  
  - **Subscription-Based Viewing:**  
    - **Free users account for the highest share of total watch time (47.92%)**, followed by **Basic (34.21%)** and **Premium (17.87%)**.  
    - Unlike Jotstar, where paid users dominate watch time, **Liocinema relies more on its free-tier audience for engagement.**  
  - **Where Are Viewers Located?**  
    - **Tier 2 cities make up the largest share (39.02%)**, followed by **Tier 1 (33.46%)** and **Tier 3 (27.52%)**.  
    - This suggests **Liocinema has broader reach across different city tiers**, whereas Jotstar is more concentrated in urban areas.  

- **Key Takeaways**  
  - **Jotstar has a more balanced device usage, while Liocinema is heavily mobile-driven.**  
  - **Jotstar’s primary audience is aged 25-34, whereas Liocinema skews younger (18-24).**  
  - **Paid subscribers on Jotstar watch significantly more content, while Liocinema’s free users dominate engagement.**  
  - **Jotstar’s viewership is concentrated in Tier 1 cities, while Liocinema has a wider spread across city tiers.**

***

### Questions for Business Analysis

#### Primary Questions

1. **Total Users & Growth Trends:** What is the total number of users for LioCinema and Jotstar, and how do they compare in terms of growth trends (January–November 2024)?
2. **Content Library Comparison:** What is the total number of contents available on LioCinema vs. Jotstar? How do they differ in terms of language and content type?
3. **User Demographics:** What is the distribution of users by age group, city tier, and subscription plan for each platform?
4. **Active vs. Inactive Users:** What percentage of LioCinema and Jotstar users are active vs. inactive? How do these rates vary by age group and subscription plan?
5. **Watch Time Analysis:** What is the average watch time for LioCinema vs. Jotstar during the analysis period? How do these compare by city tier and device type?
6. **Inactivity Correlation:** How do inactivity patterns correlate with total watch time or average watch time? Are less engaged users more likely to become inactive?
7. **Downgrade Trends:** How do downgrade trends differ between LioCinema and Jotstar? Are downgrades more prevalent on one platform compared to the other?
8. **Upgrade Patterns:** What are the most common upgrade transitions (e.g., Free to Basic, Free to VIP, Free to Premium) for LioCinema and Jotstar? How do these differ across platforms?
9. **Paid Users Distribution:** How does the paid user percentage (e.g., Basic, Premium for LioCinema; VIP, Premium for Jotstar) vary across different platforms? Analyse the proportion of premium users in Tier 1, Tier 2, and Tier 3 cities and identify any notable trends or differences.
10. **Revenue Analysis:** Assume the following monthly subscription prices, calculate the total revenue generated by both platforms (LioCinema and Jotstar) for the analysis period (January to November 2024)

<br>
<img src="https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/8b60b0cf661710d92a1d29089c4c8b7e3283ffe6/Images/Primary%20Questions%20(Q10).png" class="center">

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

***

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

***

### Key Learnings



***

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

***

## Data Modelling

<img src="https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/8b60b0cf661710d92a1d29089c4c8b7e3283ffe6/Images/Data%20Model.png" class="center">

## Dashboards

There are five dashboards providing insights into various aspects of the two platforms.

1. **Content Library Analysis:** This dashboard explores the content available on the platform. It includes total content count, run time, and a breakdown of content by type, genre, and language. Key visuals include bar charts for content distribution across genres and languages, and a matrix comparing content type against total content count.
2. **Subscriber Insights:** This dashboard provides an overview of user demographics and subscription trends. It displays total, paid, and free user counts, along with their percentages. The visuals include a breakdown of user growth by age group, city tier, and device type, a stacked bar chart of subscription plan trends over time, and an age-group distribution comparison across subscription types.
3. **Inactivity Analysis:** This dashboard tracks user engagement by highlighting inactive users. It presents metrics on total users, active and inactive users, and their percentages. Visuals include a table showing inactive users by month and age group, a bar chart comparing active vs. inactive users by city tier, and a stacked bar chart of monthly activity trends.
4. **Upgrade and Downgrade Patterns:** This dashboard analyzes user subscription changes, showcasing upgrade and downgrade percentages. Key visuals include a Sankey chart illustrating user flow between plans, a bar chart for upgrade/downgrade timing, and a breakdown of subscription changes by age group and city tier.
5. **Content Consumption Behavior:** This dashboard provides insights into user watch time and device usage. It features total and average watch time, a stacked bar chart of watch time by subscription plan over quarters, a treemap of device types used for content consumption, and a bar chart showing average watch time by age group and device type.

### Home Page

<br>
<img src="https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/8b60b0cf661710d92a1d29089c4c8b7e3283ffe6/Images/Home%20Page.jpg" class="center">

### Jotstar DB

#### Subscriber Insights

<br>
<img src="https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/8b60b0cf661710d92a1d29089c4c8b7e3283ffe6/Images/Jotstar_db%20Subscriber%20Insights.jpg" class="center">

#### Upgrade and Downgrade Patterns

<br>
<img src="https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/8b60b0cf661710d92a1d29089c4c8b7e3283ffe6/Images/Jotstar_db%20Upgrade%20%26%20Downgrade%20Patterns.jpg" class="center">

#### Inactivity Analysis

<br>
<img src="https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/8b60b0cf661710d92a1d29089c4c8b7e3283ffe6/Images/Jotstar_db%20Inactivity%20Analysis.jpg" class="center">

#### Content Library Analysis

<br>
<img src="https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/8b60b0cf661710d92a1d29089c4c8b7e3283ffe6/Images/Jotstar_db%20Content%20Library%20Analysis.jpg" class="center">

#### Consumption Behavior

<br>
<img src="https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/8b60b0cf661710d92a1d29089c4c8b7e3283ffe6/Images/Jotstar_db%20Consumption%20Behaviour.jpg" class="center">

### Liocinema DB

#### Subscriber Insights

<br>
<img src="https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/8b60b0cf661710d92a1d29089c4c8b7e3283ffe6/Images/Liocinema_db%20Subscriber%20Insights.jpg" class="center">

#### Upgrade and Downgrade Patterns

<br>
<img src="https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/8b60b0cf661710d92a1d29089c4c8b7e3283ffe6/Images/Liocinema_db%20Upgrade%20%26%20Downgrade%20Patterns.jpg" class="center">

#### Inactivity Analysis

<br>
<img src="https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/8b60b0cf661710d92a1d29089c4c8b7e3283ffe6/Images/Liocinema_db%20Inactivity%20Analysis.jpg" class="center">

#### Content Library Analysis

<br>
<img src="https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/8b60b0cf661710d92a1d29089c4c8b7e3283ffe6/Images/Liocinema_db%20Content%20Library%20Analysis.jpg" class="center">

#### Consumption Behavior

<br>
<img src="https://github.com/BaderNader321/Comparison-Analysis-of-Two-OTT-Platforms/blob/8b60b0cf661710d92a1d29089c4c8b7e3283ffe6/Images/Liocinema_db%20Consumption%20Behaviour.jpg" class="center">
