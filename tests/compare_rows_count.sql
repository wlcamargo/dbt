WITH SOURCE_ROW_COUNT AS (
    SELECT COUNT(*) AS NUM_ROWS
    FROM  {{source('dbt_dev', 'tb_vendas')}}
),
SILVER_ROW_COUNT AS (
    SELECT COUNT(*) AS NUM_ROWS
    FROM  {{ref('silver_tb_vendas')}}
)

SELECT 
    S.NUM_ROWS as source_num_rows,
    G.NUM_ROWS as silver_num_rows
FROM 
    SOURCE_ROW_COUNT AS S
    CROSS JOIN SILVER_ROW_COUNT G
WHERE
    G.NUM_ROWS != G.NUM_ROWS