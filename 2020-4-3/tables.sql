drop database if exists ex3;
create database ex3;
use ex3;

create table broker(
	id int primary key auto_increment not null,
    name varchar(50) not null,
    age int,
    phone varchar(18)
);

create table accomodation(
	id int primary key auto_increment not null,
    price int not null,
    name varchar(50) not null,
    size int not null,
    location ENUM('Mladost1', 'Mladost2', 'Mladost3', 'Suhata Reka'),
    broker_id int not null,
    foreign key (broker_id) references broker(id) on delete cascade
);