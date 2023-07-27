create table team 
( team varchar(20)
);

insert into team
values ('India'),('Pak'),('Aus'),('Eng');

select * from team;

with cte as(
select *, row_number() over(order by team) rnum
from team
)
select c1.team,c2.team
from cte c1
join cte c2
on c1.rnum<c2.rnum




