create table students(
student_id int primary key,
full_name varchar(100) not null,
gender char(1) CHECK (gender IN ('M','F'))
);

create table courses(
course_id int primary key,
course_name varchar(100) not null,
credits int 
);
 
 create table results(
 result_id int primary key,
 student_id int,
 course_id int,
 mark int CHECK (mark BETWEEN 0 AND 100),
 foreign key (student_id) references students (student_id),
 foreign key (course_id) references courses(course_id)
 );
 
