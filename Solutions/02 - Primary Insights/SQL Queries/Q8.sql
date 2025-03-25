-- What are the most common upgrade transitions
-- (e.g., Free to Basic, Free to VIP, Free to Premium) for LioCinema and Jotstar?
-- How do these differ across platforms?

-- Jotstar

-- Flow of Users from Old Plan to New Plan
CREATE VIEW transitions_data AS
    WITH finding_upgrade_transitions AS (
        SELECT subscription_plan,
               COALESCE(new_subscription_plan, 'No Change') AS new_subscription_plan,
               COUNT(DISTINCT user_id) AS total_users
        FROM jotstar_db.subscribers
        GROUP BY subscription_plan, new_subscription_plan
    )
    SELECT
        CASE
            WHEN (subscription_plan = 'Premium' AND new_subscription_plan = 'Free') OR
                 (subscription_plan = 'VIP' AND new_subscription_plan = 'Free') OR
                 (subscription_plan = 'Premium' AND new_subscription_plan = 'VIP')
                THEN 'Downgraded Users'
            WHEN (subscription_plan = 'Free' AND new_subscription_plan IN ('VIP', 'Premium')) OR
                 (subscription_plan = 'VIP' AND new_subscription_plan = 'Premium')
                THEN 'Upgraded Users'
            ELSE 'Non-Upgraded Users'
        END AS transition_type,
        subscription_plan, new_subscription_plan,
        total_users,
        ROUND(total_users * 100.0 / SUM(total_users) OVER (), 2) AS pct_contribution
    FROM finding_upgrade_transitions
    ORDER BY transition_type, total_users DESC;

WITH finding_pct_contribution AS (
    SELECT *
    FROM transitions_data
    WHERE transition_type = 'Upgraded Users'
)
SELECT transition_type,
    subscription_plan, new_subscription_plan, total_users,
    ROUND(total_users * 100 / SUM(total_users) OVER(), 2) AS pct_contribution,
    pct_contribution AS pct_from_total_users
FROM finding_pct_contribution;

-- Liocinema

-- Flow of Users from Old Plan to New Plan
CREATE VIEW transitions_data AS
    WITH finding_upgrade_transitions AS (
        SELECT subscription_plan,
               COALESCE(new_subscription_plan, 'No Change') AS new_subscription_plan,
               COUNT(DISTINCT user_id) AS total_users
        FROM liocinema_db.subscribers
        GROUP BY subscription_plan, new_subscription_plan
    )
    SELECT
        CASE
            WHEN (subscription_plan = 'Premium' AND new_subscription_plan = 'Free') OR
                 (subscription_plan = 'Basic' AND new_subscription_plan = 'Free') OR
                 (subscription_plan = 'Premium' AND new_subscription_plan = 'Basic')
                THEN 'Downgraded Users'
            WHEN (subscription_plan = 'Free' AND new_subscription_plan IN ('Basic', 'Premium')) OR
                 (subscription_plan = 'Basic' AND new_subscription_plan = 'Premium')
                THEN 'Upgraded Users'
            ELSE 'Non-Upgraded Users'
        END AS transition_type,
        subscription_plan, new_subscription_plan,
        total_users,
        ROUND(total_users * 100.0 / SUM(total_users) OVER (), 2) AS pct_contribution
    FROM finding_upgrade_transitions
    ORDER BY transition_type, total_users DESC;

WITH finding_pct_contribution AS (
    SELECT *
    FROM transitions_data
    WHERE transition_type = 'Upgraded Users'
)
SELECT transition_type,
    subscription_plan, new_subscription_plan, total_users,
    ROUND(total_users * 100 / SUM(total_users) OVER(), 2) AS pct_contribution,
    pct_contribution AS pct_from_total_users
FROM finding_pct_contribution;

-- THE END --