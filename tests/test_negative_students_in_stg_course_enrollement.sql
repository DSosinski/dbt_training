select * 
from {{ ref('stg_course_enrollment') }}
where 
students < 0