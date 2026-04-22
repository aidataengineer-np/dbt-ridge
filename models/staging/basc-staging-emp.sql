{{ config(materialized='view') }}
{{ log("materialized=" ~ model.config.materialized, info=True) }}

select
    cast(employee_id as bigint) as employee_id,
    trim(employee_name) as employee_name,
    upper(trim(department)) as department,
    cast(load_date as date) as load_date
from dev_catalog.bronze.employee_part