#Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o seguinte nome db_cidade_das_carnes, onde o sistema trabalhará com as informações dos produtos desta empresa.
create database db_cidade_das_carnes;

#Crie uma tabela de tb_produto e utilizando a habilidade de abstração e 
#determine 5    atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de criar a foreign key de tb_categoria nesta tabela).
create table tb_produto (
id_produto integer primary key ,
nome VARCHAR(40),
quantidade_estoque int,
descricao VARCHAR(100),
vencimento date,
valor decimal (7,2),
id_categoria integer,
CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria)
);

#Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desse açougue.
create table tb_categoria (
id_categoria integer primary key ,
categoria VARCHAR(20),
fornecedor VARCHAR(20),
linha VARCHAR(20)
);


#Popule esta tabela Produto com até 8 dados.
insert into tb_produto values 
	(1, "File de Meluza", 10, "Pescados na Antártica", "2021-05-11", 30.00, 3),
    (2, "File de Tilapia", 10, "Pescados no Rio Solimões", "2021-06-11", 20.00, 3),
	(3, "Contra Filé", 10, "Contra da FRIBOI", "2021-05-11", 35.00, 1),
	(4, "Picanha", 10, "Linha Premium da Swift", "2021-01-11", 70.00, 1),
	(5, "Linguiça", 10, "Linha Premium da Swift", "2021-02-11", 2.00, 2),
	(6, "Costela", 10, "Linha Outback", "2021-07-11", 65.00, 2),
	(7, "File ", 10, "Feito com produtos naturais", "2021-05-11", 10.00, 4),
	(8, "Hamburguer", 10, "Feito com produtos naturais", "2021-05-11", 2.00, 4);
    

#Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria values 
	(1, "Bovinus",  "Generation", "BOV"),
    (2, "Suinos", "Generation", "SUI"),
	(3, "Peixaria", "Generation", "PEIX"),
    (4, "Vegano", "Generation", "VEG");
    
#Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select*from tb_produto where valor > 50.00;

#Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select*from tb_produto where valor > 3.00 and valor <60;

#Faça um select  utilizando LIKE buscando os Produtos com as letras CO.
select*from tb_produto where nome like  "CO%";
                        
#Faça um um select com Inner join entre  tabela categoria e produto.
select *from tb_categoria
			inner join tb_produto
				where tb_produto.id_categoria = tb_categoria.id_categoria;
                
#Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosmético
select*from tb_categoria
			inner join tb_produto on
				 tb_produto.id_categoria = tb_categoria.id_categoria
					where tb_categoria.id_categoria like 1;
                    
                                        


    
   

	



