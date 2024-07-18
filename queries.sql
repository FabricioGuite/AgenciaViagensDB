# No mínimo 5 consultas contendo GROUP BY e funções de agregação.

SELECT MAX(preco) as 'hotel mais caro' FROM hoteis;

SELECT MIN(preco) as 'hotel mais barato' FROM hoteis;

SELECT COUNT(cpf) as 'total de funcionarios' FROM funcionario;

SELECT SUM(valor) as 'total pago' FROM pagamento;

SELECT localização, COUNT(*) as 'pacotes com esse destino' FROM pacotes GROUP BY localização;

# No mímimo 3 consultas contendo ORDER BY

SELECT nome FROM cliente ORDER BY nome ASC;

SELECT nome FROM funcionario ORDER BY nome DESC;

SELECT nome FROM guia ORDER BY nome ASC;

SELECT valor FROM pagamento ORDER BY valor DESC;

SELECT ponto_turistico FROM turismo ORDER BY ponto_turistico ASC;

# No mínimo 5 consultas utilizando JUNÇÃO (INNER JOIN, LEFT JOIN, RIGHT JOIN, etc).

SELECT t.ponto_turistico as 'ponto turisrico', p.nome as 'nome do pacote'
FROM turismo t 
INNER JOIN pacotes p ON t.id = p.turismo_id;

SELECT c.nome as 'nome do cliente', a.nota as 'nota'
FROM cliente c 
INNER JOIN avaliação a ON c.cpf = a.cliente_cpf;

SELECT c.nome as 'cliente atendito', f.nome as 'funcionario que atendeu'
FROM cliente c
INNER JOIN cliente_funcionario cf ON c.cpf = cf.cliente_cpf
INNER JOIN funcionario f ON f.cpf = cf.funcionario_cpf;

SELECT h.nome as 'nome do hotel', p.nome as 'nome do pacote'
FROM hoteis h
LEFT JOIN pacotes p ON h.id = p.hoteis_id;

SELECT pa.transporte as 'transporte', p.nome as 'nome do pacote'
FROM passagens pa
RIGHT JOIN pacotes p ON pa.id = p.passagens_id;

##################################################################################

SELECT * FROM funcionario WHERE nome LIKE 'j%';

SELECT * FROM cliente WHERE nome LIKE '%a';

SELECT * FROM pagamento WHERE valor > 200;

SELECT * FROM hoteis WHERE id IN (1,3);

SELECT cliente_cpf FROM cliente_funcionario WHERE dia BETWEEN "2022-09-01" AND "2022-12-31";