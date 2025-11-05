
SELECT 
date_date,
COUNT(orders_id) AS Nb_transactions,
ROUND(SUM(evenue),2) AS revenue,
ROUND(AVG(evenue),2) AS Average_basket,
ROUND(SUM(operationnal_margin),2) AS operationnal_margin,
ROUND(SUM(purchase_cost),2) AS purchase_cost,
ROUND(SUM(shipping_fee),2) AS shipping_fee,
ROUND(SUM(ship_cost)+SUM(logcost),2) AS operationnal_cost,
ROUND(SUM(quantity),2) AS Nb_products
FROM {{ ref('int_orders_operational')}}
GROUP BY date_date
ORDER BY date_date DESC