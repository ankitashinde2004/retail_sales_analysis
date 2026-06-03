use retail_sales_db;
select `product category`,sum(`total amount`) as total_revenue
from retail_sales_dataset
group by `product category`
order by total_revenue desc;

select `customer id` ,sum(`total amount`)as total_spend
from retail_sales_dataset
group by `customer id`
order by total_spend desc
limit 10 ;

select date_format(str_to_date(`date`, '%Y-%m-%d'), '%Y-%m') as sales_month,
sum(`total amount`) as monthly_revenue
from retail_sales_dataset
group by sales_month
order by sales_month asc;