SELECT
    BRAND AS "orders.brand",
    COUNTRY AS "orders.country",
        (TO_CHAR(DATE_TRUNC('week', DELIVERY_DATE), 'YYYY-MM-DD')) AS "orders.delivery_week",
    DISHBAGS AS "orders.dishbags",
    PRODUCT_TYPE AS "orders.product_type",
    COUNT(*) AS "orders.count_all_orders"
FROM
    OL.ORDERS AS orders
WHERE ORDER_STATE = 'complete'
GROUP BY
    (DATE_TRUNC('week', DELIVERY_DATE)),
    1,
    2,
    4,
    5
ORDER BY
    3 DESC
