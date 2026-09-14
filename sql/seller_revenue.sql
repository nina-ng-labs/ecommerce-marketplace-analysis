SELECT
    oi.seller_id,
    SUM(oi.price) AS seller_gmv
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY oi.seller_id
ORDER BY seller_gmv DESC;
