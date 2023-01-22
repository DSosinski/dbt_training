select 
    course_id,
    course_url,
    created created_date,
    max(title) title
from 
    {{ ref('src_courses')}}
group by 
    course_id,
    course_url,
    created
