

use eddb;

select (Firstname + ' ' + Lastname) as Name , SAT, GPA from Student
order by GPA desc