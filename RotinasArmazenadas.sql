# PROCEDURES

DELIMITER $$
CREATE PROCEDURE InsertEmCliente()
BEGIN

INSERT INTO cliente(cpf, Nome. email) VALUES("85296374101","Vinicius Guidotti","guidotti@gmail.com");

END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE VerificarPacotesCaros()
BEGIN

SELECT * FROM pacotes WHERE preco >= 500;

END $$
DELIMITER ;

CALL InsertEmCliente();
CALL VerificarPacotesCaros();

DROP PROCEDURE InsertEmCliente;
DROP PROCEDURE VerificarPacotesCaros;

# FUNCTIONS

DELIMITER $$
CREATE FUNCTION Desconto20(identificador int)
RETURNS FLOAT deterministic
BEGIN
    DECLARE valor FLOAT;
    set valor := (SELECT preco - preco * 0.20 FROM pacotes WHERE id = identificador);
    RETURN valor;
END $$

DELIMITER $$
CREATE FUNCTION ClientesAtendidos(identificador char(11))
RETURNS INT deterministic
BEGIN
    DECLARE clientes INT;
    set clientes := (SELECT count(cliente_cpf) from cliente_funcionario where funcionario_cpf = identificador);
    RETURN clientes;
END $$

SELECT Desconto20(3);
SELECT ClientesAtendidos('56987412365');

DROP FUNCTION Desconto20;
DROP FUNCTION ClientesAtendidos;

# TRIGGERS

DELIMITER $$
CREATE TRIGGER VincularGuia
AFTER INSERT ON guia
FOR EACH ROW 
BEGIN
INSERT INTO pagamento(valor,funcionario_cpf,dia) values (100,new.cpf,now());
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER VincularFuncionario
AFTER INSERT ON funcionario
FOR EACH ROW 
BEGIN
INSERT INTO pagamento(valor,funcionario_cpf,dia) values (100,new.cpf,now());
END $$
DELIMITER ;

drop trigger VincularGuia;
drop trigger VincularFuncionario;


