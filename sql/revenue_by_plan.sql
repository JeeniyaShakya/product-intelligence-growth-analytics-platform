SELECT
plan,
COUNT(*) subscribers,
SUM(price_usd) total_revenue,
AVG(price_usd) avg_revenue
FROM `learnloop_analytics.subscriptions`
GROUP BY plan;
