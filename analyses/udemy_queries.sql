select 
    course_id,
    max(title) course_title,
    max(course_url) course_url,
    created created_date,
    max(title) title
from 
    {{ ref('src_courses')}}
group by 
    course_id,
    created
