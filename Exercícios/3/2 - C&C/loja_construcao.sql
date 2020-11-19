#Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema trabalhará com as informações dos produtos desta empresa. 
create database db_loja_construcao;

#Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.
create table tb_categoria (
id_categoria integer primary key ,
categoria VARCHAR(20),
fornecedor VARCHAR(20),
codigo VARCHAR(20)
);

#Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos 
#tb_produto para se trabalhar com o serviço de uma loja de produtos (não esqueça de criar a foreign key de tb_categoria nesta tabela).
create table tb_produto (
id_produto integer primary key ,
nome VARCHAR(40),
quantidade_estoque int,
descricao VARCHAR(100),
data_compra date,
valor decimal (7,2),
id_categoria integer,
CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria)
);

#Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria values 
	(1, "Jardinagem",  "C&C", "TERRA"),
    (2, "Eletrica", "Tigre", "TROVÃO"),
	(3, "Civil", "Votorantim", "FOGO"),
    (4, "Hidráulica", "Amanco", "ÁGUA");

#Popule esta tabela Produto com até 8 dados.
insert into tb_produto values 
	(1, "Adubo", 25, "Terra preparada para plantio", "2020-05-11", 8.00, 1),
    (2, "Semente", 30, "Sementes de Girasol", "2020-06-11", 5.00, 1),
	(3, "Fios", 40, "Fios de 2 polegadas", "2020-05-11", 4.00, 2),
	(4, "Disjuntor", 50, "Disjuntor de 60W", "2020-01-11", 70.00, 2),
	(5, "Areia", 60, "Pacote com 20kg", "2020-02-11", 15.00, 3),
	(6, "Cimento", 70, "Pacote com 25kg", "2020-07-11", 25.00, 3),
	(7, "Cano", 80, "Cano de 1m de 3 polegadas", "2020-05-11", 10.00, 4),
	(8, "Caixa D´água", 90, "Caixa Oval de 500l", "2020-05-11", 500.00, 4);

#Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select*from tb_produto where valor > 50.00;

#Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select*from tb_produto where valor > 3.00 and valor <60;

#Faça um select  utilizando LIKE buscando os Produtos com as letras CI.
select*from tb_produto where nome like  "CI%";

#Faça um um select com Inner join entre  tabela categoria e produto.
select *from tb_categoria
			inner join tb_produto
				where tb_produto.id_categoria = tb_categoria.id_categoria;

#Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica
select*from tb_categoria
			inner join tb_produto on
				 tb_produto.id_categoria = tb_categoria.id_categoria
					where tb_categoria.id_categoria like 3;