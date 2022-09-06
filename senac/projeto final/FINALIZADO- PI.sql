CREATE DATABASE Covid_19;
USE Covid_19;



CREATE TABLE REGIAO_NORTE (
etNorte_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
etNome VARCHAR(100) NOT NULL,
dt_dia DATE NOT NULL,
ttl_casos VARCHAR(25) NOT NULL NULL,
ttl_mortes VARCHAR(25) NOT NULL NOT NULL,
vci_1dose VARCHAR(25) NOT NULL,
vci_2dose VARCHAR(25) NOT NULL,
vci_3dose VARCHAR(25) NOT NULL,
vci_4dose VARCHAR(25) NOT NULL,
vci_doseUnica VARCHAR(25) NOT NULL,
nvCasos_hr VARCHAR(25) NOT NULL,
recuperados LONG NOT NULL,
nvMortes_hr VARCHAR(25) NOT NULL,
profissionais_infctd VARCHAR(25) NOT NULL,
publico_infantil VARCHAR(25) NOT NULL,
totalLeitos_UTI VARCHAR(25) NOT NULL,
leitosOcpd_UTI VARCHAR(25) NOT NULL,
leitosLivres_UTI VARCHAR(25) NOT NULL,
totalLeitos_CLINICOS VARCHAR(25) NOT NULL,
leitosOcpd_CLINICOS VARCHAR(25) NOT NULL,
leitosLivres_CLINICOS VARCHAR(25) NOT NULL,
dosesDistribuidas_N VARCHAR(25) NOT NULL
);

CREATE TABLE REGIAO_SUL(
etSul_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
etNome VARCHAR(100) NOT NULL,
dt_dia DATE NOT NULL,
ttl_casos LONG NOT NULL,
ttl_mortes FLOAT NOT NULL,
vci_1dose LONG NOT NULL,
vci_2dose LONG NOT NULL,
vci_3dose LONG NOT NULL,
nvCasos_hr CHAR(25) NOT NULL,
recuperados LONG NOT NULL,
nvMortes_hr CHAR(25) NOT NULL,
profissionais_infctd FLOAT NOT NULL,
publico_infantil FLOAT NOT NULL,
totalLeitos_UTI FLOAT NOT NULL,
leitosOcpd_UTI FLOAT NOT NULL,
leitosLivres_UTI FLOAT NOT NULL,
totalLeitos_CLINICOS FLOAT NOT NULL,
leitosOcpd_CLINICOS FLOAT NOT NULL,
leitosLivres_CLINICOS FLOAT NOT NULL,
dosesDistribuidas_SL LONG NOT NULL
);

CREATE TABLE REGIAO_NORDESTE(
etNordeste_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
etNome VARCHAR(100) NOT NULL,
dt_dia DATE NOT NULL,
ttl_casos VARCHAR(25) NOT NULL,
ttl_mortes VARCHAR(25) NOT NULL,
vci_1dose VARCHAR(25) NOT NULL,
vci_2dose VARCHAR(25) NOT NULL,
vci_3dose VARCHAR(25) NOT NULL,
vci_4dose VARCHAR(25) NOT NULL,
vci_doseUnica VARCHAR(25) NOT NULL,
nvCasos_hr VARCHAR(25) NOT NULL,
recuperados VARCHAR(25) NOT NULL,
nvMortes_hr VARCHAR(25) NOT NULL,
profissionais_infctd VARCHAR(25) NOT NULL,
publico_infantil VARCHAR(25) NOT NULL,
totalLeitos_UTI VARCHAR(25) NOT NULL,
leitosOcpd_UTI VARCHAR(25) NOT NULL,
leitosLivres_UTI VARCHAR(25) NOT NULL,
totalLeitos_CLINICOS VARCHAR(25) NOT NULL,
leitosOcpd_CLINICOS VARCHAR(25) NOT NULL,
leitosLivres_CLINICOS VARCHAR(25) NOT NULL,
dosesDistribuidas_ND VARCHAR(25) NOT NULL
);


CREATE TABLE REGIAO_CENTRO_OESTE(
et_Sudeste_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
etNome VARCHAR(100) NOT NULL,
dt_dia DATE NOT NULL,
ttl_casos LONG NOT NULL,
ttl_mortes FLOAT NOT NULL,
vci_1dose LONG NOT NULL,
vci_2dose LONG NOT NULL,
vci_3dose LONG NOT NULL,
nvCasos_hr CHAR(25) NOT NULL,
recuperados LONG NOT NULL,
nvMortes_hr CHAR(25) NOT NULL,
profissionais_infctd CHAR(25) NOT NULL,
publico_infantil CHAR(25) NOT NULL,
totalLeitos_UTI FLOAT NOT NULL,
leitosOcpd_UTI FLOAT NOT NULL,
leitosLivres_UTI FLOAT NOT NULL,
totalLeitos_CLINICOS CHAR(25) NOT NULL,
leitosOcpd_CLINICOS CHAR(25) NOT NULL,
leitosLivres_CLINICOS CHAR(25) NOT NULL,
dosesDistribuidas_SD LONG NOT NULL
);


CREATE TABLE REGIAO_SUDESTE(
et_Sudeste_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
etNome VARCHAR(100) NOT NULL,
dt_dia DATE NOT NULL,
ttl_casos LONG NOT NULL,
ttl_mortes FLOAT NOT NULL,
vci_1dose LONG NOT NULL,
vci_2dose LONG NOT NULL,
vci_3dose LONG NOT NULL,
nvCasos_hr CHAR(25) NOT NULL,
recuperados LONG NOT NULL,
nvMortes_hr CHAR(25) NOT NULL,
profissionais_infctd FLOAT NOT NULL,
publico_infantil FLOAT NOT NULL,
totalLeitos_UTI FLOAT NOT NULL,
leitosOcpd_UTI FLOAT NOT NULL,
leitosLivres_UTI FLOAT NOT NULL,
totalLeitos_CLINICOS CHAR(25) NOT NULL,
leitosOcpd_CLINICOS CHAR(25) NOT NULL,
leitosLivres_CLINICOS CHAR(25) NOT NULL,
dosesDistribuidas_SD LONG NOT NULL
);

CREATE TABLE tipo_VACINAS(
  id_vacina INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome VARCHAR(255) NOT NULL,
  quantidade LONG NOT NULL,
  labolatorio VARCHAR(255) NOT NULL,
  origem VARCHAR(100) NOT NULL,
  tecnologia VARCHAR(100) NOT NULL,
  transfeTecnologia TEXT NOT NULL,
  voluntarioEnCliBrasil LONG NOT NULL,
  populacao VARCHAR(255) NOT NULL,
  localTeste TEXT DEFAULT NULL,
  protocolo TEXT NOT NULL,
  aprovacao VARCHAR(20) NOT NULL
);

INSERT INTO REGIAO_NORTE VALUES
(NULL,'Amazonas','2022-09-05','614.314','14.291','1.878.746','1.645.477','938.390',' ',' ','106','598.954','0',' ','58.087','352','6','213','5.559','2.359','3.200','9.934.250'),
(NULL,'Roraima','2022-09-05','452.841','441.671','345.887','122.944','0','172.353',' ',' ','0','4.330','5.915','156',' ','5','151','433','30','403','21.547.9'),
(NULL,'Amapá','2022-09-05','178.115','2.158','581.505','678.267','678.207','0',' ',' ',' ',' ',' ','890',' ','14',' ',' ','24',' ','1.338.354'),
(NULL,'Tocantins','2022-09-05','343.925','4.199','1.153.423','1.021.320','424.871',' ',' ','2','339.594','0',' ','18.235','185','3','182','148','6','64','3.413.055'),
(NULL,'Pará','2022-09-05','833.804','18.760','6.869.551','6.636.421','2.481.049','357',' ',' ','792.200','0',' ','36.328','38','10','28','43','10','33','18.160.924'),
(NULL,'Rondônia','2022-09-05','454.953','7.353','1.310.941','1.143.343','508.729','340.000',' ',' ',' ','0','20.303','5.350','65','16','49','46','6','40','11.020'),
(NULL,'Acre','2022-09-05','149.228','2.027','180.827.513','170.186.128','102.781.006',' ',' ','0','147.514','0','92.004','50.010','40','39','01','20','13','07','253.070');

SELECT * FROM REGIAO_NORTE;

SELECT * FROM REGIAO_SUL;
INSERT INTO REGIAO_SUL VALUES
(NULL,'Rio Grande do Sul','2022-09-05','272.120','684.000','27167741','8.997.725','5.613.681','0','2.666.622','0','8.310','2.908','61','61','0','40','32','8','365,746'),
(NULL,'Paraná','2022-09-05','27.400','45.125','10.125.486','10125486','6.426.761',' ','15.374',' ','3.980','2.143','90','68','22','76','53','23','1.326.227'),
(NULL,'Santa Catarina','2022-09-05','1.866.508','22.368','6307947','5.981.197','3.083.374','0','583.085','0','2.340','9.230','70','23','47','25','25','0','2.263.441');

SELECT * FROM REGIAO_SUL;



INSERT INTO REGIAO_NORDESTE VALUES
(NULL, 'Bahia','2022-09-02','1.686.670','30.660','11.680.154','11.116.462','7.156.662','2.279.599','636.149','679','1.655.670','11','50.384','1.725.449','190','22','168','292','52','140','300.00'),
(NULL, 'Maranhão','2022-09-02','468.943','10.987','5.722.458','4.761.328','2.017.735','453.758','114.538','166','456.286','1','5504','670.337','30','0','30','30','0','30','14.798.129'),
(NULL, 'Ceará','2022-09-02','1.380.424','27.570','8.206.932','7.947.098','5.073.801','20.058','262.656','0','1.235.521','0','12.531','16.954','396','180','216','658','266','372','23.682.788'),
(NULL, 'Piaui','2022-09-02','398.577','7.938','3.101.751','2.894.625','240.520','160.917.174','1.896.476','0','390.566','1','438','66.762','56','19','37','180','49','131','135.000'),
(NULL, 'Pernambuco','2022-09-02','1.500.241','22.207','8.445.599','7.704.285','343.566','63.520','4.470.574','0','40.088','0','1.163','304.141','686','480','206','806','249','602','2.603.840'),
(NULL, 'Alagoas','2022-09-02','320.000','7.116','2.608.583','2.316.234','22.050','659.030','1.188.776','0','311.823','0','6.171','3.0516','41','4','37','123','4','119','2.603.840'),
(NULL, 'Sergipe','2022-09-02','338.197','6.429','1.987.208','1.866.848','459.378','40.125','1.132.545','109','335.823','03','73','22.318','17','10','7','85','12','73','3.789.957'),
(NULL, 'Paraiba','2022-09-02','651.000','10.398','3.532.685','3.370.443','414.772','86.023','2.062.235','0','436.101','0','4.000','3.751.119','10','9','1','30','30','0','11.146.855'),
(NULL, 'Rio Grande do Norte','2022-09-02','2.715.49','40.889','2.936.659','2.751.504','621.862','3.003.065','1.794.110','0','2.663.424','0','9.816','172.695','55','19','36','52','15','37','8.905.542');

SELECT * FROM REGIAO_NORDESTE;



INSERT INTO REGIAO_SUDESTE VALUES
(NULL,'Espirito Santo','2022-09-05','121.110','684.001','3.458.82','3.718.043','256.273','0','403.053','0','11.083','39.129','32','9','23','6','0','6','82.862'),
(NULL,'Minas Gerais','2022-09-05','3.873.489','63.617','18.079.621','16.509.733','11.147.810','0','207.252','0','15.643','37.000','1.368','491','877','7.868','2528','5.240','55.736.629'),
(NULL,'Rio de Janeiro','2022-09-05','2.490','75.479','14.461.791','13.055.215','7.634.523','0','101.300','0','5.500','40.000','20','20','0',' ',' ',' ','203.080.000'),
(NULL,'São Paulo','2022-09-05','6.404','174.000','11.940.616','11.298.372','8.108.837','0','382.200','0','257.000','790.000','2790','1255','1535','8.907','4542','4365','1.600.000');

SELECT * FROM REGIAO_SUDESTE;




INSERT INTO REGIAO_CENTRO_OESTE VALUES
(NULL,'Goiais','2022-09-04','1.678.627','17.479','5.860.450','5.267.472','2.655.739','416','350.498','0',' ',' ','120','70','50','54','07','47','12.908.20'),
(NULL,'Mato Grosso','2022-09-05','826.859','1.4930','2.789.540','2.488.015','1.069.206','523','730.341','120','5.680','3.129','78','14','64','89','83','03','350.879.090'),
(NULL,'Distrito Federal','2022-09-04','837.618','11.825','2.542.263','2.394.744','2.345.765','0','719.143','0','6.340','5.760','24','13','11','90','67','30','7.585.117');

SELECT * FROM REGIAO_CENTRO_OESTE;




INSERT INTO tipo_VACINAS 
VALUES (NULL,'Chadox 1 NCOV 19','20.000','Astrazeneca e Universidade de Oxford','Reino Unido','Adenovírus vetor','Sim, para Biomanguinhos','10.000','≥ 18 anos','SP, RJ, BA, RS e RN','COV 003','aprovado'),
       (NULL,'Coronavac','25.000','Sinovac e Instituto Butantan','China','Vírus inativado','Sim, para o Instituto Butantan','13.060','≥ 18 anos','SP, RJ, RS, MG, PR e DF','COV-02-IB','aprovado'),
       (NULL,'Comirnaty','10.000','Pfizer-Wyeth','Estados Unidos e Europa','RNA','Não','3.100','≥ 16 anos','SP e BA','C4591001','aprovado'),
       (NULL,'INO-4800','5.000','Inovio Pharmaceuticals, Inc. / Patheon, Thermo Fisher Scientific','Estados Unidos','vacina de DNA com eletroporação','Não','350',' ≥ 18 anos','SP, RJ, RS e SC','COVID19-311 ','aprovado'),
       (NULL,'Janssen Vaccine','10.000','Janssen-Cilag','Europa','Adenovírus vetor','Não','7.560','≥ 18 anos','SP,RJ, RS,PR, MG,BA, RN, DF, MT, MS e SC','VAC 31518 COV 3001','aprovado'),
       (NULL,'AZD2816 (Vacina variante da AZD1222)','5.000','Astrazeneca','Brasil','vetor de adenovírus recombinante','Não','800 ','≥ 18 anos','BA, RN, RS, SP, PR e DF','D7220C00001','aprovado'),
       (NULL,'Butanvac','50.000','Instituto Butantan','Brasil','Vacina de vírus quimérico, inativado, produzida em ovos','Não, apenas do banco de semente do vírus','6496','≥ 18 anos','SP','NCV-01-IB','aprovado'),
       (NULL,'Vacina para Covid-19 de partícula semelhante ao Coronavírus (COVLP)','5.000','Medicago R&D','Canadá','Partícula semelhante ao SARS-COV-2 ou CoVLP','Não','3.500',' ≥ 18 anos','SP, RJ, RS, MG, PR e DF','CP-PRO-CovLP-021','aprovado'),
       (NULL,'Vacina inativada contra SARS-CoV-2','15.000','Institute of Medical Biology Chinese','China','vírus inativado','não','7.992','≥ 18 anos','SP, GO, RJ e SC','20200404','aprovado'),
       (NULL,'SCB-2019 (Clover)','20.000','Clover Biopharmaceuticals AUS Pty Ltda','China/Austrália','Subunidade protéica','Não','12.100','≥ 18 anos','RS, RN, RJ','CLO-SCB-2019-003','aprovado'),
       (NULL,'Vacina de RNAm para Sars-CoV-2 (Sanofi Pasteur)','3.000','Sanofi Pasteur','Estados Unidos e Canadá','RNA encapsulado dentro de uma nanoarticulação lipídica','Não','150','≥ 18 anos','Ba, MG, MS e RJ','VAW 0001','aprovado'),
       (NULL,'Vacina RNA MCTI Cimatec HDT','3.000','HDT Biocorp','Estados Unidos','RNA autorreplicante','Sim','90','Entre 18 e 55 anos','BA','HDT-001 ','aprovado'),
       (NULL,'Covaxin (Precisa)','10.000','Precisa Comercialização de Medicamentos','Índia','Vírus inativado','Não','5.000','≥ 18 anos','SP. RJ e MS','BBIL/BBV152-C/2020','Cancelado');
       
  
  
SELECT * FROM tipo_VACINAS;
