WITH funnel AS (
SELECT
event_name,
COUNT(DISTINCT user_id) users
FROM `learnloop_analytics.events`
WHERE event_name IN (
'landing_page_view',
'signup_started',
'signup_completed',
'profile_completed',
'course_enrolled',
'lesson_completed',
'subscription_completed'
)
GROUP BY event_name
),

landing_page AS (
SELECT users AS landing_users
FROM funnel
WHERE event_name='landing_page_view'
)

SELECT
f.event_name,
f.users,
ROUND(
100*f.users/l.landing_users,
2
) conversion_rate_pct
FROM funnel f
CROSS JOIN landing_page l
ORDER BY users DESC;
