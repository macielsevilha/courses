select * from estados where id = 25

insert into cidades (nome, area, estado_id)
values ('Campinas', 795, 25)

insert into cidades (nome, area, estado_id)
values ('NiterÃ³i', 133.9, 23)

insert into cidades (nome, area, estado_id)
values (
    'Carauru',
    920.6,
    (select id from estados WHERE sigla = 'PE')
)

insert into cidades 
      (nome, area, estado_id)
values (
    'Juzeiro do Norte',
    248.2,
    (select id from estados where sigla = 'CE')
)

select * from cidades


INSERT INTO produtos(promocional, desc_prod, undd_prod, preco_prod, codigo_bar_prod)
       'Protetor solar FPS 50 ? Sundown','7.99','98736354753'
       'Desodorante masculino ? Nivea','16.00','98765432455'
       'Absorvente higiênico ? Always','20.99','44343556543'
       'Fio dental ? Diversas marcas','4.00','34554643345'
       'Máscara de cílios ? Maybilline','3.99','43453534676'
       'Creme hidratante para rosto ? Nivea','17.99','4567435653'
       'Brinco infantil ? Diversas marcas','33.00','4535345344'
       'Colônia infantil ? Diversas marcas','30.00','45353467783'
       'Protetor diário ? Always','9.99','45645678934'
       'Shampoo + condicionador ? Seda','12.00','94873463945'

INSERT INTO remedios(nome_remd, preco_remd, dt_validade, bula_remd, codigo_barra, peso_remd)
VALUES ('Protetor solar FPS 50 ? Sundown','7.99','2024/07/20','8374628236483','98736354753', '2 KG'),
       ('Desodorante masculino ? Nivea','16.00','2024/07/20','8374628236483','98765432455', '3 KG'),
       ('Absorvente higiênico ? Always','20.99','2024/07/20','8374628236483','44343556543', '4 KG'),
       ('Fio dental ? Diversas marcas','4.00','2024/07/20','8374628236483','34554643345', '3.4 KG'),
       ('Máscara de cílios ? Maybilline','3.99','2024/07/20','8374628236483','43453534676', '45 KG'),
       ('Creme hidratante para rosto ? Nivea','17.99','2024/07/20','8374628236483','4567435653', '4 KG'),
       ('Brinco infantil ? Diversas marcas','33.00','2024/07/20','8374628236483','4535345344', '34 KG'),
       ('Colônia infantil ? Diversas marcas','30.00','2024/07/20','8374628236483','45353467783', '3 KG'),
       ('Protetor diário ? Always','9.99','2024/07/20','8374628236483','45645678934', '3 KG'),
       ('Shampoo + condicionador ? Seda','12.00','2024/07/20','8374628236483','94873463945', '4 KG');














       