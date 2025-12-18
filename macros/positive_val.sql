{% macro positive_val(model,column)%}
select * from model where column>0
{% endmacro %}