USE ecommerce;

-------------------------------------------------------
-- Tabela de Auditoria
-------------------------------------------------------

CREATE TABLE clientes_excluidos(

    id INT,

    nome VARCHAR(100),

    email VARCHAR(100),

    data_exclusao DATETIME

);
