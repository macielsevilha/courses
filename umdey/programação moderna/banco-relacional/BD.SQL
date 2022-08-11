
CREATE TABLE clientes(
    matri_cli INT PRIMARY KEY AUTO_INCREMENT,
    cpf_cli VARCHAR(14) NOT NULL,
    nome_cli VARCHAR(20) NOT NULL,
    sobrenome_cli VARCHAR(50) NOT NULL,
    dtNasci_cli DATE NOT NULL,
    naturi_cli VARCHAR(50) NOT NULL,
    end_cli VARCHAR(100) NOT NULL,
    telef_cli VARCHAR(20) NOT NULL,
    email_cli VARCHAR(100) NOT NULL
    whatsapp_cli VARCHAR(18) NOT DEFAULT

);
CREATE TABLE registros(
    matri_reg INT PRIMARY KEY AUTO_INCREMENT,
    nome_reg VARCHAR(50) NOT NULL,
    desc_reg TEXT NOT NULL,
    data_reg DATE NOT NULL,
    valor_reg FLOAT NOT NULL,
    email_reg VARCHAR(100) NOT NULL,
    senha_reg VARCHAR(50) NOT NULL,
    telef_reg VARCHAR(14) NOT DEFAULT
);
CREATE TABLE funcionarios(
    matri_func INT PRIMARY KEY AUTO_INCREMENT,
    nome_func VARCHAR(20),
    sobrenome_func VARCHAR(50),
    cpf_func VARCHAR(14) NOT NULL,
    dtNasci_func DATE NOT NULL,
    telef_func VARCHAR(15) NOT NULL,
    sexo_func CHECK(sexo_func IN ('M', 'F')),
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
    preco_forn FLOAT NOT NULL,

);
CREATE TABLE colaboradores(
    id_colb PRIMARY KEY AUTO_INCREMENT,
    cpf_colb VARCHAR(20) NOT NULL,
    funcao_colb VARCHAR(50) NOT NULL,
    dtEmissao_colb DATE NOT NULL,
    salario_colb FLOAT NOT NULL,
    hrTrabalho_colb DATETIME NOT NULL,
    telef_colb VARCHAR(15) NOT NULL,
    email_colb VARCHAR(100) NOT NULL,
    end_colb VARCHAR(100) NOT NULL,
    dtNasci_colb DATE NOT NULL,
);
CREATE TABLE valores_receber(
    id_beneficio INT PRIMARY KEY AUTO_INCREMENT,
    data_recb DATE NOT NULL,
    notaFiscal VARCHAR(50) NOT NULL,
    recb_produto NUMERIC NOT DEFAULT
    custo_recb FLOAT NOT NULL,
    custoTemp FLOAT NOT NULL,
    servicoes TEXT NOT NULL
);
CREATE TABLE valores_pagar(
    id_pag INT PRIMARY KEY AUTO_INCREMENT,
    data_pag DATE NOT NULL,
    custoF_pag FLOAT NOT NULL,
    custoV_pag FLOAT NOT NULL,
    custoT_pag FLOAT NOT NULL,
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

INSERT INTO clientes(cpf_cli, nome_cli, sobrenome_cli, nasci_cli, naturi_cli, end_cli, telef_cli, email_cli, whatsapp_cli)
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

INSERT INTO colaboradores(cpf_colb, funcao_colb, dtEmissao_colb, salario_colb, hrTrabalho_colb,telef_colb, email_colb, end_colb, dtNasci_colb) 
         ('453.565.455-54','','2022/05/20','700.00','5:00','779947545675','maciel453.empresa@gmail.com','Rua Ruí Barbosa','1995/04/12'),
         ('456.354.345-55','','2022/05/20','500.00','5:00','779934455654','ana456.empresa@gmail.com','Rua Magalhões','1966/07/03'),
         ('323.455.454-22','','2022/05/20','1200.00','7:00','779956678645','tainara323.empresa@gmail.com','Rua Centro Brasil','2002/04/22'),
         ('444.354.343-88','','2022/05/20','1200.00','7:00','779956546644','taina444.empresa@gmail.com','Avenida Luís Eduardo','2003/08/12'),
         ('433.234.544-88','','2022/07/26','200.00','2:00','779956678953','marta433.empresa@gmail.com','Rua ramairo centro','2000/10/15'),
         ('453.456.343-34','','2022/07/26','700.00','6:00','779956464645','maysa453.empresa@gmail.com','Avenida 167 Centro','1993/06/23'),
         ('455.765.545-55','','2022/07/26','1200.00','7:00','779945687666','marcon455.empresa@gmail.com','Rua ','1998/12/30'),
         ('767.554.344-43','','2022/07/26','1200.00','7:00','779942454556','lucas767.empresa@gmail.com','Rua Avenida magalhões','1993/01/09'),
         ('995.435.674-43','','2022/09/08','700.00','6:00','779956765445','tiago995.empresa@gmail.com','Rua Ruí Barbosa','2003/04/27'),
         ('545.454.665-54','','2022/09/08','899.00','6:00','779956544565','marta545.empresa@gmail.com','Rua Ruí Barbosa','1889/03/12'),
         ('345.556.353-56','','2022/09/08','899.00','6:00','779954667656','maciel345.empresa@gmail.com','Avenida Luís Eduardo','1993/09/29');


INSERT INTO vendas(p_venda, qtd_venda, CT_venda, CFME_venda, CVME_venda, CME_venda, CMZ_venda)
         ('2022/01/31','50','999.00','1100.00','2099.00','19.98','22.00','41.98','3.70'),
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
         ('2022/12/31','78','999.00','810.00','1809.00','12.80','10.28','23.19',''),