
with dw_faturamento_ano as (

    select DATE_PART('year', purchased_at ) AS "Ano"
        ,sum(ap.price) as "Faturameto"
    from desenv.airbyte_purchases pur inner join desenv.airbyte_products ap
    on pur.product_id = ap.id
    group by 1
    order by 1

)


select * from dw_faturamento_ano
