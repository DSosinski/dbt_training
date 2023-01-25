select 
    course_id,
    students,
    reviews,
    batch_no,
    batch_date
From
    {{ ref('src_courses')}}
order by 
    course_id,
    batch_no,
    batch_date