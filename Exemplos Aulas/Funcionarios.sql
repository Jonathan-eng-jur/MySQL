CREATE TABLE funcionarios (
	nome varchar(30),
    idade tinyint,
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20)

);

insert into funcionarios values ("Juliana", 22, "f", 1.65, "Brasileira"); #sem especificar tenho que preencher tudo
insert into funcionarios (nome, sexo) values ("Marcio", "m"); #delimitei o nome, posso incluir somente o nome