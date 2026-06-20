SELECT
c.course_name,
COUNT(*) enrollments
FROM `learnloop_analytics.events` e
JOIN `learnloop_analytics.courses` c
ON e.course_id=c.course_id
WHERE event_name='course_enrolled'
GROUP BY c.course_name
ORDER BY enrollments DESC
LIMIT 10;
