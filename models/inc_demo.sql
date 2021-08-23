{{
    config(
        target_schema='DBT_TATAMANASA',
        materialized='incremental',
        unquie_key='PRODUCT_ID'
    )
}}
select * from {{ ref('orders_mod1')}}