{% snapshot orders_snapshot %}
{{
    config(
      
      target_schema='DBT_TATAMANASA',
      unique_key='ID',

      strategy='check',
      check_cols=['STATUS']
    )
}}

select * from {{ ref('orders_mod1')}}

{% endsnapshot %}