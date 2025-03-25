-- How do inactivity patterns correlate with total watch time or average watch time?
-- Are less engaged users more likely to become inactive?

-- Jotstar

-- Correlation between Average Watch Time vs. Inactive Users
WITH answering_sixth_question AS (
    SELECT su.user_id, cc.total_watch_time_mins,
        age_group, city_tier, subscription_plan, last_active_date, new_subscription_plan,
        CASE
            WHEN last_active_date IS NULL
                THEN 'Active' ELSE 'Inactive'
        END AS user_status,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
                THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM jotstar_db.subscribers su
    JOIN jotstar_db.content_consumption cc
        ON su.user_id = cc.user_id
),
finding_inactive_users_pct AS (
SELECT user_status, current_subscription_plan,
    SUM(total_watch_time_mins) / 60 AS total_watch_time_hrs,
    AVG(total_watch_time_mins) / 60 AS avg_total_watch_time_hrs,
    COUNT(DISTINCT user_id) AS inactive_users
FROM answering_sixth_question
    GROUP BY user_status, current_subscription_plan
),
finding_pct_contribution AS (
    SELECT *,
        ROUND(inactive_users * 100 / SUM(inactive_users) OVER (), 2) AS inactive_users_pct
    FROM finding_inactive_users_pct
    ORDER BY user_status, inactive_users_pct DESC
    LIMIT 3 OFFSET 3
)
SELECT *,
    ROUND(inactive_users * 100 / SUM(inactive_users) OVER (), 2) AS pct_contribution
FROM finding_pct_contribution;

-- Liocinema

-- Correlation between Average Watch Time vs. Inactive Users
WITH answering_sixth_question AS (
    SELECT su.user_id, cc.total_watch_time_mins,
        age_group, city_tier, subscription_plan, last_active_date, new_subscription_plan,
        CASE
            WHEN last_active_date IS NULL
                THEN 'Active' ELSE 'Inactive'
        END AS user_status,
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
                THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan
    FROM liocinema_db.subscribers su
    JOIN liocinema_db.content_consumption cc
        ON su.user_id = cc.user_id
),
finding_inactive_users_pct AS (
SELECT user_status, current_subscription_plan,
    SUM(total_watch_time_mins) / 60 AS total_watch_time_hrs,
    AVG(total_watch_time_mins) / 60 AS avg_total_watch_time_hrs,
    COUNT(DISTINCT user_id) AS inactive_users
FROM answering_sixth_question
    GROUP BY user_status, current_subscription_plan
),
finding_pct_contribution AS (
    SELECT *,
        ROUND(inactive_users * 100 / SUM(inactive_users) OVER (), 2) AS inactive_users_pct
    FROM finding_inactive_users_pct
    ORDER BY user_status, inactive_users_pct DESC
    LIMIT 3 OFFSET 3
)
SELECT *,
    ROUND(inactive_users * 100 / SUM(inactive_users) OVER (), 2) AS pct_contribution
FROM finding_pct_contribution;

-- THE END --