CREATE DATABASE Ford;
DROP DATABASE Ford;
SHOW DATABASES;
#USADO PARA MOSTRAR TODOS OS BANCOS DE DADOS

USE aula1;

CREATE TABLE funcionarios2 (
	nome varchar(30),
    idade tinyint,
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20)
);
#decimal substitui o float -  mas ocupa mais HD
insert into funcionarios2 values ("Juliana", 22,"f", 60, 1.65, "Brasileira"); 
insert into funcionarios2 (nome, sexo) values ("Marcio", "m");

#POST
insert into funcionarios2 values
	("Juliana", 22,"f", 60, 1.65, "Brasileira"),
    ("Gabriel", 23,"m", 65, 1.65, "Brasileiro"),
    ("Julian", 24,"m", 70, 1.60, "Brasileiro");
    
    UPDATE funcionarios2 set nacionalidade = "Argentino" where  nome = "Gabriel";
	#atualize a tabela funcionario com a nacionalidade Argentino
    UPDATE funcionarios2 set peso = 90  where  nome = "Julian";

show tables;
describe funcionarios2;
#get
select * from funcionarios2;

select nome, nacionalidade from funcionarios2;


#describe funcionarios2; - mostra a estrutura da tabela
#select * from funcionarios2; mostra dados tudo da tabelas escolhida
#show tables; todas tabelas
#delimitei o nome, posso incluir somente o nome
#sem especificar tenho que preencher tudo