-- What is the distribution of users by age group, city tier, and subscription plan for each platform?

-- Jotstar

-- Total Users by Age Group
WITH users_by_age_group AS (
    SELECT age_group,
        COUNT(DISTINCT user_id) AS total_users
    FROM jotstar_db.subscribers
    GROUP BY age_group
    ORDER BY total_users DESC
)
SELECT age_group, total_users,
       ROUND((total_users * 100.0) / SUM(total_users) OVER (), 2) AS pct_contribution
FROM users_by_age_group;

-- Total Users by City Tier
WITH users_by_city_tier AS (
    SELECT city_tier,
        COUNT(DISTINCT user_id) AS total_users
    FROM jotstar_db.subscribers
    GROUP BY city_tier
    ORDER BY total_users DESC
)
SELECT city_tier, total_users,
       ROUND((total_users * 100.0) / SUM(total_users) OVER (), 2) AS pct_contribution
FROM users_by_city_tier;

-- Total Users by Subscription Plan
WITH users_by_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM jotstar_db.subscribers
),
grouping_data AS (
    SELECT current_subscription_plan,
        COUNT(DISTINCT user_id) AS total_users
    FROM users_by_sub_plan
        GROUP BY current_subscription_plan
        ORDER BY total_users DESC
)
SELECT current_subscription_plan, total_users,
       ROUND((total_users * 100.0) / SUM(total_users) OVER (), 2) AS pct_contribution
FROM grouping_data;

-- Liocinema

-- Total Users by Age Group
WITH users_by_age_group AS (
    SELECT age_group,
        COUNT(DISTINCT user_id) AS total_users
    FROM liocinema_db.subscribers
    GROUP BY age_group
    ORDER BY total_users DESC
)
SELECT age_group, total_users,
       ROUND((total_users * 100.0) / SUM(total_users) OVER (), 2) AS pct_contribution
FROM users_by_age_group;

-- Total Users by City Tier
WITH users_by_city_tier AS (
    SELECT city_tier,
        COUNT(DISTINCT user_id) AS total_users
    FROM liocinema_db.subscribers
    GROUP BY city_tier
    ORDER BY total_users DESC
)
SELECT city_tier, total_users,
       ROUND((total_users * 100.0) / SUM(total_users) OVER (), 2) AS pct_contribution
FROM users_by_city_tier;

-- Total Users by Subscription Plan
WITH users_by_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM liocinema_db.subscribers
),
grouping_data AS (
    SELECT current_subscription_plan,
        COUNT(DISTINCT user_id) AS total_users
    FROM users_by_sub_plan
        GROUP BY current_subscription_plan
        ORDER BY total_users DESC
)
SELECT current_subscription_plan, total_users,
       ROUND((total_users * 100.0) / SUM(total_users) OVER (), 2) AS pct_contribution
FROM grouping_data;

-- THE END --