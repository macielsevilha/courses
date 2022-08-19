CREATE DATABASE farmacia;
use farmacia;

CREATE TABLE clientes(
  cpf_cli INT PRIMARY KEY NOT NULL UNIQUE,
  nome_cli VARCHAR(50) NOT NULL,
  nasci_cli DATE NOT NULL UNIQUE,
  telefone_cli INT(12) NOT NULL,
  email_clie VARCHAR(50) NOT NULL,
  endereco_cli VARCHAR(20) NOT NULL UNIQUE,
  genero_cli CHAR(1) CHECK(genero_cli in ('M', 'F')),
  estado_civil_cli VARCHAR(10) NOT NULL,
  juridico_cli VARCHAR(10) NOT NULL,
  whatsapp_cli VARCHAR(12) NOT NULL
  );
CREATE TABLE funcionarios(
  id_funci INT AUTO_INCREMENT PRIMARY KEY,
  nome_funci VARCHAR(50) NOT NULL,
  funcao_funci VARCHAR(20) NOT NULL,
  idade_funci INT(3) NOT NULL,
  turno_funci VARCHAR(10) NOT NULL
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
CREATE TABLE remedios(
  id_remd INT AUTO_INCREMENT PRIMARY KEY,
  nome_remd VARCHAR(60) NOT NULL,
  preco_remd DOUBLE NOT NULL,
  dt_validade DATE NOT NULL,
  bula_remd TEXT NOT NULL,
  codigo_barra INT(13) NOT NULL,
  peso_remd VARCHAR(10) NOT NULL
);
CREATE TABLE produtos(
  id_prod INT AUTO_INCREMENT PRIMARY KEY,
  desc_prod TEXT NOT NULL,
  undd_prod INT NOT NULL,
  preco_prod FLOAT NOT NULL,
  codigo_bar_prod INT NOT NULL
);
CREATE TABLE vendas(
  id_venda INT AUTO_INCREMENT PRIMARY KEY,
  qtd_venda INT NOT NULL,
  CF_venda FLOAT NOT NULL,
  CV_venda FLOAT NOT NULL,
  CT_venda FLOAT NOT NULL,
  CFME_venda DOUBLE NOT NULL,
  CVME_venda DOUBLE NOT NULL,
  CME_venda DOUBLE NOT NULL,
  CMZ_venda DOUBLE NOT NULL
);
CREATE TABLE valores_pagar(
  id_pag INT AUTO_INCREMENT PRIMARY KEY,
  valor_pag FLOAT NOT NULL,
  nome_pag VARCHAR(100) NOT NULL
);
CREATE TABLE valores_receber(
  id_rec INT AUTO_INCREMENT PRIMARY KEY,
  valor_rec DOUBLE NOT NULL,
  nome_rec VARCHAR(100) NOT NULL
  );
  
  ALTER TABLE funcionarios RENAME TO colaboradores;
  ALTER TABLE clientes ADD naturi_cli VARCHAR(50) NOT NULL;
  ALTER TABLE remedios RENAME TO medicamentos;
  ALTER TABLE clientes MODIFY nome_cli VARCHAR(100);
  DROP TABLE medicamentos;
  
  SHOW TABLES;
  DESCRIBE vendas;
  
  ALTER TABLE valores_pagar ADD anoVecimento DATE NOT NULL after id_pag;
  ALTER TABLE produtos ADD promocional VARCHAR(100) FIRST;
