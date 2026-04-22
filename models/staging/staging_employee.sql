select
    employee_id,
    employee_name,
    department,
    load_date
from {{ source('bronze', 'employee_part') }}