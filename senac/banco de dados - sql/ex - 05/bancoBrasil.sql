CREATE DATABASE bancoBrasil;
use bancoBrasil;

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

drop table cli_juridica;
select * from cli_juridica;
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
