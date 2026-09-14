SELECT
    DATE_TRUNC('month', o.order_purchase_timestamp) AS month,
    SUM(oi.price) AS gmv,
    COUNT(DISTINCT o.order_id) AS orders,
    SUM(oi.price) / COUNT(DISTINCT o.order_id) AS aov
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY DATE_TRUNC('month', o.order_purchase_timestamp)
ORDER BY month;
