-- What is the total number of contents available on LioCinema vs. Jotstar?
-- How do they differ in terms of language and content type?

-- Jotstar: 2360 content items
SELECT
    COUNT(DISTINCT content_id) AS total_content_items
FROM jotstar_db.contents;

-- Total Content Items by Language
WITH content_counts AS (
    SELECT language,
        COUNT(DISTINCT content_id) AS total_content_items
    FROM jotstar_db.contents
        GROUP BY language
)
SELECT language, total_content_items,
    ROUND((total_content_items * 100.0) / SUM(total_content_items) OVER (), 2) AS pct_contribution
FROM content_counts
    ORDER BY total_content_items DESC;

-- Total Content Items by Content Type
WITH content_counts AS (
    SELECT content_type,
        COUNT(DISTINCT content_id) AS total_content_items
    FROM jotstar_db.contents
        GROUP BY content_type
)
SELECT content_type, total_content_items,
    ROUND((total_content_items * 100.0) / SUM(total_content_items) OVER (), 2) AS pct_contribution
FROM content_counts
    ORDER BY total_content_items DESC;

-- Liocinema: 1250 content items
SELECT
    COUNT(DISTINCT content_id) AS total_content_items
FROM liocinema_db.contents;

-- Total Content Items by Language
WITH content_counts AS (
    SELECT language,
        COUNT(DISTINCT content_id) AS total_content_items
    FROM liocinema_db.contents
        GROUP BY language
)
SELECT language, total_content_items,
    ROUND((total_content_items * 100.0) / SUM(total_content_items) OVER (), 2) AS pct_contribution
FROM content_counts
    ORDER BY total_content_items DESC;

-- Total Content Items by Content Type
WITH content_counts AS (
    SELECT content_type,
        COUNT(DISTINCT content_id) AS total_content_items
    FROM liocinema_db.contents
        GROUP BY content_type
)
SELECT content_type, total_content_items,
    ROUND((total_content_items * 100.0) / SUM(total_content_items) OVER (), 2) AS pct_contribution
FROM content_counts
    ORDER BY total_content_items DESC;

-- THE END --