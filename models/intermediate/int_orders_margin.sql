SELECT orders_id,
date_date,
ROUND(SUM(revenue),2) AS evenue,
SUM(quantity) AS quantity,
ROUND(SUM(purchase_cost),2) AS purchase_cost,
ROUND(SUM(margin),2) AS margin
FROM {{ ref('nt_sales_margin')}}
GROUP BY orders_id, date_date
ORDER BY date_date DESC, orders_id DESC