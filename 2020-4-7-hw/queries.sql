use hw3;

#ex1
select b.name as 'broker name', b.phone as 'phone', a.price as 'price', a.size as 'size', a.location as 'location' from broker b inner join accomodation a on a.broker_id = b.id where b.name = "Alex";

#ex2
select b.name as 'broker name', b.phone as 'phone', a.location as 'location' from broker b inner join accomodation a on a.broker_id = b.id where a.location like "Mladost%";

#ex3
select a.name as 'name', b.phone as 'phone', a.price as 'price', a.size as 'size' from broker b inner join accomodation a on a.broker_id = b.id where a.location like "Mladost%" and a.price >= 500 and a.price <=700 and a.size >=50 and a.size <=70;

#ex4
select a.name as 'name', b.phone as 'phone', a.price as 'price', a.size as 'size' from broker b inner join accomodation a on a.broker_id = b.id where (a.location like 'Mladost%'  or a.location = 'Izgrev' or a.location = 'Poligona') and a.price >= 500 and a.price <=700 and a.size >=50 and a.size <=70 order by a.size;

#ex5
select a.location as 'Location', min(a.price) as 'Minimum Price',avg(a.price) as 'Average Price', max(a.price) as 'Maximum Price' from accomodation a group by a.location;