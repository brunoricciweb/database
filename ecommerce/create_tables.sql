USE ecommerce;

CREATE TABLE if not exists productos(
    id SERIAL,
    nombre VARCHAR(60),
    precio NUMERIC(11,2),
    stock INTEGER,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS facturas(
    numero SERIAL,
    cuil INTEGER,
    total NUMERIC(11,2),
    id_producto INTEGER,
    PRIMARY KEY (numero),
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);

insert into productos(nombre,precio,stock)
VALUES
('Mouse optico', 5000, 40),
('Teclado inalambrico', 20000, 22),
('Agua', 1000, 5);

-- Query para probar el trigger...
-- insert into facturas( cuil, id_producto, total)
-- values
-- (1234564, 6, 12111);
