{{config(
    partition_by={
        'field':'transaction_created_date',
        'date_type':'date'
    }
)}}

with source as (
    select
        id as inventory_id,
        transaction_type,
        date(transaction_created_date) as transaction_created_date,
        transaction_modified_date,
        product_id,
        quantity,
        purchase_order_id,
        customer_order_id,
        comments,
        current_timestamp() as insertion_timestamp
    from {{ref('stg_inventory_transactions')}}
),
unique_source as (
    select *,
           row_number() over(partition by inventory_id order by inventory_id) as row_num
    from source
)
select *
from unique_source
where row_num = 1