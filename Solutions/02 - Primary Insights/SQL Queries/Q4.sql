-- What percentage of LioCinema and Jotstar users are active vs. inactive?
-- How do these rates vary by age group and subscription plan?

-- Jotstar

-- Active Users: 37,968 users
-- Active Users %: 85.09%
WITH user_status AS (
    SELECT *,
        CASE
            WHEN last_active_date IS NULL
                THEN 'Active' ELSE 'Inactive'
        END AS user_status
    FROM jotstar_db.subscribers
)
SELECT COUNT(DISTINCT user_id) AS active_users,
    ROUND(
        COUNT(DISTINCT user_id) * 100.0 /
        (SELECT COUNT(DISTINCT user_id) FROM jotstar_db.subscribers), 2
    ) AS active_users_pct
FROM user_status
WHERE user_status = 'Active';

-- Inactive Users: 6652 users
-- Inactive Users %: 14.91%
WITH user_status AS (
    SELECT *,
        CASE
            WHEN last_active_date IS NULL
                THEN 'Active' ELSE 'Inactive'
        END AS user_status
    FROM jotstar_db.subscribers
)
SELECT COUNT(DISTINCT user_id) AS inactive_users,
    ROUND(
        COUNT(DISTINCT user_id) * 100.0 /
        (SELECT COUNT(DISTINCT user_id) FROM jotstar_db.subscribers), 2
    ) AS inactive_users_pct
FROM user_status
WHERE user_status = 'Inactive';

-- Active Users % by Age Group
WITH user_status AS (
    SELECT *,
        CASE
            WHEN last_active_date IS NULL
            THEN 'Active' ELSE 'Inactive'
        END AS user_status
    FROM jotstar_db.subscribers
),
finding_active_users AS (
    SELECT age_group,
        COUNT(DISTINCT user_id) AS active_users
    FROM user_status
    WHERE user_status = 'Active'
        GROUP BY age_group
        ORDER BY active_users DESC
)
SELECT age_group, active_users,
    ROUND((active_users * 100.0) / SUM(active_users) OVER (), 2) AS pct_contribution
FROM finding_active_users;

-- Active Users % by Subscription Plan
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan,
        CASE
            WHEN last_active_date IS NULL
            THEN 'Active' ELSE 'Inactive'
        END AS user_status
    FROM jotstar_db.subscribers
),
finding_active_users AS (
    SELECT current_subscription_plan,
        COUNT(DISTINCT user_id) AS active_users
    FROM current_sub_plan
    WHERE user_status = 'Active'
        GROUP BY current_subscription_plan
        ORDER BY active_users DESC
)
SELECT current_subscription_plan, active_users,
    ROUND((active_users * 100.0) / SUM(active_users) OVER (), 2) AS pct_contribution
FROM finding_active_users;

-- Inactive Users % by Age Group
WITH user_status AS (
    SELECT *,
        CASE
            WHEN last_active_date IS NULL
            THEN 'Active' ELSE 'Inactive'
        END AS user_status
    FROM jotstar_db.subscribers
),
finding_inactive_users AS (
    SELECT age_group,
        COUNT(DISTINCT user_id) AS inactive_users
    FROM user_status
    WHERE user_status = 'Inactive'
        GROUP BY age_group
        ORDER BY inactive_users DESC
)
SELECT age_group, inactive_users,
    ROUND((inactive_users * 100.0) / SUM(inactive_users) OVER (), 2) AS pct_contribution
FROM finding_inactive_users;

-- Inactive Users % by Subscription Plan
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan,
        CASE
            WHEN last_active_date IS NULL
            THEN 'Active' ELSE 'Inactive'
        END AS user_status
    FROM jotstar_db.subscribers
),
finding_inactive_users AS (
    SELECT current_subscription_plan,
        COUNT(DISTINCT user_id) AS inactive_users
    FROM current_sub_plan
    WHERE user_status = 'Inactive'
        GROUP BY current_subscription_plan
        ORDER BY inactive_users DESC
)
SELECT current_subscription_plan, inactive_users,
    ROUND((inactive_users * 100.0) / SUM(inactive_users) OVER (), 2) AS pct_contribution
FROM finding_inactive_users;

-- Liocinema

-- Active Users: 101,141
-- Active Users %: 55.13%
WITH user_status AS (
    SELECT *,
        CASE
            WHEN last_active_date IS NULL
                THEN 'Active' ELSE 'Inactive'
        END AS user_status
    FROM liocinema_db.subscribers
)
SELECT COUNT(DISTINCT user_id) AS active_users,
    ROUND(
        COUNT(DISTINCT user_id) * 100.0 /
        (SELECT COUNT(DISTINCT user_id) FROM liocinema_db.subscribers), 2
    ) AS active_users_pct
FROM user_status
WHERE user_status = 'Active';

-- Inactive Users: 82,305
-- Inactive Users %: 44.87%
WITH user_status AS (
    SELECT *,
        CASE
            WHEN last_active_date IS NULL
                THEN 'Active' ELSE 'Inactive'
        END AS user_status
    FROM liocinema_db.subscribers
)
SELECT COUNT(DISTINCT user_id) AS inactive_users,
    ROUND(
        COUNT(DISTINCT user_id) * 100.0 /
        (SELECT COUNT(DISTINCT user_id) FROM liocinema_db.subscribers), 2
    ) AS inactive_users_pct
FROM user_status
WHERE user_status = 'Inactive';

-- Active Users % by Age Group
WITH user_status AS (
    SELECT *,
        CASE
            WHEN last_active_date IS NULL
            THEN 'Active' ELSE 'Inactive'
        END AS user_status
    FROM liocinema_db.subscribers
),
finding_active_users AS (
    SELECT age_group,
        COUNT(DISTINCT user_id) AS active_users
    FROM user_status
    WHERE user_status = 'Active'
        GROUP BY age_group
        ORDER BY active_users DESC
)
SELECT age_group, active_users,
    ROUND((active_users * 100.0) / SUM(active_users) OVER (), 2) AS pct_contribution
FROM finding_active_users;

-- Active Users % by Subscription Plan
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan,
        CASE
            WHEN last_active_date IS NULL
            THEN 'Active' ELSE 'Inactive'
        END AS user_status
    FROM liocinema_db.subscribers
),
finding_active_users AS (
    SELECT current_subscription_plan,
        COUNT(DISTINCT user_id) AS active_users
    FROM current_sub_plan
    WHERE user_status = 'Active'
        GROUP BY current_subscription_plan
        ORDER BY active_users DESC
)
SELECT current_subscription_plan, active_users,
    ROUND((active_users * 100.0) / SUM(active_users) OVER (), 2) AS pct_contribution
FROM finding_active_users;

-- Inactive Users % by Age Group
WITH user_status AS (
    SELECT *,
        CASE
            WHEN last_active_date IS NULL
            THEN 'Active' ELSE 'Inactive'
        END AS user_status
    FROM liocinema_db.subscribers
),
finding_inactive_users AS (
    SELECT age_group,
        COUNT(DISTINCT user_id) AS inactive_users
    FROM user_status
    WHERE user_status = 'Inactive'
        GROUP BY age_group
        ORDER BY inactive_users DESC
)
SELECT age_group, inactive_users,
    ROUND((inactive_users * 100.0) / SUM(inactive_users) OVER (), 2) AS pct_contribution
FROM finding_inactive_users;

-- Inactive Users % by Subscription Plan
WITH current_sub_plan AS (
    SELECT *,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan,
        CASE
            WHEN last_active_date IS NULL
            THEN 'Active' ELSE 'Inactive'
        END AS user_status
    FROM liocinema_db.subscribers
),
finding_inactive_users AS (
    SELECT current_subscription_plan,
        COUNT(DISTINCT user_id) AS inactive_users
    FROM current_sub_plan
    WHERE user_status = 'Inactive'
        GROUP BY current_subscription_plan
        ORDER BY inactive_users DESC
)
SELECT current_subscription_plan, inactive_users,
    ROUND((inactive_users * 100.0) / SUM(inactive_users) OVER (), 2) AS pct_contribution
FROM finding_inactive_users;

-- THE END --