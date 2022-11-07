
-- JOIN Лекция

create table City(
  id serial primary key,
  city_name varchar(40) unique not null
);

create table Person (
   id serial primary key,
   person_name varchar(40),
   city_id int not null
);

insert into City(city_name)
values ('Kiev'),
       ('Lviv'),
       ('Antalia'),
       ('Moscow'),
       ('Ivanovo'),
       ('Berlin');
       
insert into Person(person_name, city_id)
values ('Vadim', 2),
       ('Grigory', 3),
       ('Masha', 5),
       ('Anna', 6);
 
 insert into Person(person_name, city_id)
values ('Natalia', 8),
       ('Anatoly', 10);
         
 insert into Person(person_name, city_id)
values ('Irina', 4);
       
 delete from Person 
 where city_id = 4;
      
      
      
      
 select*from city;
select*from person;

-- join
-- Значение столбики city_id равны значениям столбиков id таблицы City
-- Join по значениям Person.city_id и City.id

select Person.person_name, City.city_name
from Person join City
on Person.city_id = City.id;

-- 
select Person.person_name, Person.city_id, City.city_name, City.id
from Person join City
on Person.city_id = City.id;

 -- left join - выводит первые строки iner join а потом остатки из левой таблицы
--Левая таблица - эта та, что написана слева от left join в данном случае Person 

select Person.person_name, Person.city_id, City.city_name, City.id
from Person left join City
on Person.city_id = City.id;


--right join выводит первые строки iner join а потом остатки из правой таблицы
--Правая таблица - эта та, что написана слева от right join данном случае  City


select Person.person_name, Person.city_id, City.city_name, City.id
from Person right join City
on Person.city_id = City.id;

-- Null - Это несуществующая ячейка, она не пустая, ее просто несуществует!

-- full outer join выводит сначало таблицу iner join затем остатки из левой таблицы потом остатки из правой таблицы
select Person.person_name, Person.city_id, City.city_name, City.id
from Person full outer join City
on Person.city_id = City.id;

-- Person.person_name до точки указываем таблицу (Person.), посте точки столбик таблицы (.person_name).
-- Если столбик уникальный, то можно таблицу не писать.

