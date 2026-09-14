WITH customer_orders AS (
    SELECT
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS order_count
    FROM orders o
    JOIN customers c
        ON o.customer_id = c.customer_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_unique_id
)

SELECT
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (WHERE order_count > 1) AS repeat_customers,
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE order_count > 1)
        / NULLIF(COUNT(*), 0),
        2
    ) AS repeat_customer_rate_pct
FROM customer_orders;
