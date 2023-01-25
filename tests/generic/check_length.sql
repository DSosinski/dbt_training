{% test check_length(model, column_name, max) %}

{{ config(severity = 'warn') }}

select * 
from  {{ model }}
where length({{ column_name }}) > {{ max }}

{% endtest %}