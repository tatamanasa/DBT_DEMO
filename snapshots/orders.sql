{% snapshot orders_snapshot %}
{{
    config(
      
      target_schema='PUBLIC',
      unique_key='ID',

      strategy='timestamp',
      updated_at='UPDATED_AT',
    )
}}

select * from {{ ref( 'dbt_demo') }}

{% endsnapshot %}