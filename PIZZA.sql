select * from pizza_sales;

select sum(total_price) as Total_Revenue from pizza_sales;

select (sum(total_price) / count(Distinct order_id)) as Avg_ordervalue from pizza_sales;

select sum(quantity) as Total_PizzaSold from pizza_sales;

select cast(sum(quantity) as DECIMAL(10,2)) / cast(count(distinct order_id) as DECIMAL(10,2)) as Avg_Pizza_per_order from pizza_sales;

select datename(DW, order_date) as order_day ,count(distinct order_id) as total_orders from pizza_sales group by datename(DW, order_date);

select datename(MONTH, order_date) as order_day ,count(distinct order_id) as total_orders from pizza_sales group by datename(MONTH, order_date);

select pizza_size,sum(total_price) as Total_revenue ,sum(total_price) * 100/(select sum(total_price) from pizza_sales)from pizza_sales group by pizza_size order by pizza_size;

SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(order_date) = 1
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC
