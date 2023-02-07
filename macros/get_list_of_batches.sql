{% macro get_list_of_batches() %}

{% set list_of_batches %}
    select distinct batch_no from {{ ref('src_courses')}} order by batch_no limit 100
{% endset %}

{% set results = run_query(list_of_batches) %}

{% if execute %}
{# Return the first column #}
{% set results_list = results.columns[0].values() %}
 {% do log("Value " ~ results_list, info=true) %}
{% else %}
{% set results_list = [] %}
{% endif %}

{{return(results_list)}}

{% endmacro%}