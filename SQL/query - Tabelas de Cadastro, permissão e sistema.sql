select * from UCA.cafsusu0 where usuario='admin'
--select * from UCA.cafsatu1 --N�O USADA


SELECT * FROM cafssis0 --COD SISTEMAS
select * from UCA.cafsobj0 --ADICIONA, MODIFICA, EXCLUI
select * from UCA.cafsper0 --RELACIONAMENTO USUARIO A TELA
select * from UCA.cafssis0  --LOCAL DE INSTALA��O
select * from UCA.cafstel0 where nom_tela='Mov. de Incuba��o' --TELA DE MOVIMENTO
select * from UCA.CAFSUON1 --TELA DE SISTEMA
select * from UCA.cafsusu0 -- CADASTRO DE USU�RIOS


/*QUAIS O SISTEMA QUE O ADMIN ACESSA*/

/* Mov. de Incuba��o */
select DISTINCT 
	A.USUARIO, 
	B.cod_sistema, 
	B.nom_sistema,
	convert(varchar, D.cod_tela) + ' - ' + convert(varchar, D.nom_tela) 'tela'
FROM UCA.cafsper0 A
	INNER JOIN cafssis0 B ON A.cod_sistema = B.cod_sistema
	INNER JOIN UCA.cafsper0 C ON A.usuario = C.usuario and A.cod_sistema = C.cod_sistema
	INNER JOIN UCA.cafstel0 D ON D.cod_tela = C.cod_tela and D.cod_sistema = c.cod_sistema
WHERE 
B.cod_sistema LIKE 'CI%'
	A.USUARIO='ADMIN' AND
	D.nom_tela='Mov. de Incuba��o'


	select * from cafsobj0
where cod_tela = 1
and cod_sistema = 'fc2'

--////////////////////////////////////////////////////////////////////////////////////////////--

/*O PROCESSO DE CADASTRO E PERMISS�ES NO SISTEMA S�O DIVIDIDOS EM:
	1 - SISTEMA   - SELECT * FROM cafssis0
	2 - TELA      - SELECT * FROM UCA.cafstel0 where cod_sistema='CI2' and nom_tela like '%ovoscopia%' and cod_tela=98
	3 - OBJETO    - SELECT * FROM uca.cafsobj0 where cod_sistema='CI2' and cod_tela=33
	4 - PERMISS�O - SELECT * FROM uca.cafsper0 where cod_sistema='CI2' and cod_tela=33
*/

/*COPIAR PERMISS�O DE TELA DE USU�RIO PARA USU�RIO*/

select max(cod_tela) from UCA.cafsper0 where  cod_sistema='CI2' --and cod_tela=33
select * from UCA.cafsper0 where  cod_sistema='CI2'

SELECT * FROM cafstel0 WHERE nom_tela like '%classifica��o%' and cod_sistema='IA2'
SELECT * FROM cafssis0 --COD SISTEMAS

/*CADASTRO COD_TELA(TAG) NAS TABELAS DE DE TELAS, OBJETO E PERMISS�O */

--Verificar qual � o ultimo c�d de tela para inserir na tag do component da unit e gerar o insert - 98
select * from UCA.cafstel0 WHERE cod_sistema='CI2' and cod_tela=98
	INSERT INTO uca.cafstel0 (cod_tela, cod_sistema, nom_tela)
	VALUES (1033, 'CI2', 'Relat -> 10.1 - Relat�rio de Ovoscopia')
	GO

--Adicionar o Objeto copiando de um que j� est� criado
select * from uca.cafsobj0 WHERE cod_sistema='CI2'and cod_tela=98
	--INSERT INTO uca.cafsobj0 (cod_objeto, cod_tela, cod_sistema, nom_objeto)
	--VALUES (6, 98, 'CI2', 'Visualizar Relat�rio')
	--GO

--Adicionar permiss�o aos usu�rios que ainda n�o tenham
SELECT usuario, 6 cod_objeto, 98 cod_tela, cod_sistema from UCA.cafsper0 where cod_sistema='CI2' and cod_tela=98 AND cod_objeto=1
	--INSERT INTO uca.cafsper0 (usuario, cod_objeto, cod_tela, cod_sistema)
	--VALUES ('Admin', 6, 98, 'CI2')
	--GO



