CREATE DATABASE db_PJ;

CREATE TABLE tb_pj (
	id_pj integer primary key,
	poderes varchar(30),
	id_tribEst integer,
	CONSTRAINT fk_tribEst FOREIGN KEY (id_tribEst) REFERENCES tb_tribEst (id_tribEst)
);

INSERT INTO tb_pj values
	(1, " Supremo Tribunal Federal ", 1),
	(2, " Conselho Nacional de Justiça ", 1),
	(3, " Superior Tribunal de Justiça", 1),
	(4, " Justiça Federal ", 1),
	(5, " Justiça do Trabalho ", 1),
	(6, "- Justiça Eleitoral ", 1),
	(7, " Justiça Militar da União ", 1),
	(8, " Justiça dos Estados e do Distrito Federal e Territórios ",1),
	(9, " Justiça Militar Estadual ", 1);

CREATE TABLE tb_tribEst (
	id_tribEst integer primary key, 
	tribunais varchar (50),
	id_comarcas integer,
	CONSTRAINT fk_comarcas FOREIGN KEY (id_comarcas) REFERENCES tb_comarcas (id_comarcas)
);

INSERT INTO tb_tribEst values
	(1, " Supremo Tribunal Federal ", 1),
	(2, " Conselho Nacional de Justiça ", 1),
	(3, " Superior Tribunal de Justiça", 1),
	(4, " Justiça Federal ", 1),
	(5, " Justiça do Trabalho ", 1),
	(6, "- Justiça Eleitoral ", 1),
	(7, " Justiça Militar da União ", 1),
	(8, " Justiça dos Estados e do Distrito Federal e Territórios ",1),
	(9, " Justiça Militar Estadual ", 1);

CREATE TABLE tb_comarcas (
	id_comarcas integer primary key, 
	foruns varchar (50),
	id_foruns integer,
	CONSTRAINT fk_foruns FOREIGN KEY (id_foruns) REFERENCES tb_foruns_sp (id_foruns)
);

INSERT INTO tb_comarcas values
	(1, " Tribunal de Justiça do Acre ", 1),
	(2, " Tribunal de Justiça de Alagoas ", 1),
	(3, " Tribunal de Justiça do Amapá ", 1),
	(4, " Tribunal de Justiça do Amazonas ", 1),
	(5, " Tribunal de Justiça da Bahia ", 1),
	(6, " Tribunal de Justiça do Ceará ", 1),
	(7, " Tribunal de Justiça do Distrito Federal e Territórios ", 1),
	(8, " Tribunal de Justiça do Espírito Santo ",1),
	(26, " Tribunal de Justiça de São Paulo ", 1);

CREATE TABLE tb_foruns_sp (
	id_foruns integer primary key, 
	foruns varchar (50),
	id_varas_sp integer,
	CONSTRAINT fk_varas_sp FOREIGN KEY (id_varas_sp) REFERENCES tb_varas_sp (id_varas_sp)
);

INSERT INTO tb_foruns_sp values
	(1, " FORO CENTRAL – JOÃO MENDES JR.", 1),
	(2, " FORO REGIONAL I – SANTANA ", 1),
	(3, " FORO REGIONAL II - SANTO AMARO ", 1),
	(4, "FORO REGIONAL III – JABAQUARA ", 1),
	(5, " FORO REGIONAL IV – LAPA", 1),
	(6, " FORO REGIONAL VI - PENHA DE FRANÇA ", 1),
	(7, " FORO REGIONAL VII – ITAQUERA ", 1),
	(8, " FORO REGIONAL VIII – TATUAPÉ ",1),
	(9, " FORO REGIONAL IX - VILA PRUDENTE", 1),
	(10, " FORO REGIONAL X – IPIRANGA ", 1),
	(11, " FORO REGIONAL XI – PINHEIROS ", 1),
	(12, " FORO REGIONAL XII – NOSSA SENHORA DO Ó ", 1);

CREATE TABLE tb_varas_sp (
	id_varas_sp integer primary key, 
	foruns varchar (50)
);

INSERT INTO tb_varas_sp values
	(1, "1ª VARA DO FORO REGIONAL XII – NOSSA SENHORA DO Ó"),
	(2, " 2ª VARA DO FORO REGIONAL XII – NOSSA SENHORA DO Ó"),
	(3, " 3ª VARA DO FORO REGIONAL XII – NOSSA SENHORA DO Ó");
