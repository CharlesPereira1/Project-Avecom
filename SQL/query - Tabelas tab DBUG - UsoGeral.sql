/*
SELECT * FROM UUG.ugfsavs0 --CADASTRO EMPRESA AVECOM
SELECT * FROM UUG.ugfsbeb1 --CADASTRO DE BEBEDOURO
SELECT * FROM UUG.ugfsbox1 --CADASTRO DE BOX EM GRANJA
SELECT * FROM UUG.ugfsccc1 --Tela de Cadastro de Centro de Custos
SELECT * FROM UUG.ugfsccr1 --Tela de Cadastro de Centro de Custos Rateado
SELECT * FROM UUG.ugfscec1 --Tela de Cadastro de Esta��o do ano
SELECT * FROM UUG.ugfscfu1 --Tela de Cadastro de Fun��o de Funcion�rio
SELECT * FROM UUG.UGFSCID1 --Tela de Cadastro de Municipio

SELECT * FROM UUG.ugfscob1 --Tela de Cadastro de cobertura do box
SELECT * FROM UUG.ugfscom1 --Tela de Cadastro de Comedouros
SELECT * FROM UUG.ugfscpa1 --Tela de Cadastro de Parceiros na Cria��o do Lote
SELECT * FROM UUG.ugfscre1 --Tela de Cadastro de Funcion�rio Responsavel e Vinculo de fun��o
SELECT * FROM UUG.UGFSCRI1 --Tela de Cadastro de Pessoa e vinculo a Granja

SELECT * FROM UUG.ugfscse1 --Tela de Cadastro de Sub-Esta��o do Ano
SELECT * FROM UUG.ugfsctg1 --Tela de Cadastro de Certiificado
SELECT * FROM UUG.ugfsdia1 --Tela de Cadastro de dias da semana
SELECT * FROM UUG.UGFSDTS1 --Tela de Cadastro de calend�rio
SELECT * FROM UUG.ugfsemp0 --Tela de Cadastro de Empresa

SELECT * FROM UUG.ugfsgal1 --Tela de Cadastro de galp�o - Tabela Principal **(Varios relacionamentos)

SELECT * FROM UUG.ugfsgra1 --Tela de Cadastro de Granja
SELECT * FROM UUG.ugfsgru1 --Tela de Cadastro de Grupo (Nucleo)
SELECT * FROM UUG.ugfsloc1 *--Tela de Cadastro de Local
SELECT * FROM UUG.ugfsmes1 --tela de Cadastro de M�s
SELECT * FROM UUG.ugfsnin1 --Tela de Cadastro de Ninhos
SELECT * FROM UUG.ugfstpcc1 --Tela de Cadastro de tipo de centro de custos por galp�o
SELECT * FROM UUG.ugfstpg1 --Tela de Tipo de galp�o
SELECT * FROM UUG.ugfsven1 --Tela de Cadastro de ventila��o

A tabela Box � uma tabela detalhe da tabela Gau
*/


select TABLE_NAME, 
CASE WHEN NUMERIC_PRECISION IS NOT NULL THEN 'AutoIncremento' END 'AUTOINCREMENT', 
COLUMN_NAME, DATA_TYPE+'('+convert(varchar,CHARACTER_MAXIMUM_LENGTH)+')' type,
CASE WHEN IS_NULLABLE = 'YES' THEN 'Livre' else '' end 'livre'

from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='ugfsgal1'

select * from UUG.ugfscfu1
select * from UUG.ugfscre1


select * from UUG.ugfscse1
select * from UUG.ugfsmes1

select * from UUG.ugfscec1




