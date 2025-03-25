-- The total number of users for LioCinema and Jotstar, and
-- How do they compare in terms of growth trends (January–November 2024)?

-- Jotstar: 44,620 users
SELECT
    COUNT(DISTINCT user_id)
FROM jotstar_db.subscribers;

-- Monthly Trends
WITH monthly_users AS (
    SELECT
        MONTH(subscription_date) AS month,
        MONTHNAME(subscription_date) AS month_name,
        COUNT(DISTINCT user_id) AS total_users
    FROM jotstar_db.subscribers
        GROUP BY month, month_name
)
SELECT month, month_name, total_users,
    LAG(total_users) OVER (ORDER BY month) AS previous_month,
    ((total_users - LAG(total_users) OVER (ORDER BY month)) /
        LAG(total_users) OVER (ORDER BY month) * 100) AS monthly_user_growth
FROM monthly_users
    ORDER BY month;

-- Liocinema: 183,446 users
SELECT
    COUNT(DISTINCT user_id)
FROM liocinema_db.subscribers;

-- Monthly Trends
WITH monthly_users AS (
    SELECT
        MONTH(subscription_date) AS month,
        MONTHNAME(subscription_date) AS month_name,
        COUNT(DISTINCT user_id) AS total_users
    FROM liocinema_db.subscribers
    GROUP BY month, month_name
)
SELECT
    month,
    month_name,
    total_users,
    LAG(total_users) OVER (ORDER BY month) AS previous_month_users,
    ((total_users - LAG(total_users) OVER (ORDER BY month)) /
        LAG(total_users) OVER (ORDER BY month) * 100) AS monthly_user_growth
FROM monthly_users
ORDER BY month;

-- THE END --