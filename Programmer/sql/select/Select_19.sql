
-- case 1
SELECT NAME
from (
    select *
    from ANIMAL_INS 
    order by DATETIME
)
where rownum<=1


-- case 2
SELECT NAME 
from ANIMAL_INS 
where DATETIME = (
	select min(DATETIME) 
	from ANIMAL_INS
);


-- case 3
SELECT name
from(
    select name, 
    to_char(DATETIME, 'YYYY') as year, 
    to_char(DATETIME, 'MM') as month,
    to_char(DATETIME, 'DD') as day
    from ANIMAL_INS 
    order by year, month, day
    )
where rownum=1 
