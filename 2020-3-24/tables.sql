drop database if exists school; 
create database school;
use school;

create table person(
	id int primary key auto_increment not null,
    name varchar(50) not null,
    age int not null,
    average_weight float default 0.0,
    gender enum('M', 'F')
);

create table weight_data(
	id int primary key auto_increment not null,
    weight float,
    created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp,
    person_id int not null,
    foreign key (person_id) references person(id) on delete cascade
);
