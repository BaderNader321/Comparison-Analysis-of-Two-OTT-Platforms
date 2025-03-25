-- How does the paid user percentage (e.g., Basic, Premium for LioCinema; VIP, Premium for Jotstar) vary across different platforms?
-- Analyse the proportion of premium users in Tier 1, Tier 2, and Tier 3 cities and identify any notable trends or differences.

-- Jotstar

-- Paid Users: 31,677
-- Paid Users %: 70.99%
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM jotstar_db.subscribers
)
SELECT COUNT(DISTINCT user_id) AS paid_users,
    ROUND(COUNT(DISTINCT user_id) * 100 / (SELECT COUNT(DISTINCT user_id) FROM jotstar_db.subscribers), 2) AS paid_users_pct
FROM current_sub_plan
WHERE current_subscription_plan <> 'Free';

-- Paid Users % by Premium & VIP Plan
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM jotstar_db.subscribers
),
finding_paid_users_pct AS (
    SELECT current_subscription_plan,
        COUNT(DISTINCT user_id) AS paid_users,
        ROUND(COUNT(DISTINCT user_id) * 100 / (SELECT COUNT(DISTINCT user_id) FROM jotstar_db.subscribers), 2) AS paid_users_pct
    FROM current_sub_plan
    WHERE current_subscription_plan <> 'Free'
        GROUP BY current_subscription_plan
        ORDER BY paid_users DESC
)
SELECT *,
    ROUND((paid_users * 100.0) / SUM(paid_users) OVER (), 2) AS pct_contribution
FROM finding_paid_users_pct;

-- Proportion of Premium Users by City Tier
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM jotstar_db.subscribers
),
finding_premium_users_pct AS (
    SELECT city_tier,
        COUNT(DISTINCT user_id) AS premium_users,
        ROUND(COUNT(DISTINCT user_id) * 100 / (SELECT COUNT(DISTINCT user_id) FROM jotstar_db.subscribers), 2) AS paid_users_pct
    FROM current_sub_plan
    WHERE current_subscription_plan = 'Premium'
        GROUP BY city_tier
        ORDER BY premium_users DESC
)
SELECT *,
    ROUND((premium_users * 100.0) / SUM(premium_users) OVER (), 2) AS pct_contribution
FROM finding_premium_users_pct;

-- Paid Users % by Age Group
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM jotstar_db.subscribers
),
finding_paid_users AS (
    SELECT age_group,
        COUNT(DISTINCT user_id) AS paid_users,
        ROUND(COUNT(DISTINCT user_id) * 100 / (SELECT COUNT(DISTINCT user_id) FROM jotstar_db.subscribers), 2) AS paid_users_pct
    FROM current_sub_plan
    WHERE current_subscription_plan <> 'Free'
        GROUP BY age_group
        ORDER BY paid_users DESC
)
SELECT age_group,
    paid_users, paid_users_pct,
    ROUND((paid_users * 100.0) / SUM(paid_users) OVER (), 2) AS pct_contribution
FROM finding_paid_users;

-- Liocinema

-- Paid Users: 31,677
-- Paid Users %: 70.99%
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM liocinema_db.subscribers
)
SELECT COUNT(DISTINCT user_id) AS paid_users,
    ROUND(COUNT(DISTINCT user_id) * 100 / (SELECT COUNT(DISTINCT user_id) FROM liocinema_db.subscribers), 2) AS paid_users_pct
FROM current_sub_plan
WHERE current_subscription_plan <> 'Free';

-- Paid Users % by Premium & VIP Plan
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM liocinema_db.subscribers
),
finding_paid_users_pct AS (
    SELECT current_subscription_plan,
        COUNT(DISTINCT user_id) AS paid_users,
        ROUND(COUNT(DISTINCT user_id) * 100 / (SELECT COUNT(DISTINCT user_id) FROM liocinema_db.subscribers), 2) AS paid_users_pct
    FROM current_sub_plan
    WHERE current_subscription_plan <> 'Free'
        GROUP BY current_subscription_plan
        ORDER BY paid_users DESC
)
SELECT *,
    ROUND((paid_users * 100.0) / SUM(paid_users) OVER (), 2) AS pct_contribution
FROM finding_paid_users_pct;

-- Proportion of Premium Users by City Tier
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM liocinema_db.subscribers
),
finding_premium_users_pct AS (
    SELECT city_tier,
        COUNT(DISTINCT user_id) AS premium_users,
        ROUND(COUNT(DISTINCT user_id) * 100 / (SELECT COUNT(DISTINCT user_id) FROM liocinema_db.subscribers), 2) AS paid_users_pct
    FROM current_sub_plan
    WHERE current_subscription_plan = 'Premium'
        GROUP BY city_tier
        ORDER BY premium_users DESC
)
SELECT *,
    ROUND((premium_users * 100.0) / SUM(premium_users) OVER (), 2) AS pct_contribution
FROM finding_premium_users_pct;

-- Paid Users % by Age Group
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM liocinema_db.subscribers
),
finding_paid_users AS (
    SELECT age_group,
        COUNT(DISTINCT user_id) AS paid_users,
        ROUND(COUNT(DISTINCT user_id) * 100 / (SELECT COUNT(DISTINCT user_id) FROM jotstar_db.subscribers), 2) AS paid_users_pct
    FROM current_sub_plan
    WHERE current_subscription_plan <> 'Free'
        GROUP BY age_group
        ORDER BY paid_users DESC
)
SELECT age_group,
    paid_users, paid_users_pct,
    ROUND((paid_users * 100.0) / SUM(paid_users) OVER (), 2) AS pct_contribution
FROM finding_paid_users;

-- THE END --