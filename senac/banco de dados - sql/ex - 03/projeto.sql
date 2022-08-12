CREATE DATABASE presentolandia;

use presentolandia;

CREATE TABLE clientes(
    id_cli INT PRIMARY KEY AUTO_INCREMENT,
    cpf_cli VARCHAR(14) NOT NULL,
    nome_cli VARCHAR(20) NOT NULL,
    sobrenome_cli VARCHAR(50) NOT NULL,
    datNasci_cli DATE NOT NULL,
    naturi_cli VARCHAR(50) NOT NULL,
    end_cli VARCHAR(100) NOT NULL,
    telef_cli VARCHAR(20) NOT NULL,
    email_cli VARCHAR(100) NOT NULL,
    whatsapp_cli VARCHAR(18) DEFAULT NULL
);
CREATE TABLE registros(
    matri_reg INT PRIMARY KEY AUTO_INCREMENT,
    nome_reg VARCHAR(50) NOT NULL,
    desc_reg TEXT NOT NULL,
    data_reg DATE NOT NULL,
    valor_reg FLOAT NOT NULL,
    email_reg VARCHAR(100) NOT NULL,
    senha_reg VARCHAR(50) NOT NULL,
    telef_reg VARCHAR(14) DEFAULT NULL
);
CREATE TABLE funcionarios(
    matri_func INT PRIMARY KEY AUTO_INCREMENT,
    nome_func VARCHAR(20),
    sobrenome_func VARCHAR(50),
    cpf_func VARCHAR(14) NOT NULL,
    dtNasci_func DATE NOT NULL,
    telef_func VARCHAR(15) NOT NULL,
    sexo_func VARCHAR(1) CHECK(sexo_func IN ('M', 'F')),
    funcao_func VARCHAR(50) NOT NULL,
    turno_func VARCHAR(50) NOT NULL,
    salario_func FLOAT NOT NULL
);
CREATE TABLE fornecedores(
    matri_forn INT PRIMARY KEY AUTO_INCREMENT,
    cgc_forn VARCHAR(50) NOT NULL,
    nome_forn VARCHAR(20) NOT NULL,
    sobrenome_forn VARCHAR(50) NOT NULL,
    dtNasci_forn DATE NOT NULL,
    end_forn VARCHAR(100) NOT NULL,
    telef_forn VARCHAR(15) NOT NULL,
    email_forn VARCHAR(100) NOT NULL,
    qtd_forn NUMERIC NOT NULL,
    preco_forn FLOAT NOT NULL
);
CREATE TABLE colaboradores(
    id_colb INT PRIMARY KEY AUTO_INCREMENT,
    cpf_colb VARCHAR(20) NOT NULL,
    funcao_colb VARCHAR(50) NOT NULL,
    dtEmissao_colb DATE NOT NULL,
    salario_colb FLOAT NOT NULL,
    hrTrabalho_colb DATETIME NOT NULL,
    telef_colb VARCHAR(15) NOT NULL,
    email_colb VARCHAR(100) NOT NULL,
    end_colb VARCHAR(100) NOT NULL,
    dtNasci_colb DATE NOT NULL
);
CREATE TABLE valores_receber(
    id_beneficio INT PRIMARY KEY AUTO_INCREMENT,
    data_recb DATE NOT NULL,
    notaFiscal VARCHAR(50) NOT NULL,
    recb_produto NUMERIC DEFAULT NULL,
    custo_recb FLOAT NOT NULL,
    custoTemp FLOAT NOT NULL,
    servicoes TEXT NOT NULL
);
CREATE TABLE valores_pagar(
    id_pag INT PRIMARY KEY AUTO_INCREMENT,
    data_pag DATE NOT NULL,
    custoF_pag FLOAT NOT NULL,
    custoV_pag FLOAT NOT NULL,
    custoT_pag FLOAT NOT NULL
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


