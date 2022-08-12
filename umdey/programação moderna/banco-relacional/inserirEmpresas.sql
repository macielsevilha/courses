
ALTER TABLE empresas MODIFY cnpj VARCHAR(14);

INSERT INTO empresas(nome, cnpj)
VALUES ('Bradesco', 95694186000131),
       ('Vale', 27887148000146),
       ('Cielo', 01598317000134);
