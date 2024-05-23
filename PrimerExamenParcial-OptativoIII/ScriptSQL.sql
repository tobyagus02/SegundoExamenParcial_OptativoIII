CREATE TABLE public.cliente (
	id serial NOT NULL,
	id_banco serial NOT NULL,
	nombre varchar(50) NOT NULL,
	apellido varchar(50) NOT NULL,
	documento varchar(15) NOT NULL,
	direccion varchar(50) NULL,
	mail varchar(100) NULL,
	celular varchar(50) NULL,
	estado varchar(10) NOT NULL,
	CONSTRAINT cliente_pk PRIMARY KEY (id),
	CONSTRAINT cliente_unique UNIQUE (nombre,apellido,documento)
);

CREATE TABLE public.factura (
	id serial NOT NULL,
	id_banco serial NOT NULL,
	nro_factura varchar(20) NULL,
	fecha_hora date NULL,
	total decimal(6, 2) NULL,
	total_iva5 decimal(6, 2) NULL,
	total_iva10 decimal(6, 2) NULL,
	total_iva decimal(6, 2) NULL,
	total_letras varchar(50) NULL,
	sucursal integer NULL,
	CONSTRAINT factura_pk PRIMARY KEY (id),
	CONSTRAINT factura_unique UNIQUE (id_banco)
);