-- What is the average watch time for LioCinema vs. Jotstar during the analysis period?
-- How do these compare by city tier and device type?

-- Jotstar

-- Average Watch Time (Hrs)
SELECT
    (AVG(total_watch_time_mins) / 60) AS avg_watch_time
FROM jotstar_db.content_consumption;

-- Average Watch Time (Mins)
SELECT
    AVG(total_watch_time_mins) AS avg_watch_time
FROM jotstar_db.content_consumption;

-- Average Watch Time (Hrs) by Device Type
SELECT device_type,
    (AVG(total_watch_time_mins) / 60) AS avg_watch_time
FROM jotstar_db.content_consumption
GROUP BY device_type;

-- Average Watch Time (Hrs) by City Tier
SELECT city_tier,
    (AVG(total_watch_time_mins) / 60) AS avg_watch_time
FROM jotstar_db.content_consumption cc
    JOIN jotstar_db.subscribers su
        ON su.user_id = cc.user_id
GROUP BY city_tier;

-- Liocinema

-- Average Watch Time (Hrs)
SELECT
    (AVG(total_watch_time_mins) / 60) AS avg_watch_time
FROM liocinema_db.content_consumption;

-- Average Watch Time (Mins)
SELECT
    AVG(total_watch_time_mins) AS avg_watch_time
FROM liocinema_db.content_consumption;

-- Average Watch Time (Hrs) by Device Type
SELECT device_type,
    (AVG(total_watch_time_mins) / 60) AS avg_watch_time
FROM liocinema_db.content_consumption
GROUP BY device_type
ORDER BY avg_watch_time DESC;

-- Average Watch Time (Hrs) by City Tier
SELECT city_tier,
    (AVG(total_watch_time_mins) / 60) AS avg_watch_time
FROM liocinema_db.content_consumption cc
    JOIN liocinema_db.subscribers su
        ON su.user_id = cc.user_id
GROUP BY city_tier
ORDER BY avg_watch_time DESC;

-- THE END --