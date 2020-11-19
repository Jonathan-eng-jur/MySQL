DELETE FROM matriculados
WHERE id_curso = '2';

SELECT*FROM matriculados;

#DELETA VÁRIOS DA ESPECIFICAÇÃO, neste caso a linha toda que conter carga 40
DELETE FROM matriculados 
WHERE carga= '40';

SELECT*FROM matriculados;

#COMANDO DO MAL - apaga todos os dados, mas a tabela(DDL), permanece.
#TRUNCATE TABLE matriculados;