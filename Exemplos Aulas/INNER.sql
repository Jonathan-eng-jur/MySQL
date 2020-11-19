CREATE DATABASE joins;
use joins;

#tabela endereços
CREATE TABLE endereco_clientes (
	cliente_id1 INT NOT NULL,
	cliente_endereco TEXT,
	PRIMARY KEY (cliente_id1)
);

#tabela cliente
CREATE TABLE clientes (
	cliente_id0 int primary key auto_increment,
	nome varchar(100)
);


select*from endereco_clientes;

select*from clientes;

insert into clientes values
		(1, "João Marcio"),	
        (2, "Juliana"),	
        (3, "João Marcio"),
        (4, "Gabriela"),    
        (6, "Fabio"),    
        (7, "Juliana"); 
        
INSERT INTO endereco_clientes VALUES
	(1, 'Rua Faria lima, Centro, São Paulo'),
    (2, 'Rua Osvaldo Cruz,Campinas, São Paulo'),
    (3, 'Rua Rosana, Sinara, Nova Esperança'),
    (4, 'Av. Bias Fortes, Centro, Brasília'),
    (5, 'Beatles, Santa Cruz, Rio de Janeiro'),
    (6, 'Av. Esquerda, Vila Pinheiro, New York');
    
    
select*from clientes # SELECIONA TODOS OS DADOS DA TABELA CLIENTES
inner join endereco_clientes #
	on clientes.cliente_id0 = endereco_clientes.cliente_id1; #retorna somente os ID's que são iguais excluindo os que não coincidem como os números 5 e 7

select*from clientes # SELECIONA TODOS OS DADOS DA TABELA CLIENTES
inner join endereco_clientes #PARTICIPANDO DA TABELA endereco_clientes
	on clientes.cliente_id0 = endereco_clientes.cliente_id1;

SELECT * FROM clientes 
	right JOIN endereco_clientes 
		ON clientes.cliente_id0 = endereco_clientes.cliente_id1 
			where clientes.cliente_id0 is null;


select*from endereco_clientes 
right join clientes
	on clientes.cliente_id0 = endereco_clientes.cliente_id1
		where clientes.cliente_id0 = endereco_clientes.cliente_id1 is null; #seleciona somente os que estão faltando
    
select*from clientes 
left join endereco_clientes
	on clientes.cliente_id0 = endereco_clientes.cliente_id1; # MOSTRA TODOS DO CLIENTE, POIS É A PRIORIDADE NESTE CASO
    
CREATE TABLE clientes_copia SELECT*FROM clientes;
CREATE TABLE endereco_clientes_copia SELECT*FROM endereco_clientes;

CREATE TABLE inner_copia select*from clientes
	inner join endereco_clientes
    			on clientes.cliente_id0 = endereco_clientes.cliente_id1;
                
select*from inner_copia;

from tb_funcionario
            inner join tb_cargo on 
				tb_cargo.ID_cargo = tb_funcionario.ID_cargo
					where tb_funcionario.salario like "5000.00%"
	

