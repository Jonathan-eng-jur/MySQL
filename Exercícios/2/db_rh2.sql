/*Crie um banco de dados para um serviço de RH de uma empresa, o nome do banco deverá ter o seguinte nome db_RH2, 
onde o sistema trabalhará com as informações dos funcionários desta empresa. 
O sistema trabalhará com 2 tabelas tb_funcionário e tb_cargo.
siga  exatamente esse passo a passo:
Crie uma tabela tb_cargo utilizando a habilidade de abstração e determine 3 atributos relevantes do Cargos para se trabalhar com o serviço deste RH.
Crie uma tabela tb_funcionário  e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar 
com o serviço deste RH (não esqueça de criar a foreign key de tb_cargo nesta tabela).
Popule esta tabela cargos com até 5 dados.
Popule esta tabela funcionarios com até 15 dados.*/
#C RIAÇÃO DA TABELA
 CREATE DATABASE db_rh2;

#CRIAÇÃO DA TABELA FUNCIONÁRIOS
CREATE TABLE tb_funcionario (
ID_matricula integer primary key ,
nome VARCHAR(40) NOT NULL,
ano_nascimento DATE,
sexo enum ("M","F", "X"),
telefone VARCHAR(15),
salario decimal (7,2),
ID_cargo integer,
CONSTRAINT fk_funcarg FOREIGN KEY (ID_cargo) REFERENCES tb_cargo (ID_cargo)
);

#CRIAÇÃO DA TABELA CARGO
CREATE TABLE tb_cargo (
ID_cargo integer primary key,
especificacao varchar (150),
area varchar(15),
sede enum ("Matriz", "Filial")
);

#INSERINDO VALORES NA TABELA CARGO
INSERT INTO tb_cargo values
(1, "Diretor", "Corporativo", "Matriz"),
(2, "Gerente", "Corporativo", "Matriz"),
(3, "Coordenador", "Corporativo", "Matriz"),
(4, "Analista", "Tecnologia", "Filial"),
(5, "Estagiário", "Tecnologia", "Filial");

#INSERINDO VALORES NA TABELA FUNCIONÁRIO
insert into tb_funcionario values
	(1, "Amanda Rodrigues", "2000-05-05","F", "11992378833", 50000.00, 1),
    (2, "Abner Souza", "2000-05-05","M", "11992378840", 50000.00, 1),
    (3, "Carla Rodgues", "2000-05-05","F", "11982378833", 25000.00, 2),
    (4, "Cristiano Ronaldo", "2000-05-05","M", "11992378833", 25000.00, 2),
    (5, "Didier Drogba", "2000-05-05","M", "11992378890", 5000.00, 3),
    (6, "Estefano Alfredo", "2000-05-05","M", "11912378833", 5000.00, 3),
    (7, "Farfan Armin", "2000-05-05", "M", "11992878833", 5000.00, 3),
    (8, "Julio Batista", "2000-05-05","M", "11993378833", 5000.00, 3),
    (9, "Jordan Maike", "2000-05-05","M", "11992778833", 1000.00, 4),
    (10, "Lebron James", "2000-05-05","M", "11996378833", 1000.00, 4),
    (11, "Lucas Silva", "2000-05-05","M", "11992368833", 1000.00, 4),
    (12, "Marta Antunes", "2000-05-05","F", "11992578833", 1000.00, 4),
    (13, "Nilza Santos", "2000-05-05","F" , "21952378833", 1500.00, 5),
    (14, "Raimunda Mafalda", "2000-05-05","F", "21962378833", 1500.00, 5),
    (15, "Zaine Almeida", "2000-05-05","F", "21952378833", 1500.00, 5);
    
    #VERIFICANDO AS DUAS TABELAS COM A CONEXÃO DA CHAVE ESTRANGEIRA
		select *from tb_cargo
			inner join tb_funcionario
				where tb_cargo.id_cargo = tb_funcionario.id_cargo;
     
     select*from tb_funcionario;  
      
	#selecionou apenas as colunas que eu quero quando há algo em comum nas tabelas
    select tb_funcionario.nome, tb_funcionario.ano_nascimento, tb_funcionario.sexo, tb_funcionario.telefone, tb_funcionario.salario, tb_cargo.especificacao, tb_cargo.area, tb_cargo.sede
			from tb_funcionario
            inner join tb_cargo on 
				tb_cargo.ID_cargo = tb_funcionario.ID_cargo;
                
	 CREATE TABLE selecao_tb select tb_funcionario.nome, tb_funcionario.ano_nascimento, tb_funcionario.sexo, tb_funcionario.telefone, tb_funcionario.salario, tb_cargo.especificacao, tb_cargo.area, tb_cargo.sede
			from tb_funcionario
            inner join tb_cargo on 
				tb_cargo.ID_cargo = tb_funcionario.ID_cargo
					where tb_funcionario.salario like "5000.00%"; # buscou somente os salarios com 5000.00 e criou uma nova tabela 
                    
	select*from selecao_tb; #tabela criada acima
                    
                    
	select tb_funcionario.nome, tb_funcionario.ano_nascimento, tb_funcionario.sexo, tb_funcionario.telefone, tb_funcionario.salario, tb_cargo.especificacao, tb_cargo.area, tb_cargo.sede
			from tb_funcionario
            inner join tb_cargo on 
				tb_cargo.ID_cargo = tb_funcionario.ID_cargo
					where tb_funcionario.salario like "5000.00%"
						and tb_funcionario.nome like "D%"; #seleciona salario por 5000.00 e com a letra D.   AND = "&&" 
                        
		
        
                        
	
                    
	
                
	
                
	
                
	
    