create database ipl_match_data ; 

use ipl_match_data ; 


----- Task 2  ----- 
create table mi_match 
SELECT *
FROM ipl_match_data
WHERE Team_1 = 'Mumbai Indians'
   or Team_2 = 'Mumbai Indians';
   
select *from mi_match ; 
   
select * from ipl_match_data ; 

create table total_matches_playby_eachteam as
select Team_1 , Team_2  ,  
count(*) as total_matches 
from ipl_match_data
group by Team_1 , Team_2 ;

select * from total_matches_playby_eachteam ; 



show tables ;