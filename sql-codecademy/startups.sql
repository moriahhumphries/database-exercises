-- created using codecademy database
select *
from startups;

select count(*)
from startups;

select sum(valuation)
from startups;

select max(raised)
from startups
where stage = 'Seed';

select min(founded)
from startups;

select avg(valuation)
from startups;

select category, avg(valuation)
from startups
group by category;

select category, round(avg(valuation), 2)
from startups
group by category;

select category, round(avg(valuation), 2)
from startups
group by 1
order by 2 DESC;

select category, count(*)
from startups
group by category;

select category, count(*)
from startups
group by category
having count(*) > 3
order by 2 DESC;

select location, avg(employees)
from startups
group by location;

select location, avg(employees)
from startups
group by location
having avg(employees) > 500;
