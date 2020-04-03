select * from broker;

select * from accomodation;

select b.name as 'Broker Name', b.id, a.broker_id, a.price, a.name, a.size, a.location, a.id from broker b inner join accomodation a on a.broker_id = b.id;