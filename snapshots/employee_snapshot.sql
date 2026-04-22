{% snapshot employee_snapshot %}

{{
    config(
        unique_key='employee_id',
        strategy='timestamp',
        updated_at='load_date'
    )
}}

select *
from {{ ref('staging_employee') }}

{% endsnapshot %}