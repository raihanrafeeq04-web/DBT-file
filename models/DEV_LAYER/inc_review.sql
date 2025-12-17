{{
    config(
        materialized='incremental',
        on_schema_change='fail'
    )
}}

select * from {{ref('src_reviews')}}
where
{% if is_incremental()%}
 and review_date > (select max(review_date) from {{this}})
{% endif%}