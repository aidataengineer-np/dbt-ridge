select *
from {{ ref('employee_snapshot') }}
where dbt_valid_to is null