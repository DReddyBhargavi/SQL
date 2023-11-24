-- Calculate average session duration by campaign
SELECT
    trafficSource.campaign AS campaign,
    AVG(totals.timeOnSite) AS avg_session_duration
FROM
    `bigquery-public-data.google_analytics_sample.ga_sessions_20170801`
GROUP BY
    campaign
ORDER BY
    avg_session_duration DESC;
