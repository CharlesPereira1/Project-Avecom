select * from UCA.cafsusu0 where usuario='admin'
--select * from UCA.cafsatu1 --NÃO USADA
select * from UCA.cafsobj0 --ADICIONA, MODIFICA, EXCLUI
select * from UCA.cafsper0 --RELACIONAMENTO USUARIO A TELA
select * from UCA.cafssis0  --LOCAL DE INSTALAÇÃO
select * from UCA.cafstel0 where nom_tela='Mov. de IncubaþÒo' --TELA DE MOVIMENTO
select * from UCA.CAFSUON1 --TELA DE SISTEMA
select * from UCA.cafsusu0 -- CADASTRO DE USUÁRIOS


/*QUAIS O SISTEMA QUE O ADMIN ACESSA*/

/* Mov. de IncubaþÒo */
select DISTINCT 
	A.USUARIO, 
	B.cod_sistema, 
	B.nom_sistema,
	convert(varchar, D.cod_tela) + ' - ' + convert(varchar, D.nom_tela) 'tela'
FROM UCA.cafsper0 A
	INNER JOIN UCA.cafssis0 B ON A.cod_sistema = B.cod_sistema
	INNER JOIN UCA.cafsper0 C ON A.usuario = C.usuario and A.cod_sistema = C.cod_sistema
	INNER JOIN UCA.cafstel0 D ON D.cod_tela = C.cod_tela and D.cod_sistema = c.cod_sistema
WHERE 
	A.USUARIO='ADMIN' AND
	D.nom_tela='Mov. de IncubaþÒo'