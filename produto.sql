CREATE TABLE public.produto (
	id_subcategoria int4 NULL,
	id_produto int4 NULL,
	descricao_produto text NULL,
	id_marca int4 NULL,
	preco_unitario numeric(12, 2) NULL,
	tributos numeric(12, 2) NULL,
	custo numeric(12, 2) NULL
);