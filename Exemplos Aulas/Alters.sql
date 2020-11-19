RENAME TABLE funcionarios TO colaboradores;
#renomear a tabela

ALTER TABLE colaboradores add column cpf int first;
ALTER TABLE colaboradores add column email varchar(30);
ALTER TABLE colaboradores add column sobrenome varchar(30) after nome;
#adicionar colunas 
alter table colaboradores modify column nome varchar(20);
#modifica a especificação da coluna
alter table colaboradores drop column sobrenome;
# apagar colunas
select*from colaboradores;
describe colaboradores;
#decrição da tabela

