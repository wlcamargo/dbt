WITH SOURCE AS (
    SELECT 
        *,
        CURRENT_TIMESTAMP() AS refinement_date
    FROM
        {{ source('dbt_dev', 'tb_vendas')}}
)

SELECT * FROM SOURCE