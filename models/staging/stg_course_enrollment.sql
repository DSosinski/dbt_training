select 
    course_id,
    course_url,
    students,
    reviews,
    batch_no,
    batch_date
From
    {{ ref('src_courses')}}
order by 
    course_id,
    course_url,
    batch_no,
    batch_date