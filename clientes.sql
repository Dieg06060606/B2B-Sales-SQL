CREATE TABLE public.clientes (
	id_cliente int4 NOT NULL,
	primeiro_nome text NULL,
	sobrenome text NULL,
	data_nascimento date NULL,
	estado_civil text NULL,
	genero text NULL,
	educacao text NULL,
	id_cidade int4 NULL,
	CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente)
);