-- Assume the following monthly subscription prices, calculate the total revenue generated by both platforms (LioCinema and Jotstar) for the analysis period (January to November 2024).

-- Jotstar: 8,292,243
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM jotstar_db.subscribers
),
calculating_revenue AS (
    SELECT *,
        CASE
            WHEN current_subscription_plan = 'VIP' THEN 159
            WHEN current_subscription_plan = 'Premium' THEN 359
            ELSE 0
        END AS subscription_fee
    FROM current_sub_plan
)
SELECT
    SUM(subscription_fee) AS total_revenue
FROM calculating_revenue;

-- Creating a temporary table to calculate the total revenue by categories
CREATE VIEW revenue_table AS
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM jotstar_db.subscribers
)
SELECT *,
    CASE
        WHEN current_subscription_plan = 'VIP' THEN 159
        WHEN current_subscription_plan = 'Premium' THEN 359
        ELSE 0
    END AS subscription_fee
FROM current_sub_plan;

-- Monthly Revenue Trends
WITH calculating_revenue AS (
    SELECT MONTH(subscription_date) AS month,
        MONTHNAME(subscription_date) AS month_name,
        SUM(subscription_fee) AS total_revenue
    FROM jotstar_db.revenue_table
        GROUP BY month, month_name
        ORDER BY month
)
SELECT month, month_name, total_revenue,
    ((total_revenue - LAG(total_revenue) OVER (ORDER BY month)) /
        LAG(total_revenue) OVER (ORDER BY month) * 100) AS monthly_user_growth
FROM calculating_revenue;

-- Total Revenue by Subscription Plan
WITH calculating_revenue AS (
    SELECT current_subscription_plan,
        SUM(subscription_fee) AS total_revenue
    FROM jotstar_db.revenue_table
    WHERE current_subscription_plan NOT IN ('Free')
    GROUP BY current_subscription_plan
    ORDER BY total_revenue DESC
)
SELECT current_subscription_plan, total_revenue,
    ROUND(total_revenue * 100 / SUM(total_revenue) OVER (), 2) AS pct_contribution
FROM calculating_revenue;

-- Total Revenue by Age Group
WITH calculating_revenue AS (
    SELECT age_group,
        SUM(subscription_fee) AS total_revenue
    FROM jotstar_db.revenue_table
    GROUP BY age_group
    ORDER BY total_revenue DESC
)
SELECT age_group, total_revenue,
    ROUND(total_revenue * 100 / SUM(total_revenue) OVER (), 2) AS pct_contribution
FROM calculating_revenue;

-- Total Revenue by City Tier
WITH calculating_revenue AS (
    SELECT city_tier,
        SUM(subscription_fee) AS total_revenue
    FROM jotstar_db.revenue_table
    GROUP BY city_tier
    ORDER BY total_revenue DESC
)
SELECT city_tier, total_revenue,
    ROUND(total_revenue * 100 / SUM(total_revenue) OVER (), 2) AS pct_contribution
FROM calculating_revenue;

-- Liocinema: 5,378,571
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM liocinema_db.subscribers
),
calculating_revenue AS (
    SELECT *,
        CASE
            WHEN current_subscription_plan = 'Premium' THEN 129
            WHEN current_subscription_plan = 'Basic' THEN 69
            ELSE 0
        END AS subscription_fee
    FROM current_sub_plan
)
SELECT
    SUM(subscription_fee) AS total_revenue
FROM calculating_revenue;

-- Creating a temporary table to calculate the total revenue by categories
CREATE VIEW revenue_table AS
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM liocinema_db.subscribers
)
SELECT *,
    CASE
        WHEN current_subscription_plan = 'Premium' THEN 129
        WHEN current_subscription_plan = 'Basic' THEN 69
        ELSE 0
    END AS subscription_fee
FROM current_sub_plan;

-- Monthly Revenue Trends
WITH calculating_revenue AS (
    SELECT MONTH(subscription_date) AS month,
        MONTHNAME(subscription_date) AS month_name,
        SUM(subscription_fee) AS total_revenue
    FROM liocinema_db.revenue_table
        GROUP BY month, month_name
        ORDER BY month
)
SELECT month, month_name, total_revenue,
    ((total_revenue - LAG(total_revenue) OVER (ORDER BY month)) /
        LAG(total_revenue) OVER (ORDER BY month) * 100) AS monthly_user_growth
FROM calculating_revenue;

-- Total Revenue by Subscription Plan
WITH calculating_revenue AS (
    SELECT current_subscription_plan,
        SUM(subscription_fee) AS total_revenue
    FROM liocinema_db.revenue_table
    WHERE current_subscription_plan NOT IN ('Free')
    GROUP BY current_subscription_plan
    ORDER BY total_revenue DESC
)
SELECT current_subscription_plan, total_revenue,
    ROUND(total_revenue * 100 / SUM(total_revenue) OVER (), 2) AS pct_contribution
FROM calculating_revenue;

-- Total Revenue by Age Group
WITH calculating_revenue AS (
    SELECT age_group,
        SUM(subscription_fee) AS total_revenue
    FROM liocinema_db.revenue_table
    GROUP BY age_group
    ORDER BY total_revenue DESC
)
SELECT age_group, total_revenue,
    ROUND(total_revenue * 100 / SUM(total_revenue) OVER (), 2) AS pct_contribution
FROM calculating_revenue;

-- Total Revenue by City Tier
WITH calculating_revenue AS (
    SELECT city_tier,
        SUM(subscription_fee) AS total_revenue
    FROM liocinema_db.revenue_table
    GROUP BY city_tier
    ORDER BY total_revenue DESC
)
SELECT city_tier, total_revenue,
    ROUND(total_revenue * 100 / SUM(total_revenue) OVER (), 2) AS pct_contribution
FROM calculating_revenue;

-- THE END --