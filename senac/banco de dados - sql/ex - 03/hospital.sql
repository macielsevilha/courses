CREATE DATABASE hospital;
USE hospital;

CREATE TABLE pacientes(
   cpf_pac INT PRIMARY KEY UNIQUE,
   rg_pac INT(13) NOT NULL UNIQUE,
   nome_pac VARCHAR(45) NOT NULL,
   nasci_pac DATE NOT NULL UNIQUE,
   genero_pac ENUM('M','F') NOT NULL,
   cidade_pac VARCHAR(70) NOT NULL,
   bairro_pac VARCHAR(20) NOT NULL,
   end_pac VARCHAR(50) NOT NULL,
   telefone_pac INT(12) NOT NULL,
   email_pac VARCHAR(40) DEFAULT NULL
);
CREATE TABLE medicos(
   id_med INT PRIMARY KEY AUTO_INCREMENT,
   nome_med VARCHAR(20) NOT NULL,
   idade_med VARCHAR(3) NOT NULL,
   end_med VARCHAR(20) NOT NULL,
   funcao_med VARCHAR(20) NOT NULL,
   horario_med ENUM('matutino', 'vespertino', 'noturno') NOT NULL,
   salario_med DOUBLE NOT NULL,
   presenca_med numeric NOT NULL,
   ausencia_med numeric NOT NULL,
   telefone_med INT(12) NOT NULL
);
CREATE TABLE empregados(
  id_emp INT PRIMARY KEY AUTO_INCREMENT,
  cpf_emp INT(14) NOT NULL UNIQUE,
  nome_emp VARCHAR(20) NOT NULL,
  nasci_emp DATE NOT NULL,
  end_emp VARCHAR(35) NOT NULL,
  telefone_emp INT(12) NOT NULL,
  funcao_emp VARCHAR(20) NOT NULL,
  horario_emp ENUM('matutino', 'vespertino', 'noturno') NOT NULL,
  salario_emp DOUBLE NOT NULL,
  presenca_emp numeric NOT NULL,
  ausencia_emp numeric NOT NULL
);
CREATE TABLE fornecedores(
  id_forn INT AUTO_INCREMENT PRIMARY KEY,
  cgc_forn VARCHAR(50) NOT NULL,
  nome_forn VARCHAR(50) NOT NULL,
  end_forn VARCHAR(30) NOT NULL,
  telef_forn INT(12) NOT NULL,
  email_forn VARCHAR(100) NOT NULL,
  genero_forn CHAR(1) CHECK(genero_forn in ('M','F'))
);
CREATE TABLE exames(
  id_exa INT PRIMARY KEY AUTO_INCREMENT,
  nome_exa VARCHAR(20) NOT NULL,
  data_exa DATE NOT NULL UNIQUE,
  empresa_exa VARCHAR(50) NOT NULL,
  indicacao_exa VARCHAR(20) DEFAULT NULL,
  data_nasci DATE NOT NULL UNIQUE,
  sexo CHAR(1) CHECK(sexo IN ('M','F')),
  numero_cont_exa INT(10) NOT NULL,
  codigo_exa VARCHAR(13) NOT NULL,
  telefone_exa INT(12) NOT NULL,
  titulo_exa TEXT NOT NULL,
  desc_exa TEXT NOT NULL
);
CREATE TABLE consultas(
  id_cons INT PRIMARY KEY AUTO_INCREMENT,
  data_cons DATE NOT NULL,
  hora_cons DATETIME NOT NULL,
  desc_cons TEXT NOT NULL
);
CREATE TABLE contas_pagar(
  id_pag INT AUTO_INCREMENT PRIMARY KEY,
  valor_total_pag FLOAT NOT NULL,
  nome_pag VARCHAR(100) NOT NULL,
  funcionarios_pag DOUBLE NOT NULL,
  medicos_pag DOUBLE NOT NULL,
  energia_pag DOUBLE NOT NULL,
  agua_pag FLOAT NOT NULL,
  recursos_pag FLOAT DEFAULT NULL,
  valor_pag FLOAT NOT NULL,
  data_pag DATE NOT NULL
);

ALTER TABLE exames ADD DataEntrega DATE AFTER desc_exa;
ALTER TABLE empregados RENAME TO funcionarios;
ALTER TABLE pacientes ADD naturilidade VARCHAR(100) NOT NULL AFTER genero_pac;

DESCRIBE fornecedores;
ALTER TABLE pacientes ADD beneficios VARCHAR(100) NOT NULL;
DROP TABLE exames;

DROP DATABASE hospital;
CREATE DATABASE hospital;

