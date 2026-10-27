select 9*123 from dual;

select sysdate(),current_timestamp(),now();

select now(),adddate(now(),2) from dual;

select now(),adddate(now(), interval 2 month) from dual;

select datediff('2025-07-19','2025-05-19') from dual;

select last_day(now()) from dual;

select extract(year from now()) from dual;

select extract(minute from now()) from dual;

select now(), date_format( now() , 'this is %y year' )from dual;

-- number functon 
select 24.654, round(24.654);

select 24.654, round(24.654),round(24.654,1), round(24.654,-1) from dual;

select round(364.32,-2) from dual;
select truncate(364.3287,-2) from dual;
select mod(11,2),pow(3,3),floor(11.999),ceil(9.001) from dual;