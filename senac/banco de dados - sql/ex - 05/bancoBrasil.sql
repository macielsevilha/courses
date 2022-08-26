CREATE DATABASE bancoBrasil;
use bancoBrasil;

select * from cli_fisico;
select * from cli_juridica;
select * from ct_cartao;
select * from ct_corrente;
select * from ct_poupanca;
select * from ct_salario;
SELECT * FROM funcionarios;

DROP TABLE cli_fisico;
DROP TABLE cli_juridica;
DROP TABLE funcionarios;
DROP TABLE ct_cartao;
DROP TABLE ct_corrente;
DROP TABLE ct_poupanca;
DROP TABLE ct_salario;
DROP TABLE extrato;

/* TABELA DE PESSOAS FÍSICAS */
CREATE TABLE cli_fisico(
   cpf_fi VARCHAR(14) PRIMARY KEY NOT NULL UNIQUE,
   nome_fi VARCHAR(100) NOT NULL,
   dtNasci_fi DATE NOT NULL,
   nomeMae_fi VARCHAR(100) NOT NULL,
   nomePai_fi VARCHAR(100) NOT NULL,
   etCivil_fi VARCHAR(20) NOT NULL,
   end_fi VARCHAR(150) NOT NULL,
   telef_fi VARCHAR(20) NOT NULL,
   email_fi VARCHAR(255) NOT NULL,
   empTrabalho_fi VARCHAR(50) NOT NULL,
   salario_fi double NOT NULL,
   dtAberturaCt_fi DATE NOT NULL,
   numConta_fi VARCHAR(16) NOT NULL,
   numAgencia_fi NUMERIC NOT NULL
);
/* TABELA DE PESSOAS JURÍDICAS */
CREATE TABLE cli_juridica(
   cnpj_ju CHAR(18) PRIMARY KEY UNIQUE NOT NULL,
   rzSocial_ju VARCHAR(50) NOT NULL,
   nomeFantasia_ju VARCHAR(100) NOT NULL,
   end_ju VARCHAR(150) NOT NULL,
   dtFundacao_ju DATE NOT NULL,
   telef_ju VARCHAR(16) NOT NULL,
   rmAtuacao VARCHAR(100) NOT NULL,
   rmdBruto_ju FLOAT NOT NULL,
   numConta_ju VARCHAR(16) NOT NULL,
   numAgencia_ju NUMERIC NOT NULL

);
/* TABELA DE FUNCIONÁRIOS */
CREATE TABLE funcionarios(
   matri_fu INT PRIMARY KEY AUTO_INCREMENT,
   cpf_fu VARCHAR(14) NOT NULL,
   nome_fu VARCHAR(100) NOT NULL,
   dtNasci_fu DATE NOT NULL,
   dtAdm_fu DATE NOT NULL,
   funcao_fu VARCHAR(50) NOT NULL,
   dependente_fu VARCHAR(1) CHECK(dependente_fu IN ('S', 'N')),
   login_fu NUMERIC NOT NULL
);
/* TABELA DE CONTA CORRENTE */
CREATE TABLE ct_corrente(
   numConta_co VARCHAR(16) NOT NULL,
   numAgencia_co NUMERIC NOT NULL,
   cpf_co VARCHAR(14) PRIMARY KEY UNIQUE NOT NULL,
   nome_co VARCHAR(100) NOT NULL,
   saldo_co VARCHAR(100) NOT NULL,
   taxa_co FLOAT NOT NULL,
   chavePix_co TEXT NOT NULL
);
/* TABELA DE CONTA POUPANÇA */
CREATE TABLE ct_poupanca(
   numConta_po VARCHAR(16) NOT NULL,
   numAgencia_po NUMERIC NOT NULL,
   cpf_po VARCHAR(14) PRIMARY KEY UNIQUE NOT NULL,
   nome_po VARCHAR(100) NOT NULL,
   saldo_po VARCHAR(100) NOT NULL,
   chavePix_po TEXT NOT NULL
);
/* TABELA DE CONTA SALÁRIO */
CREATE TABLE ct_salario(
   numConta_sa VARCHAR(16) NOT NULL,
   numAgencia_sa NUMERIC NOT NULL,
   cnpj_sa CHAR(18) PRIMARY KEY UNIQUE NOT NULL,
   cpf_sa char(14) NOT NULL,
   nome_sa VARCHAR(100) NOT NULL,
   salario_sa FLOAT NOT NULL,
   saldo_sa FLOAT NOT NULL
);
/* TABELA DE EXTRATO */
CREATE TABLE extrato(
   agencia_ex INT(4) PRIMARY KEY UNIQUE NOT NULL,
   numConta_ex VARCHAR(16) NOT NULL,
   data_ex DATE NOT NULL,
   tpTransacao_ex TEXT NOT NULL,
   valor_ex FLOAT NOT NULL,
   saldoAtual_ex FLOAT NOT NULL
);
/* TABELA DE CARTÃO DE CRÉDITO */
CREATE TABLE ct_cartao(
   numCartao_ca VARCHAR(50) PRIMARY KEY NOT NULL,
   nomeCli_ca VARCHAR(100) NOT NULL,
   validade_ca DATE NOT NULL,
     codSeguranca_ca NUMERIC(4) NOT NULL UNIQUE,
   vmcCartao_ca DATE NOT NULL,
   bandeira_ca VARCHAR(55) NOT NULL,
   limiteT_ca FLOAT NOT NULL,
   limiteU_ca FLOAT NOT NULL,
   limiteR_ca FLOAT NOT NULL,
   dtVencimento_ca DATE NOT NULL
);

DROP TABLE ct_cartao;
/* DADOS DE PESSOA FÍSICA */
INSERT INTO cli_fisico(cpf_fi, nome_fi, dtNasci_fi, nomeMae_fi, nomePai_fi, etCivil_fi, end_fi, telef_fi, email_fi, empTrabalho_fi, salario_fi, dtAberturaCt_fi, numConta_fi, numAgencia_fi) 
VALUES ('784.707.838-40','Elaine Elza Bruna da Conceição','1994/01/21','Flávia Giovanna Fátima','Breno Thales da Conceição','casado','Quadra Quadra 1 Conjunto A','(61) 2828-8802','elaine_elza_daconceicao@mpc.com.br','Americanas','2000.00','1995/04/20','1142047-2','4552'),
       ('501.766.248-05','Cristiane Camila da Costa','1997/07/08','Giovana Marli','Calebe Enzo da Costa','solteira','Viela Ernesto Carlos Costa','(11) 3943-8525','cristianecamiladacosta@brasildakar.com.br','Casa Bahia','1200.00','1954/04/12','1134436-9','1267'),
       ('792.798.570-10','Teresinha Helena Sarah Farias','1957/06/09','Marina Clara Gabrielly','Rodrigo Severino Filipe Farias','Casada','Rua Engenheiro Antônio Gonçalves Soares','(79) 3906-1202','teresinha.helena.farias@alanamaral.com.br','Casa Bahia','1200.00','1994/03/19','0070425-3','6901'),
       ('493.505.773-48','Roberto Bernardo Jorge Cavalcanti','2003/04/23','Yasmin Clara','Emanuel Tiago Cavalcanti','Casado','Rua Bela Vista','(79) 2875-1956','roberto_cavalcanti@torah.com.br','Terabyte','1500.00','2002/09/12','116260-8','3945'),
       ('774.778.651-40','Malu Olivia Isabela da Mata','1970/06/12','Sônia Stefany','Fernando Erick Paulo da Mata','Viúva','Rua Epitácio Pessoa','(31) 3975-1073','malu_olivia_damata@deze7.com.br','Top Curso','800.00','1998/07/23','1457418-2','0836'),
       ('530.663.783-30','João Bryan das Neves','1981/06/30','Benedita Caroline Lorena','Nelson Caio Nicolas das Neves','Solteiro','Travessa Nova Venécia','(27) 3502-3288','joao-dasneves96@muricy.com','facebook','3000.00','2003/09/12','221191-2','1119'),
       ('535.382.607-88','Elaine Sophia Martins','1944/06/19','Valentina Andreia Aline','Severino Ruan Martins','Casado','Acesso N','(51) 2719-7070','elaine-martins84@zk.arq.br','TI Tecno','1100.00','1993/04/12','1608938-9','2301'),
       ('317.498.507-29','Juliana Elisa da Rosa','1961/05/20','Sebastiana Fátima','Diogo Mário Raul da Rosa','Casada','Travessa Rio Branco','(68) 2809-7322','juliana_darosa@icloub.com','Casa Ramalho','1900.00','2000/12/09','1234431-1','2076'),
       ('456.851.596-33','Vanessa Débora Carvalho','2004/05/12','Lorena Giovana Caroline','Marcos Geraldo Carvalho','Divorciado','Rua Leônidas de Góes Vieira','(15) 2583-8450','vanessa_debora_carvalho@aquino.com.br','Conserta Roupas','1750.00','1998/09/23','1054417-8','5442'),
       ('509.883.885-10','Danilo Guilherme Nelson Oliveira','1963/06/24','Vitória Giovana Teresinha','Caleb João Levi Oliveira','Separado','Rua Quatorze','(31) 3878-0407','danilo_oliveira@gimail.com','Terabyte','4500.00','1993/02/20','225898-6','3433');
/* DADOS DE PESSOA JURÍDICA */
INSERT INTO cli_juridica(cnpj_ju, rzSocial_ju, nomeFantasia_ju, end_ju, dtFundacao_ju, telef_ju, rmAtuacao, rmdBruto_ju, numConta_ju, numAgencia_ju)
VALUES ('57.906.530/0001-10','saraeisis marcenariame','marcenariame','Rua Caraíbas','2017/06/05','(11) 2721-2188','Vendedor','3000.00','1034918-9','3039'),
       ('57.537.284/0001-77','alice eemanuel vidrosltda','eemanuel','Rua Poços de Caldas','2017/08/01','(11) 2943-4641','Vendedor','7000.00','140154-8','4787'),
       ('44.236.821/0001-05','rosange laestella marketingltda','Marketingltda','Rua José Augusto Jardim','2017/12/22','(12) 3503-3010','vendedor','10000.00','226442-0','0279'),
       ('84.334.195/0001-04','flaviae fernanda telecomltda','telecomltda','Avenida Três de Julho','2019/04/04','(12) 3954-7268','Vendedor','1500.00','1239196-4','2414'),
       ('28.667.073/0001-50','diogoe gustavo buffetme','buffetme','Rua Francisco Castilho Garcia','2019/12/19','(14) 98809-7260','Vendedor','4000.00','19299-6','0001'),
       ('20.192.789/0001-37','stefanye antonel lamar ketingltda','ketingltda','Rua José Messias Filho','2015/08/08','(14) 3804-7985','Vendedor','4000.00','134085-9','3042'),
       ('09.508.964/0001-10','claudio eedson ferragensme','ferragensme','Rua Guilherme de Almeida','2017/01/19','(15) 3808-6828','Vendedor','4000.00','89922-4','3504'),
       ('21.310.685/0001-42','pedroe sabrina financeiraltda','financeiraltda','Rua Martim Soares Moreno','2019/09/09','(15) 98716-3036','Vendedor','4000.00','1251865-4','6508'),
       ('55.656.115/0001-20','kamil lyealessandr amudancasme','lyealessandr','Rua Jair Correia de Souza','2017/09/12','(19) 3890-4042','Vendedor','4000.00','96553-6','9339'),
       ('66.237.375/0001-88','rafaelei sabelly casanoturname','casanoturname','Rua Antonieta Del Picchia','2014/12/30','(19) 99291-8884','Vendedor','4000.00','1919576-7','1294');
/* DADOS DOS FUNCIONÁRIOS */
INSERT INTO funcionarios(cpf_fu, nome_fu, dtNasci_fu, dtAdm_fu, funcao_fu, dependente_fu, login_fu)
VALUES ('134.567.385-01','Alice Elisa Pires','1978/03/17','2017/03/12','Gerente','S','0928343'),
       ('542.520.549-07','Raimunda Isadora dos Santos','1969/01/11','2017/09/02','Gerente','S','09282344'),
       ('660.778.673-14','Analu Isabel Carolina Martins','1976/08/02','2013/09/23','Analista de TI','N','09285433'),
       ('084.104.818-55','Ayla Alícia Fernanda Teixeira','1970/02/24','2020/02/12','caixa','S','09284543'),
       ('471.107.047-85','Antônia Vitória Campos','1956/08/01','2021/09/23','Caixa','S','09283234'),
       ('926.240.505-74','Juliana Camila Moura','1995/05/21','2019/09/12','Estagiário','N','09283435'),
       ('339.096.450-70','Laís Juliana Teixeira','2001/05/21','2018/05/25','Caixa','S','092823465'),
       ('949.059.939-67','Eduardo Isaac Cavalcanti','1979/05/04','2017/12/09','Estagiário','N','09283456'),
       ('689.157.288-73','Otávio Igor Cardoso','1944/06/11','2022/01/03','Caixa','N','092843456'),
       ('873.878.490-48','Carolina Alice da Cunha','1989/03/24','2018/03/12','Caixa','N','092843556'),
       ('843.239.432-48','Maciel Sevilha Do Anjos','2002/09/12','2019/02/13','Subgerente','S','092834577'),
       ('923.329.342-32','Carlos Silva da Costa','1993/09/23','2017/09/12','Subgerente','S','0928678645'),
       ('742.234.423-23','Bia Oliveira da Silva','2000/09/12','2021/01/12','Subgerente','S', '0928779695');
/* DADOS DE CONTAS CORRENTES */
INSERT INTO ct_corrente(numConta_co, numAgencia_co, cpf_co, nome_co, saldo_co, taxa_co, chavePix_co) 
VALUES ('1298285-7','1409','784.707.838-40','Elaine Elza Bruna da Conceição','4000.00','0.5','CB01[#L{{AQkh:UOeUS[x9GTR{r;})=oLo%T$JTZyit@Qn0LV='),
       ('09416670-2','1725','792.798.570-10','Teresinha Helena Sarah Farias','1000.00','0.7','I=6RipX?BC7kw)Dwsq*z9vNo4)4*mU}&hTbDb)B+%?oEmTzOp{'),
       ('225898-6','3433','509.883.885-10','Danilo Guilherme Nelson Oliveira','3500.00','1.5','gFo%g#I@Zs+WU?@y=AN2Qn24rSa$]SlQ+&_S_BwEUwa3qcpk0['),
       ('1054417-8','5442','456.851.596-33','Vanessa Débora Carvalho','500.50','2.4','IO5!6;?[o=2hs2@aK{cENcla+vG;K@#(B?fb=S2N[vkDRxU&ie'),
       ('1176571-2','0528','774.778.651-40','Malu Olivia Isabela da Mata','3705.50','1.2','d90*wUw3}xs$he[tt)]Em1?[6g6oH!gP*ZlKr#EtV&*g{2!I;U'),
       ('221191-2','1119','530.663.783-30','João Bryan das Neves','7000.00','1.8','KJNf)wh%lcQVoS7Vr]7CWvfJ]LA[mCyr5Hx1tH3_Qt9TP]E%pl'),
       ('1608938-9','2301','535.382.607-88','Elaine Sophia Martins','6453.85','3.4','K[{f(SuGwdX?uy&[&AJ@ifqmoyIbcNH8Qh8x9e[bf]t:8D8dho'),
       ('134412-9','5442','317.498.507-29','Juliana Elisa da Rosa','904.99','0.3','Iw(knk+mb[*v0o%dTm5Mz}feH4NKO0GXqVfn(KJBh]n2v+nsK7'),
       ('45394981-4','0331','501.766.248-05','Cristiane Camila da Costa','7934.40','0.9','*Or9Tp=Xu]?sA4zzvCME*oXurn2_*jodIc2wp5P1ohv0yiWTRI'),
       ('9349344-3', '4323','923.344.233-34','Maciel Sevilha de Silva','2304.50','1.2','*Dr9Tp=Xu]?sA4zzvCME*oXurn2_*lodIc2wp5P1ohv0ydfHDFJS');
/* DADOS DE CONTAS POUPANÇAS */
INSERT INTO ct_poupanca(numConta_po, numAgencia_po, cpf_po, nome_po, saldo_po, chavePix_po) 
VALUES ('145204-5','2473','784.707.838-40','Elaine Elza Bruna da Conceição','7000.00','CB01[#L{{AQkh:UOeUS[x9GTR{r;})=oLo%T$JTZyit@Qn0LV='),
       ('141201-9','1130','792.798.570-10','Teresinha Helena Sarah Farias','1000.00','I=6RipX?BC7kw)Dwsq*z9vNo4)4*mU}&hTbDb)B+%?oEmTzOp{'),
       ('1209551-6','0432','509.883.885-10','Danilo Guilherme Nelson Oliveira','23000.00','gFo%g#I@Zs+WU?@y=AN2Qn24rSa$]SlQ+&_S_BwEUwa3qcpk0['),
       ('1084029-X','6782','456.851.596-33','Vanessa Débora Carvalho','40500.50','IO5!6;?[o=2hs2@aK{cENcla+vG;K@#(B?fb=S2N[vkDRxU&ie'),
       ('1061621-7','3068','774.778.651-40','Malu Olivia Isabela da Mata','30000.00','d90*wUw3}xs$he[tt)]Em1?[6g6oH!gP*ZlKr#EtV&*g{2!I;U'),
       ('120662-1','2057','530.663.783-30','João Bryan das Neves','27000.00','KJNf)wh%lcQVoS7Vr]7CWvfJ]LA[mCyr5Hx1tH3_Qt9TP]E%pl'),
       ('1016796-X','4127','535.382.607-88','Elaine Sophia Martins','76453.85','K[{f(SuGwdX?uy&[&AJ@ifqmoyIbcNH8Qh8x9e[bf]t:8D8dho'),
       ('1133752-4','0610','317.498.507-29','Juliana Elisa da Rosa','904.99','Iw(knk+mb[*v0o%dTm5Mz}feH4NKO0GXqVfn(KJBh]n2v+nsK7'),
       ('74726-2','0870','501.766.248-05','Cristiane Camila da Costa','7934.00','*Or9Tp=Xu]?sA4zzvCME*oXurn2_*JodIc2wp5P1ohv0yiWTRI'),
       ('43494-3','0343','347.435.434-23','Lucas Martiz da Costa','3484.99','KJNf)hh%ldfkas7Vr]7CWvfJ]LF[mCyr5Hx1tH3_Qt9TP]E%pj');
/* DADOS DE CONTA SALÁRIO */
INSERT INTO ct_salario(numConta_sa, numAgencia_sa, cnpj_sa, cpf_sa, nome_sa, salario_sa, saldo_sa)
VALUES ('145204-5','2473','57.906.530/0001-10','784.707.838-40','Elaine Elza Bruna da Conceição','2000.00','7000.00'),
       ('1298285-7','1409','57.537.284/0001-77','792.798.570-10','Malu Olivia Isabela da Mata','550.00','1000.00'),
       ('1061621-7','3068','44.236.821/0001-05','639.911.055-60','Guilherme Oliver da Cunha','1200.00','10000.00'),
       ('1608938-9','2301','84.334.195/0001-04','184.817.051-36','José Fábio Filipe Corte Real','3000.00','40000.00'),
       ('74726-2','0870','66.237.375/0001-88','774.778.651-40','Malu Olivia Isabela da Mata','23000.00','230000.00'),
       ('1133752-4','0610','55.656.115/0001-20','803.261.586-50','Ryan Oliver Jesus','2000.00','1000.00'),
       ('1144519-X','2118','21.310.685/0001-42','641.094.178-13','Teresinha Sueli Aparício','3400.00','564.65'),
       ('45971072-1','2138','09.508.964/0001-10','973.459.444-33','Augusto André da Mata','3299.00','78430.32'),
       ('18128-5','5358','20.192.789/0001-37','192.596.377-24','Daniela Flávia Moura','300.00','3424.43'),
       ('1028740-X','2359','28.667.073/0001-50','949.059.938-73','Otávio Igor Cardoso','788.00','4000.00');
/* DADOS DE EXTRATO */
INSERT INTO extrato(agencia_ex, numConta_ex, data_ex, tpTransacao_ex, valor_ex, saldoAtual_ex)
VALUES ('2473','145204-5','2019/09/12','Boletos','2000.00','5000.00'),
       ('3068','1061621-7','2018/12/20','Voucher','500.00','500.00'),
       ('0870','1028740-X','2020/12/02','Pix','1200.00','28000.00'),
       ('4127','1016796-X','2022/01/12','Pix','1302.99','6233.12'),
       ('3152','0767256-P','2012/09/12','Boletos','120.00','0'),
       ('1517','45468-0','2018/12/31','Cartões','72344.00','34000.00'),
       ('0687','0319234-2','2017/03/21','Cartões','200.00','1000.00'),
       ('1229','1079145-0','2019/03/12','Pix','2300.00','300.00'),
       ('1426','94476-3','2019/05/04','Pix','100.00','122.00'),
       ('3588','1134305-2','2019/03/12','Boletos','12.00','1200.00'),
       ('2343','2039483-2','2019/02/12','Pix','23.00','122.00'),
       ('2353','3234234-X','2018/04/23','Pix','49.99','1934.99');
/* DADOS DE CARTÃO DE CRÉDITO */
INSERT INTO ct_cartao(numCartao_ca, nomeCli_ca, validade_ca, codSeguranca_ca, vmcCartao_ca, bandeira_ca, limiteT_ca, limiteU_ca, limiteR_ca, dtVencimento_ca)
VALUES ('5336412373148734','Pietro Bruno Kaique Bernardes','2023/02/23','487','2024/01/23','MasterCard','100.00','30.00','70.00','24/01/31'),
       ('5111345189626231','Davi Calebe da Costa','2023/02/23','238','2024/01/23','American Express','1000.00','400.00','600.00','24/01/31'),
       ('5340440336562596','Igor Marcos Vinicius Arthur Fernandes','2023/02/23','262','2024/01/23','MasterCard','1000.00','500.00','500.00','24/01/31'),
       ('5463825225306876','Luzia Daiane Drumond','2023/03/23','519','2024/01/23','MasterCard','200.00','100.00','90.00','24/01/31'),
       ('5321011921232797','Alice Emanuelly Julia Santos','2023/04/23','995','2024/01/23','MasterCard','100.00','30.00','70.00','24/01/31'),
       ('5342858828865821','Francisca Eloá Andrea Cardoso','2023/02/23','798','2024/01/23','Diners Club','200.00','20.00','180.00','24/01/31'),
       ('5130643503949256','Isis Sophia Souza','2023/07/23','483','2024/01/23','MasterCard','10000.00','2500.00','750.00','24/01/31'),
       ('5198916444908543','Giovana Silvana Tatiane Pinto','2023/02/23','271','2024/01/23','Diners Club','1000.00','500.00','500.00','24/01/31'),
       ('4556178367598582','Valentina Mariana Cavalcanti','2023/01/23','684','2024/01/23','Visa','500.00','300.00','200.00','24/01/31'),
       ('4485303815919539','Ruan Renato Mendes','2023/12/23','110','2024/01/23','Visa','5000.00','100.00','400.00','24/01/31'),
       ('2342742395723842','Maciel sevilha Dos Anjos','2023/12/23','123','2024/01/23','Diners Club','150.00','50.00','100.00','2024/01/31'),
       ('3243490585403484','Lucas Oliveira dos Anjos','2023/12/23','345','2024/01/23','Visa','1000.00','700.00','300.00','2024/01/31');

/* COMANDOS PASSO 3 */
/* Na tabela extrato, contar e agrupar quais operações se repetiram e quantidade de vezes */
SELECT *, COUNT(tpTransacao_ex) from extrato GROUP BY tpTransacao_ex ORDER BY COUNT(tpTransacao_ex) ASC;
/* Realize a média dos salários declarados por todos os clientes físicos do banco */
SELECT AVG(salario_fi) FROM cli_fisico;
/* Mostre quais cartões que tem o limite usado de R$ 100 e R$ 200 reais */
SELECT * FROM ct_cartao WHERE limiteU_ca BETWEEN 100 AND 200;
/* Consulte de uma única vez na tabela cliente jurídico, qual o maior rendimento bruto, qual o menor, qual o somatório e qual a média de todos */
SELECT MAX(rmdBruto_ju), MIN(rmdBruto_ju), SUM(rmdBruto_ju), AVG(rmdBruto_ju) FROM cli_juridica;
/* Lista todas às funções existentes dentro do banco com suas quantidades */
SELECT funcao_fu, COUNT(funcao_fu) FROM funcionarios GROUP BY funcao_fu;
/* Na tabela conta corrente, mostre quais são as contas que tem o valor do saldo entre R$ 1500 e R$ 5000 reais */
SELECT * FROM ct_corrente WHERE saldo_co BETWEEN 1500 AND 5000;
/* Na conta poupança, realize à média de todos os saldos das contas existentes no banco */
SELECT AVG(saldo_po) FROM ct_poupanca;
/* Consultar quantos cartões são de cada bandeira */
SELECT * FROM ct_cartao GROUP BY bandeira_ca;
/* Na tabela cartão de crédito, conte e agrupe quais bandeiras e suas quantidades */
SELECT bandeira_ca, COUNT(bandeira_ca) FROM ct_cartao GROUP BY bandeira_ca;
/* Mostrar qual o limite mais alto de um cartão de crédito */
SELECT MAX(limiteT_ca) FROM ct_cartao;
/* Mostrar qual o limite mais baixo de um cartão de crédito */
SELECT MIN(limiteT_ca) FROM ct_cartao;

/* COMANDOS PASSO 4 */
/* Criar nomes de usuários e senhas para todos os funcionários */
CREATE USER 'Alice.Elisa'@'localhost' IDENTIFIED BY '0930';
CREATE USER 'Raimunda.Isadora'@'localhost' IDENTIFIED BY '0930';
CREATE USER 'Analu.Isabel'@'%' IDENTIFIED BY '0930';
CREATE USER 'Ayla.Alícia'@'localhost' IDENTIFIED BY '0930';
CREATE USER 'Antônia.Vitória'@'localhost' IDENTIFIED BY '0930';
CREATE USER 'Juliana.Camila'@'%' IDENTIFIED BY '0930';
CREATE USER 'Laís.Juliana'@'%' IDENTIFIED BY '0930';
CREATE USER 'Eduardo.Isaac'@'localhost' IDENTIFIED BY '0930';
CREATE USER 'Otávio.Igor'@'localhost' IDENTIFIED BY '0930';
CREATE USER 'Carolina.Alice'@'localhost' IDENTIFIED BY '0930';
CREATE USER 'Maciel.Sevilha'@'%' IDENTIFIED BY '0930';
CREATE USER 'Carlos.Silva'@'localhost' IDENTIFIED BY '0930';
CREATE USER 'Bia.Oliveira'@'localhost' IDENTIFIED BY '0930';
/* Criar nome de usuários e senhas somente para 5 clientes físicos e 5 clientes jurídicos */
CREATE USER 'Elaine.Elza.10'@'localhost' IDENTIFIED BY '10975';  /* física */
CREATE USER 'Roberto.Bernardo.10'@'%' IDENTIFIED BY '10975';
CREATE USER 'Vanessa.Débora.10'@'localhost' IDENTIFIED BY '10975';
CREATE USER 'Danilo.Guilherme.10'@'%' IDENTIFIED BY '10975';
CREATE USER 'João.Bryan.10'@'localhost' IDENTIFIED BY '10975';
/*===============================================================================*/
CREATE USER 'saraeisis.marcenariame.20'@'%' IDENTIFIED BY '20975';  /* jurídica */
CREATE USER 'kamil.lyealessandr.20'@'%' IDENTIFIED BY '20975';
CREATE USER 'rafaelei.sabelly.20'@'localhost' IDENTIFIED BY '20975';
CREATE USER 'pedroe.sabrina.20'@'localhost' IDENTIFIED BY '20975';
CREATE USER 'claudio.eedson.20'@'localhost' IDENTIFIED BY '20975';

/* COMANDOS PASSO 5 */
/* 02 Gerentes, terão todas as permissões em todo o banco */
GRANT ALL PRIVILEGES ON bancoBrasil.* TO 'Alice.Elisa'@'localhost';
GRANT ALL PRIVILEGES ON bancoBrasil.* TO 'Raimunda.Isadora'@'localhost';
/* 01 Subgerente, permissões de pesquisar, inserir, atualizar e deletar no cliente físico */
GRANT SELECT, INSERT, UPDATE, DELETE ON bancoBrasil.cli_fisico TO 'Maciel.Sevilha'@'%';
/* 01 Subgerente, permissões de pesquisar, inserir, atualizar e deletar no cliente jurídico */
GRANT SELECT, INSERT, UPDATE, DELETE ON bancoBrasil.cli_juridica TO 'Carlos.Silva'@'localhost';
/* 01 Subgerente, permissões de pesquisar, inserir, atualizar e deletar no cartão de crédito */
GRANT SELECT, INSERT, UPDATE, DELETE ON bancoBrasil.ct_cartao TO 'Bia.Oliveira'@'localhost';
/* 01 Analista de TI, permissões create, drop, alter, atualizar, inserir, deletar e pesquisar em todas as tabelas do banco de dados */
GRANT CREATE, DROP, ALTER, UPDATE, INSERT, DELETE, SELECT ON bancoBrasil.* TO 'Analu.Isabel'@'%';
/* 05 Caixas, permissões de pesquisar, inserir e atualizar na tabela conta corrente e salário */
GRANT SELECT, INSERT, UPDATE ON bancoBrasil.ct_corrente TO 'Carolina.Alice'@'localhost', 'Otávio.Igor'@'localhost', 'Laís.Juliana'@'%', 'Antônia.Vitória'@'localhost', 'Ayla.Alícia'@'localhost';
/* 02 Estagiários, permissão somente de pesquisar tabela cliente */
GRANT SELECT ON bancoBrasil.cli_fisico TO 'Eduardo.Isaac'@'localhost', 'Juliana.Camila'@'%';
GRANT SELECT ON bancoBrasil.cli_juridica TO 'Eduardo.Isaac'@'localhost', 'Juliana.Camila'@'%';
/* Para todos os clientes físicos, terão à permissão de pesquisar no extrato */
GRANT SELECT ON bancoBrasil.extrato TO 'Elaine.Elza.10'@'localhost', 'Roberto.Bernardo.10'@'%', 'Vanessa.Débora.10'@'localhost', 'Danilo.Guilherme.10'@'%', 'João.Bryan.10'@'localhost';
/* Revogar a permissão deletar de um dos Subgerentes */
REVOKE DELETE ON bancoBrasil.cli_fisico FROM 'Maciel.Sevilha'@'%';
/* Revogar todas as permissões de um dos caixas */
REVOKE SELECT, INSERT, UPDATE ON bancoBrasil.ct_corrente FROM 'Ayla.Alícia'@'localhost';
/* Revogar todas as permissões de um dos estagiários */
REVOKE SELECT ON bancoBrasil.cli_fisico FROM 'Eduardo.Isaac'@'localhost', 'Juliana.Camila'@'%';
REVOKE SELECT ON bancoBrasil.cli_juridica FROM 'Eduardo.Isaac'@'localhost', 'Juliana.Camila'@'%';
/* Deletar dois usuários criados, um para cliente físico e outro para cliente jurídico */
DROP USER 'João.Bryan.10'@'localhost';
DROP USER 'claudio.eedson.20'@'localhost';
/* Criar uma visão do cartão de crédito que mostre as informações: nome do cliente, o limite total, limite restante e seu vencimento */
CREATE VIEW consultando AS SELECT nomeCli_ca, limiteT_ca, limiteR_ca, dtVencimento_ca FROM ct_cartao;
/* Criar uma visão do cartão de crédito que mostre as informações: número do cartão, nome do cliente, validade, código de segurança */
CREATE VIEW visao_Cartao AS SELECT numCartao_ca, nomeCli_ca, validade_ca, codSeguranca_ca FROM ct_cartao;
/* Criar uma visão da conta corrente que mostre as informações: cpf do cliente, o número da conta e o saldo */
CREATE VIEW visao_corrente AS SELECT cpf_co, numConta_co, saldo_co FROM ct_corrente;
/* Crie uma visão da tabela cliente jurídico onde mostre somente cnpj da empresa, seu nome fantasia e seu rendimento bruto */
CREATE VIEW visao_juridico AS SELECT cnpj_ju, nomeFantasia_ju, rmdBruto_ju FROM cli_juridica;
/* Criar uma visão da tabela funcionário, onde mostre somente a matrícula do funcionário, função, dtAdm e login */
CREATE VIEW visao_funcionarios AS SELECT matri_fu, funcao_fu, dtAdm_fu, login_fu FROM funcionarios;
/* Execute duas visões criadas */
SELECT * FROM bancoBrasil.consultando;
SELECT * FROM bancoBrasil.visao_cartao;
/* Depois atribua uma visão para o Estagiário, que teve as permissões revogadas */
SHOW GRANTS FOR 'Eduardo.Isaac'@'localhost';
SHOW GRANTS FOR  'Juliana.Camila'@'%';
SHOW GRANTS FOR 'Eduardo.Isaac'@'localhost';
SHOW GRANTS FOR 'Juliana.Camila'@'%';
/*  Depois atribua uma visão para o Caixa, que teve as permissões revogada */
SHOW GRANTS FOR 'Ayla.Alícia'@'localhost';

flush privileges;


