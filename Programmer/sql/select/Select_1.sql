select MEMBER_ID, MEMBER_NAME, GENDER, to_char(DATE_OF_BIRTH, 'YYYY-MM-DD') as DATE_OF_BIRTH
from MEMBER_PROFILE
where to_char(DATE_OF_BIRTH, 'MM') = '03'
and GENDER = 'W'
and TLNO is not null
order by MEMBER_ID

select MEMBER_ID, MEMBER_NAME, GENDER, to_char(DATE_OF_BIRTH, 'YYYY-MM-DD') as DATE_OF_BIRTH
from MEMBER_PROFILE
where DATE_OF_BIRTH like '%MAR%'
and GENDER = 'W'
and TLNO is not null
order by MEMBER_ID

select MEMBER_ID, MEMBER_NAME, GENDER, to_char(DATE_OF_BIRTH, 'YYYY-MM-DD') as DATE_OF_BIRTH
from MEMBER_PROFILE
where to_char(DATE_OF_BIRTH, 'YYYY-MM-DD') like '%03%'
and GENDER = 'W'
and TLNO is not null
order by MEMBER_ID