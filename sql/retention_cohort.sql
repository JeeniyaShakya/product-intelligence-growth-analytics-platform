WITH user_cohorts AS (
SELECT
user_id,
DATE_TRUNC(MIN(DATE(event_timestamp)), MONTH) AS cohort_month
FROM `learnloop_analytics.events`
GROUP BY user_id
),

user_activity AS (
SELECT
e.user_id,
DATE_TRUNC(DATE(event_timestamp), MONTH) activity_month
FROM `learnloop_analytics.events` e
),

cohort_data AS (
SELECT
uc.cohort_month,
ua.activity_month,
DATE_DIFF(
ua.activity_month,
uc.cohort_month,
MONTH
) AS month_number,
COUNT(DISTINCT ua.user_id) users
FROM user_cohorts uc
JOIN user_activity ua
ON uc.user_id=ua.user_id
GROUP BY 1,2,3
)

SELECT *
FROM cohort_data
ORDER BY cohort_month,month_number;
