create table amazing2 (
id int not null auto_increment,
nome varchar (30) not null,
nascimento date,
sexo enum ("F", "M"),
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar (20) default ("Brasileiro"),
primary key (id)
);

#default - estipular um valor, caso não preenchido
insert into amazing values
("Pedro", "2000-05-09", "M", 70.5, 1.70, "Brasileiro"),
("Sampaio", "1993-05-09", "M", 100.5, 1.90, "Brasileiro");

insert into amazing2 values
(default, "Ped", "2000-05-09", "F", 90.5, 1.50, "Brasil"),
(default, "Sam", "1993-05-09", "F", 110.5, 1.60, "Brasilian");
 
 alter table amazing2  ;
 
select*from amazing2; 
