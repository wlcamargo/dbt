SELECT 
	ValorDesconto 
FROM 
	{{ref('silver_tb_vendas')}}
WHERE 	
	ValorDesconto >= 3000