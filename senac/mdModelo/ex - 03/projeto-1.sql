CREATE DATABASE presentolandia;
use presentolandia;

CREATE TABLE clientes(
    id_cli INT PRIMARY KEY AUTO_INCREMENT,
    cpf_cli VARCHAR(14) NOT NULL,
    nome_cli VARCHAR(20) NOT NULL,
    sobrenome_cli VARCHAR(50) NOT NULL,
    dtNasci_cli DATE NOT NULL,
    naturi_cli VARCHAR(50) NOT NULL,
    end_cli VARCHAR(100) NOT NULL,
    telef_cli VARCHAR(20) NOT NULL,
    email_cli VARCHAR(100) NOT NULL,
    whatsapp_cli VARCHAR(18) DEFAULT NULL
);
CREATE TABLE produtos(
    matri_prod INT PRIMARY KEY AUTO_INCREMENT,
    nome_prod VARCHAR(50) NOT NULL,
    preco_prod FLOAT NOT NULL,
    qtd_prod NUMERIC NOT NULL,
    CF_prod FLOAT NOT NULL,
    CV_prod FLOAT NOT NULL,
    CT_prod FLOAT NOT NULL,
    CFME_prod FLOAT NOT NULL,
    CVME_prod FLOAT NOT NULL,
    CME_prod FLOAT NOT NULL,
    CMZ_prod FLOAT NOT NULL
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
    nome_colb VARCHAR(50) NOT NULL,
    funcao_colb VARCHAR(50) NOT NULL,
    dtEmissao_colb DATE NOT NULL,
    salario_colb FLOAT NOT NULL,
    hrTrabalho_colb TIME NOT NULL,
    telef_colb VARCHAR(15) NOT NULL,
    email_colb VARCHAR(100) NOT NULL,
    end_colb VARCHAR(100) NOT NULL,
    dtNasci_colb DATE NOT NULL
);
CREATE TABLE valores_receber(
    id_beneficio INT PRIMARY KEY AUTO_INCREMENT,
    data_recb DATE NOT NULL,
    notaFiscal VARCHAR(50) NOT NULL,
    recb_produto CHAR(2) DEFAULT NULL,
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

DROP TABLE clientes;
DROP TABLE produtos;
DROP TABLE fornecedores;
DROP TABLE funcionarios;
DROP TABLE colaboradores;
DROP TABLE valores_receber;
DROP TABLE valores_pagar;
DROP TABLE vendas;

/* TABELA DE CLIENTES */
INSERT INTO clientes(cpf_cli, nome_cli, sobrenome_cli, dtNasci_cli, naturi_cli, end_cli, telef_cli, email_cli, whatsapp_cli)
  VALUES ('153.236.343-03','Maisa','Silva Oliveira','1999/03/11','Brasileiro','','779994539485', 'maisa153silva@gmail.com','779983747823'),
		 ('123.343.343-23','Maciel','Sevilha Oliveira','1993/12/03','Brasileiro','','779994837234', 'maciel123sevilha@gmail.com','779934564674'),
         ('432.554.234-23','Victor','Santana dos Anjos','1994/03/30','Brasileiro','','779949875673', 'victor432silva@gmail.com','779934567890'),
         ('565.453.867-56','Julia','Silva dos Anjos','2002/08/09','Brasileiro','','779998473648', 'julia565silva@gmail.com','779998765456'),
         ('234.643.234-54','Maicon','Santos Natriz','2004/04/09','Brasileiro','','779949876478', 'maicon234santos@gmail.com','779956765676'),
         ('000.323.454-03','Kelly','Magalhões Anjos','2002/12/23','Brasileiro','','779947890985', 'kelly000magalhoes@gmail.com','779967890909'),
         ('432.543.267-95','Ana','Dourado Diamantino','1999/03/12','Brasileiro','','779936478986', 'ana432dourado@gmail.com','779987678543'),
         ('943.354.235-96','Carlos','Silva da Costa','1994/03/12','Brasileiro','','779945678986', 'carlos943silva@gmail.com','779945678767'),
         ('964.456.256-85','Julia','Olivia magalhões','2003/02/26','Brasileiro','','779956748765', 'julia964silva@gmail.com','779978909879'),
         ('954.395.935-86','Kelly','Silva dos Santos','2007/03/20','Brasileiro','','779945789865', 'kelly954silva@gmail.com','779967895456');
/*TABELA DE VENDAS DOS PRODUTOS */
INSERT INTO produtos(nome_prod, preco_prod, qtd_prod, CF_prod, CV_prod, CT_prod, CFME_prod, CVME_prod, CME_prod, CMZ_prod)
 VALUES  ('Arroz','19.00','50','999.00','1100.00','2099.00','19.98','22.00','41.98','3.70'),
         ('Arroz','9.99','77','999.00','1099.00','2098.00','12.97','14.27','27.24','222.72'),
         ('Bolachas e biscoitos','25.00','99','999.00','1050.00','2049.00','10.09','10.60','20.69','294.11'),
         ('Café','19.99','150','999.00','1200.00','2199.00','6.66','8.00','14.66','55.55'),
         ('Chá','10.00','60','999.00','1250.00','2249.00','16.65','20.83','37.48','433.33'),
         ('Extrato de tomate','15.00','33','999.00','1133.00','2132.00','30.27','33.72','64.60','2216.66'),
         ('Feijão','29.00','39','999.00','1000.00','1999.00','25.61','25.64','51.25','96.19'),
         ('Leite','4.99','144','999.00','899.00','1898.00','6.93','6.24','13.18','41.22'),
         ('Macarrão','7.99','30','999.00','850.00','1851.00','33.33','28.33','61.70','150.00'),
         ('Òleo','19.99','38','999.00','840.00','1839.00','26.28','22.10','48.39','142.85'),
         ('Temepero Pronto','2.99','66','999.00','800.00','1799.00','15.13','12.12','27.25','83.33'),
         ('Farinha','13.99','78','999.00','810.00','1809.00','12.80','10.28','23.19','00.00');
/* TABELA DE COLABORADORES */
INSERT INTO colaboradores(cpf_colb, nome_colb, funcao_colb, dtEmissao_colb, salario_colb, hrTrabalho_colb,telef_colb, email_colb, end_colb, dtNasci_colb) 
  VALUES ('453.565.455-54','maciel','auxiliar de limpeza','2022/05/20','500.00','5:00:00','779947545675','maciel453.empresa@gmail.com','Rua Ruí Barbosa','1995/04/12'),
         ('456.354.345-55','ana','balconista','2022/05/20','500.00','5:00:00','779934455654','ana456.empresa@gmail.com','Rua Magalhões','1966/07/03'),
         ('323.455.454-22','victor','repositor de mercadorias','2022/05/20','600.00','7:00:00','779956678645','tainara323.empresa@gmail.com','Rua Centro Brasil','2002/04/22'),
         ('444.354.343-88','maisa','operador de caixa','2022/05/20','800.00','7:00:00','779956546644','taina444.empresa@gmail.com','Avenida Luís Eduardo','2003/08/12'),
         ('433.234.544-88','aninha','encarregado de estoque','2022/07/26','200.00','2:00:00','779956678953','marta433.empresa@gmail.com','Rua ramairo centro','2000/10/15'),
         ('453.456.343-34','amanda','vendedor','2022/07/26','700.00','6:00:00','779956464645','maysa453.empresa@gmail.com','Avenida 167 Centro','1993/06/23'),
         ('455.765.545-55','ana paula','operador de caixa','2022/07/26','800.00','7:00:00','779945687666','marcon455.empresa@gmail.com','Rua ','1998/12/30'),
         ('767.554.344-43','lucas','operador de caixa','2022/07/26','800.00','7:00:00','779942454556','lucas767.empresa@gmail.com','Rua Avenida magalhões','1993/01/09'),
         ('995.435.674-43','lucas','vendedor','2022/09/08','700.00','6:00:00','779956765445','tiago995.empresa@gmail.com','Rua Ruí Barbosa','2003/04/27'),
         ('545.454.665-54','julia','entregador','2022/09/08','500.00','6:00:00','779956544565','marta545.empresa@gmail.com','Rua Ruí Barbosa','1889/03/12'),
         ('345.556.353-56','juh','mpacotador','2022/09/08','200.00','6:00:00','779954667656','maciel345.empresa@gmail.com','Avenida Luís Eduardo','1993/09/29');
/* TABELA DE FORNECEDORES */
INSERT INTO fornecedores(cgc_forn, nome_forn, sobrenome_forn, dtNasci_forn, end_forn, telef_forn, email_forn, qtd_forn, preco_forn)
VALUES ('001.827.272','Mariana','Alcântara','1998/07/23','Itapuã, Salvador - BA','997261839','Mari.ana@hotmail.com','4','63.00'),
       ('014.737.938','Sukuna','oliveira','2002/09/20','costa azul, Salvador - BA','971947287','Marciel70@hotmail.com','1','20.00'),
       ('300.955.124','Erica','conceicao de oliveira','2000/05/02','piatã, Salvador - BA','991518179','Erica.Paula49@hotmail.com','3','25.34'),
       ('393.913.293','Caue','Motta','1999/06/29','imbui narandiba, Salvador - BA','993747288','Cacau2.0@hotmail.com','1','14.00'),
       ('002.929.282','Jimin','park','1993/02/09','São Cristóvão, Salvador - BA','928128462','Jiminiepark@hotmail.com','7','95.00'),
       ('915.877.837','Nanjoon','kin','1994/12/31','rio vermelho, Salvador - BA','993816444','RMmochi@hotmail.com','4','33.50'),
       ('251.193.988','J-hope','hoseok','1992/09/02','barroquinha, Salvador - BA','999174527','Jeon.Jayi@hotmail.com','1','15.00'),
       ('251.193.988','Yoongi','min','1993/04/25','Itapuã, Salvador - BA','982918262','Suga.kookie@hotmail.com','3','43.00'),
       ('132.175.928','Lalisa','manobal','1997/09/12','Itapuã, Salvador - BA','9264947281','Lisapink@hotmail.com','2','20.00'),
       ('132.175.928','Taehyung','Kim,','1995/11/30','Itapuã, Salvador - BA','91936211','V.tataeoppa@hotmail.com','1','8.00');
/* TABELA DE VALORES A SER PAGO */
INSERT INTO valores_pagar(data_pag, custoF_pag,  custoV_pag, custoT_pag)
  VALUES ('2022/01/31','1199800','1200000','2399800'),
		 ('2022/02/28','1199800','1220000','2419800'),
		 ('2022/03/31','1199800','1299900','2499700'),
		 ('2022/04/30','1199800','1199900','2399700'),
		 ('2022/05/31','1199800','1000000','2199800'),
		 ('2022/06;30','1199800','1100000','3199800'),
		 ('2022/07/31','1199800','1190000','2389800'),
		 ('2022/08/31','1199800','1200000','2399800'),
		 ('2022/09/30','1199800','1000000','2199800'),
		 ('2022/10/31','1199800','1010000','2209800'),
		 ('2022/11/30','1199800','1110000','2309800');
/* VALORES A SER RECEBIDO*/
INSERT INTO valores_receber(data_recb, notaFiscal, recb_produto, custo_recb, custoTemp, servicoes)
VALUES ('1998/07/16','551926279','ok','0.00','0.00','ótimo'),
       ('1983/10/23','551982644','ok','0.00','0.00','ótimo'),
       ('1997/02/18','551192778','ok','0.00','0.00','ótimo'),
       ('1997/02/18','551197641','ok','0.00','0.00','ótimo'),
       ('1983/10/23','551982644','ok','0.00','0.00','ótimo'),
       ('1995/10/13','551016344','ok','0.00','0.00','ótimo'),
       ('1994/09/12','551928282','ok','0.00','0.00','ótimo'),
       ('1994/02/18','551929289','ok','0.00','0.00','ótimo'),
       ('1993/05/09','551028271','ok','0.10','0.00','ótimo'),
       ('1997/05/27','551198278','ok','0.00','0.00','ótimo'),
       ('1995/12/30','551917271','ok','10.00','0.00','ótimo');
/*TABELA DE VENDAS DOS PRODUTOS */
INSERT INTO vendas(p_venda, qtd_venda, CF_venda, CV_venda, CT_venda, CFME_venda, CVME_venda, CME_venda, CMZ_venda)
 VALUES  ('2022/01/31','50','999.00','1100.00','2099.00','19.98','22.00','41.98','3.70'),
         ('2022/02/28','77','999.00','1099.00','2098.00','12.97','14.27','27.24','222.72'),
         ('2022/03/31','99','999.00','1050.00','2049.00','10.09','10.60','20.69','294.11'),
         ('2022/04/30','150','999.00','1200.00','2199.00','6.66','8.00','14.66','55.55'),
         ('2022/05/31','60','999.00','1250.00','2249.00','16.65','20.83','37.48','433.33'),
         ('2022/06/30','33','999.00','1133.00','2132.00','30.27','33.72','64.60','2216.66'),
         ('2022/07/31','39','999.00','1000.00','1999.00','25.61','25.64','51.25','96.19'),
         ('2022/08/31','144','999.00','899.00','1898.00','6.93','6.24','13.18','41.22'),
         ('2022/09/30','30','999.00','850.00','1851.00','33.33','28.33','61.70','150.00'),
         ('2022/10/31','38','999.00','840.00','1839.00','26.28','22.10','48.39','142.85'),
         ('2022/11/30','66','999.00','800.00','1799.00','15.13','12.12','27.25','83.33'),
         ('2022/12/31','78','999.00','810.00','1809.00','12.80','10.28','23.19','00.00');
/* CLIENTES */
SELECT * FROM clientes ORDER BY nome_cli ASC;
SELECT * FROM clientes ORDER BY id_cli DESC;
SELECT * FROM clientes WHERE nome_cli LIKE "a%";
ALTER TABLE clientes MODIFY nome_cli VARCHAR(255);
UPDATE clientes SET nome_cli="Beltrano da Silva" WHERE id_cli = 1;
SELECT * FROM clientes WHERE nome_cli LIKE "%Ro";
DELETE FROM clientes WHERE id_cli = 3;
/* PRODUTOS */
DELETE FROM produtos WHERE matri_reg = 10;
SELECT * FROM produtos ORDER BY preco_prod DESC;
SELECT * FROM produtos WHERE matri_prod <= 3;
SELECT * FROM produtos WHERE matri_prod <= 5;
/* COLABORADORES */
SELECT * FROM colaboradores WHERE nome_colb LIKE "a%";
ALTER TABLE colaboradores ADD numDependecia INT FIRST;
SELECT cpf_colb, nome_colb, salario_colb, dtEmissao_colb FROM colaboradores;
SELECT * FROM colaboradores ORDER BY salario_colb DESC;
/* FORNECEDORES */
UPDATE fornecedores SET nome_forn="Organização Tabajara" WHERE matri_forn=4;
SELECT * FROM fornecedores ORDER BY nome_forn ASC;






