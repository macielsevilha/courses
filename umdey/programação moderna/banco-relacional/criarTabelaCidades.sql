CREATE TABLE IF NOT EXISTS cidades (
    id INT UNSIGNED not null auto_increment,
    nome varchar(255) not null,
    estado_id int UNSIGNED not null, 
    area decimal(10, 2),
    primary key (id),
    foreign key (estado_id) references `estados` (id)
);

-- CREATE TABLE IF NOT EXISTS teste (
 --   id int unsigned not null auto_incremnet primary key
-- );

-- drop table if exists teste;