-- How do downgrade trends differ between LioCinema and Jotstar?
-- Are downgrades more prevalent on one platform compared to the other?

-- Jotstar

-- Downgraded Users: 5195 users
-- Downgraded Users %: 11.64%
SELECT COUNT(DISTINCT user_id) AS downgraded_users,
    ROUND(
        COUNT(DISTINCT user_id) * 100.0 /
        (SELECT COUNT(DISTINCT user_id) FROM jotstar_db.subscribers), 2
    ) AS downgraded_users_pct
FROM jotstar_db.subscribers
WHERE plan_change_date IS NOT NULL
AND (
    (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Free') OR
    (subscription_plan = 'VIP' AND COALESCE(new_subscription_plan, '') = 'Free') OR
    (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'VIP')
);

-- Downgraded Users % by Month
WITH finding_downgraded_users AS (
    SELECT MONTH(subscription_date) AS month,
        MONTHNAME(subscription_date) AS month_name,
        COUNT(DISTINCT user_id) AS downgraded_users,
        ROUND(
            COUNT(DISTINCT user_id) * 100.0 /
            (SELECT COUNT(DISTINCT user_id) FROM jotstar_db.subscribers), 2
        ) AS downgraded_users_pct
    FROM jotstar_db.subscribers
    WHERE plan_change_date IS NOT NULL
    AND (
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'VIP' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'VIP')
    )
        GROUP BY month, month_name
        ORDER BY month
)
SELECT month, month_name,
    downgraded_users, downgraded_users_pct,
    ((downgraded_users - LAG(downgraded_users) OVER (ORDER BY month)) /
        LAG(downgraded_users) OVER (ORDER BY month) * 100) AS monthly_user_growth,
    ROUND((downgraded_users * 100.0) / SUM(downgraded_users) OVER (), 2) AS pct_contribution
FROM finding_downgraded_users;

-- Downgraded Users % by Age Group
WITH finding_downgraded_users AS (
    SELECT age_group,
        COUNT(DISTINCT user_id) AS downgraded_users,
        ROUND(
            COUNT(DISTINCT user_id) * 100.0 /
            (SELECT COUNT(DISTINCT user_id) FROM jotstar_db.subscribers), 2
        ) AS downgraded_users_pct
    FROM jotstar_db.subscribers
    WHERE plan_change_date IS NOT NULL
    AND (
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'VIP' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'VIP')
    )
        GROUP BY age_group
        ORDER BY downgraded_users DESC
)
SELECT age_group,
    downgraded_users, downgraded_users_pct,
    ROUND((downgraded_users * 100.0) / SUM(downgraded_users) OVER (), 2) AS pct_contribution
FROM finding_downgraded_users;

-- Downgraded Users % by City Tier
WITH finding_downgraded_users AS (
    SELECT city_tier,
        COUNT(DISTINCT user_id) AS downgraded_users,
        ROUND(
            COUNT(DISTINCT user_id) * 100.0 /
            (SELECT COUNT(DISTINCT user_id) FROM jotstar_db.subscribers), 2
        ) AS downgraded_users_pct
    FROM jotstar_db.subscribers
    WHERE plan_change_date IS NOT NULL
    AND (
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'VIP' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'VIP')
    )
        GROUP BY city_tier
        ORDER BY downgraded_users DESC
)
SELECT city_tier,
    downgraded_users, downgraded_users_pct,
    ROUND((downgraded_users * 100.0) / SUM(downgraded_users) OVER (), 2) AS pct_contribution
FROM finding_downgraded_users;

-- Downgraded Users % by Subscription Plan
WITH finding_downgraded_users AS (
    SELECT
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan,
        COUNT(DISTINCT user_id) AS downgraded_users,
        ROUND(
            COUNT(DISTINCT user_id) * 100.0 /
            (SELECT COUNT(DISTINCT user_id) FROM jotstar_db.subscribers), 2
        ) AS downgraded_users_pct
    FROM jotstar_db.subscribers
    WHERE plan_change_date IS NOT NULL
    AND (
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'VIP' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'VIP')
    )
        GROUP BY current_subscription_plan
        ORDER BY downgraded_users DESC
)
SELECT current_subscription_plan,
    downgraded_users, downgraded_users_pct,
    ROUND((downgraded_users * 100.0) / SUM(downgraded_users) OVER (), 2) AS pct_contribution
FROM finding_downgraded_users;

-- Liocinema

-- Downgraded Users: 20859 users
-- Downgraded Users %: 11.37%
SELECT COUNT(DISTINCT user_id) AS downgraded_users,
    ROUND(
        COUNT(DISTINCT user_id) * 100.0 /
        (SELECT COUNT(DISTINCT user_id) FROM liocinema_db.subscribers), 2
    ) AS downgraded_users_pct
FROM liocinema_db.subscribers
WHERE plan_change_date IS NOT NULL
AND (
    (subscription_plan = 'Basic' AND COALESCE(new_subscription_plan, '') = 'Free') OR
    (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Free') OR
    (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Basic')
);

-- Downgraded Users % by Month
WITH finding_downgraded_users AS (
    SELECT MONTH(subscription_date) AS month,
        MONTHNAME(subscription_date) AS month_name,
        COUNT(DISTINCT user_id) AS downgraded_users,
        ROUND(
            COUNT(DISTINCT user_id) * 100.0 /
            (SELECT COUNT(DISTINCT user_id) FROM liocinema_db.subscribers), 2
        ) AS downgraded_users_pct
    FROM liocinema_db.subscribers
    WHERE plan_change_date IS NOT NULL
    AND (
        (subscription_plan = 'Basic' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Basic')
    )
        GROUP BY month, month_name
        ORDER BY month
)
SELECT month, month_name,
    downgraded_users, downgraded_users_pct,
    ((downgraded_users - LAG(downgraded_users) OVER (ORDER BY month)) /
        LAG(downgraded_users) OVER (ORDER BY month) * 100) AS monthly_user_growth,
    ROUND((downgraded_users * 100.0) / SUM(downgraded_users) OVER (), 2) AS pct_contribution
FROM finding_downgraded_users;

-- Downgraded Users % by Age Group
WITH finding_downgraded_users AS (
    SELECT age_group,
        COUNT(DISTINCT user_id) AS downgraded_users,
        ROUND(
            COUNT(DISTINCT user_id) * 100.0 /
            (SELECT COUNT(DISTINCT user_id) FROM liocinema_db.subscribers), 2
        ) AS downgraded_users_pct
    FROM liocinema_db.subscribers
    WHERE plan_change_date IS NOT NULL
    AND (
        (subscription_plan = 'Basic' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Basic')
    )
        GROUP BY age_group
        ORDER BY downgraded_users DESC
)
SELECT age_group,
    downgraded_users, downgraded_users_pct,
    ROUND((downgraded_users * 100.0) / SUM(downgraded_users) OVER (), 2) AS pct_contribution
FROM finding_downgraded_users;

-- Downgraded Users % by City Tier
WITH finding_downgraded_users AS (
    SELECT city_tier,
        COUNT(DISTINCT user_id) AS downgraded_users,
        ROUND(
            COUNT(DISTINCT user_id) * 100.0 /
            (SELECT COUNT(DISTINCT user_id) FROM liocinema_db.subscribers), 2
        ) AS downgraded_users_pct
    FROM liocinema_db.subscribers
    WHERE plan_change_date IS NOT NULL
    AND (
        (subscription_plan = 'Basic' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Basic')
    )
        GROUP BY city_tier
        ORDER BY downgraded_users DESC
)
SELECT city_tier,
    downgraded_users, downgraded_users_pct,
    ROUND((downgraded_users * 100.0) / SUM(downgraded_users) OVER (), 2) AS pct_contribution
FROM finding_downgraded_users;

-- Downgraded Users % by Subscription Plan
WITH finding_downgraded_users AS (
    SELECT
        CASE
            WHEN new_subscription_plan = '' OR new_subscription_plan IS NULL
            THEN subscription_plan ELSE new_subscription_plan
        END AS current_subscription_plan,
        COUNT(DISTINCT user_id) AS downgraded_users,
        ROUND(
            COUNT(DISTINCT user_id) * 100.0 /
            (SELECT COUNT(DISTINCT user_id) FROM liocinema_db.subscribers), 2
        ) AS downgraded_users_pct
    FROM liocinema_db.subscribers
    WHERE plan_change_date IS NOT NULL
    AND (
        (subscription_plan = 'Basic' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Free') OR
        (subscription_plan = 'Premium' AND COALESCE(new_subscription_plan, '') = 'Basic')
    )
        GROUP BY current_subscription_plan
        ORDER BY downgraded_users DESC
)
SELECT current_subscription_plan,
    downgraded_users, downgraded_users_pct,
    ROUND((downgraded_users * 100.0) / SUM(downgraded_users) OVER (), 2) AS pct_contribution
FROM finding_downgraded_users;

-- THE END --