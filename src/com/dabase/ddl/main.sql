
select * from person;
drop table person;
explain course;
delete from courses;
select * from courses;
desc courses;
create table courses (id varchar(10),
name varchar(100),
price int,
sessions int
);

create table courses (id varchar(10),
name varchar(100),
price int,
sessions int
);

create table stock (number int, name varchar(100),
category varchar(100)
);

select * from courses;
select * from stock;
select * from users;
select * from authorities;
select username,password,enabled from users where username='farhan15';
select username, authority from authorities where username ='farhan15';

create table users (
id int, username varchar(20), password varchar(24), enabled bit 
);

create table authorities (
username varchar(20), authority varchar(120)
);

INSERT INTO `test`.`users`
(`id`,
`username`,
`password`,
`enabled`)
VALUES
(3,'srinath','srinath',1);
INSERT INTO authorities
values ('srinath', 'role_user');

update authorities set authority='ROLE_ADMIN' where username='farhan10';

create table trainers (
 name varchar(20), email varchar(24),phone int,experience int,address varchar(124) 
);



create table calendar (course varchar(100),start_date timestamp, end_date timestamp, trainer varchar(100), sessions int(11));