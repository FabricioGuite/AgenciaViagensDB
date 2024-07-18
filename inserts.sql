INSERT INTO avaliação(nota, cliente_cpf, pacotes_id) 
VALUES (10,'13154879542',1),(10,'23547854365',2),
(10,'36548512365',3),(10,'45123698741',4);

INSERT INTO cliente(cpf, Nome, email) 
VALUES ('13154879542','carlos alberto','carlosalberto@gmail.com'),
('23547854365','maria vitoria','mariavitoria@gmail.com'),
('36548512365','ricardo gomes','ricardogomes@gmail.com'),
('45123698741','rita gonçalves','ritinha@gmail.com');

INSERT INTO cliente_funcionario (cliente_cpf, funcionario_cpf, dia)
VALUES ('13154879542','56987412365','2022-09-23'),
('23547854365','63254784521','2022-09-23'),
('36548512365','63254784521','2022-09-23'),
('45123698741','85412365478','2022-09-23');

INSERT INTO cliente_pacotes (cliente_cpf, pacotes_id)
VALUES ('13154879542',1),('23547854365',2),
('36548512365',3),('45123698741',4);

INSERT INTO funcionario (cpf, nome, email)
VALUES ('56987412365','julien vinicius','julien@gmail.com'),
('63254784521','fabricio pereira','pereira@gmail.com'),
('78541236547','joao fonseca','joao123@gmail.com'),
('85412365478','caio santos','caio@gmail.com');

INSERT INTO guia (cpf, Nome, email) VALUES 
('12101823420','redrigo nestor','rodrigo@gmail.com'),
('21321232123','douglas costa','douglas@gmail.com'),
('85214741254','claudio meira','claudio@gmail.com'),
('98765432103','rogerio munhoz','munhoz@gmail.com');

INSERT INTO hoteis (nome, localizacao, preco)
VALUES ('sol feliz','rua das laranjeiras 854',110.5),
('ingleses','rua dos loucos 63',125),('boa vista','rua copacabana 365',200),
('maresia','rua azul 98',199.99);

INSERT INTO pacotes(nome, localização, precp, hoteis_id, passagens_id, turismo_id) 
VALUES ('praia e lazer','rio de janeiro',500,3,1,1),
('mar e areia','maranhão',200,1,2,3),
('descanso','curitiba',100,2,3,2),
('urbano','sao paulo',100,4,4,4);

INSERT INTO pagamento(valor, funcionario_cpf, dia) VALUES 
(100,'56987412365','2022-09-30'),(1000,'63254784521','2022-09-30'),
(200,'78541236547','2022-09-30'),(300,'85412365478','2022-09-30');

INSERT INTO passagens (transporte, preco, data)
VALUES ('aviao',100,'2022-09-23'),('barco',65,'2022-09-24'),
('onibus',30.75,'2022-09-25'),('trem',42,'2022-09-26');

INSERT INTO turismo (preco, ponto_turistico)
VALUES (100,'cristo redentor'),(10,'jardim botanico'),
(50,'Lençóis Maranhenses'),(5,'Parque do Ibirapuera');

INSERT INTO turismo_guia (guia_cpf, turismo_cpf,data) VALUES ('12101823420',1,'2022-09-24'),
('21321232123',2,'2022-09-25'),('85214741254',3,'2022-09-26'),
('98765432103',4,'2022-09-27');






