{% snapshot orders %}

{{
    config(
      target_database='PROD',
      target_schema='PUBLIC',
      unique_key='ID',    
      strategy='timestamp',
      updated_at='UPDATED_AT',
    )
}}

select * from {{ref('ordes_mod')};

{% endsnapshot %}