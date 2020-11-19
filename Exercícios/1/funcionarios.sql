#Crie uma tabela de funcionários e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço deste RH.
Create table funcionarios (
	nome varchar(40) NOT NULL,
    nascimento date,
    sexo enum("M", "F","X"),
    telefone int,
    cargo varchar(20),
    salario decimal(7,2)
    );