CREATE TABLE IF NOT EXISTS cidades (
    id INT UNSIGNED not null auto_increment,
    nome varchar(255) not null,
    estado_id int unsigned not null, 
    area decimal(10, 2),
    primary key (id),
    foreign key (estados_id) references `estados` (id)
);
