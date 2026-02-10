CREATE VIEW public.vw_resultado_financeiro
AS SELECT EXTRACT(year FROM v.data_venda) AS ano,
    sum(v.qtde::numeric * p.preco_unitario) AS receita_bruta,
    sum(v.desconto) AS desconto,
    sum(v.qtde::numeric * p.tributos) AS tributos,
    sum(v.valor_total) - sum(v.qtde::numeric * p.tributos) AS receita_liquida,
    sum(v.qtde::numeric * p.custo) AS custo,
    sum(v.valor_total) - sum(v.qtde::numeric * p.tributos) - sum(v.qtde::numeric * p.custo) AS lucro,
    round((sum(v.valor_total) - sum(v.qtde::numeric * p.tributos) - sum(v.qtde::numeric * p.custo)) / NULLIF(sum(v.valor_total) - sum(v.qtde::numeric * p.tributos), 0::numeric), 4) AS margem_percentual
   FROM vendas v
     JOIN produto p ON v.id_produto = p.id_produto
  GROUP BY (EXTRACT(year FROM v.data_venda));