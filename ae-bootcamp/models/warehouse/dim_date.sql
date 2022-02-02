with cte_my_date as (
    select dateadd(day, seq4(), '2010-01-01') as my_date
      from table(generator(rowcount => 10000))  -- Number of days after reference date in previous line
  )
  select
        cast(to_char(my_date, 'yyyymmdd') as int) as date_id,
        my_date as full_date,
        year(my_date) as year,
        weekofyear(my_date) as year_week,
        dayofyear(my_date) as year_day,
        year(my_date) as fiscal_year,
        quarter(my_date) as fiscal_quarter,
        month(my_date) as month,
        monthname(my_date) as month_name,
        dayname(my_date) as day_name,
        dayofweek(my_date) as week_day,
        (case when dayname(my_date) in ('Sat', 'Sun') then 0 else 1 end) as day_is_weekday
    FROM cte_my_date