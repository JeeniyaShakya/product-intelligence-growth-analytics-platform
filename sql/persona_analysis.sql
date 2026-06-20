SELECT
u.persona,
COUNT(DISTINCT e.user_id) users,
SUM(e.revenue) revenue
FROM `learnloop_analytics.events` e
JOIN `learnloop_analytics.users` u
ON e.user_id=u.user_id
GROUP BY u.persona;
