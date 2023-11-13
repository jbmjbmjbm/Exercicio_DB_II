Procedure oriunda da tabela venda diaria do Banco de Dados Empresa.

delimiter //
create procedure produtos()
begin
	select produto from vendas where data_venda_diaria = data_venda;
end //
delimiter;