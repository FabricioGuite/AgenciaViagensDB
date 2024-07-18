CREATE DATABASE IF NOT EXISTS agencia_viagens;

USE agencia_viagens;

CREATE TABLE cliente (
  cpf char(11) NOT NULL,
  Nome varchar(50) NOT NULL,
  email varchar(30) NOT NULL,
  PRIMARY KEY (cpf)
  );
  
  CREATE TABLE funcionario (
  cpf char(11) NOT NULL,
  nome varchar(50) NOT NULL,
  email varchar(30) NOT NULL,
  PRIMARY KEY (cpf)
  );
  
  CREATE TABLE guia (
  cpf char(11) NOT NULL,
  Nome varchar(50) NOT NULL,
  email varchar(30) NOT NULL,
  PRIMARY KEY (cpf)
);

CREATE TABLE hoteis (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(50) NOT NULL,
  localizacao varchar(50) NOT NULL,
  preco float NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE pagamento (
  id int NOT NULL AUTO_INCREMENT,
  valor float NOT NULL,
  funcionario_cpf char(11) NOT NULL,
  dia date NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (funcionario_cpf) REFERENCES funcionario (cpf)
);

CREATE TABLE passagens (
  id int NOT NULL AUTO_INCREMENT,
  transporte varchar(20) NOT NULL,
  preco float NOT NULL,
  data date NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE turismo (
  id int NOT NULL AUTO_INCREMENT,
  preco float NOT NULL,
  ponto_turistico varchar(20) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE turismo_guia (
  guia_cpf char(11) NOT NULL,
  turismo_id int NOT NULL,
  data date NOT NULL,
  PRIMARY KEY (guia_cpf,turismo_id),  
  FOREIGN KEY (guia_cpf) REFERENCES guia(cpf),
  FOREIGN KEY (turismo_id) REFERENCES turismo(id)
);

CREATE TABLE avaliação (
  nota int NOT NULL,
  cliente_cpf char(11) NOT NULL,
  pacotes_id int NOT NULL,
  FOREIGN KEY (cliente_cpf) REFERENCES cliente(cpf),
  FOREIGN KEY (pacotes_id) REFERENCES pacotes(id)
);

CREATE TABLE cliente_funcionario (
  cliente_cpf char(11) NOT NULL,
  funcionario_cpf char(11) NOT NULL,
  dia date NOT NULL,
  PRIMARY KEY (cliente_cpf,funcionario_cpf),
  FOREIGN KEY (cliente_cpf) REFERENCES cliente(cpf),
  FOREIGN KEY (funcionario_cpf) REFERENCES funcionario (cpf)
);

CREATE TABLE cliente_pacotes(
  cliente_cpf char(11) NOT NULL,
  pacotes_id int NOT NULL,
  PRIMARY KEY (cliente_cpf,pacotes_id),
  FOREIGN KEY (cliente_cpf) REFERENCES cliente (cpf),
  FOREIGN KEY (pacotes_id) REFERENCES pacotes(id)
);

CREATE TABLE pacotes (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(50) NOT NULL,
  localização varchar(50) NOT NULL,
  preco float NOT NULL,
  hoteis_id int NOT NULL,
  passagens_id int NOT NULL,
  turismo_id int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (hoteis_id) REFERENCES hoteis (id),
  FOREIGN KEY (passagens_id) REFERENCES passagens(id),
  FOREIGN KEY (turismo_id) REFERENCES turismo(id)
);  
  