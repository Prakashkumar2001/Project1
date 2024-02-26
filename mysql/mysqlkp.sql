use prakash;

create table cricket(player_no int primary key,player_name varchar(20),matches int,role varchar(20),runs int,wickets int,
coun_id int,foreign key(coun_id) references country(country_id));
insert into cricket values(11,"shami",90,"bowler",3000,290,1);
insert into cricket values(10,"stokes",40,"alrounder",1000,200,4);
insert into cricket values(9,"bumbra",90,"bowler",3000,240,1);
insert into cricket values(8,"buttler",98,"bowler",2000,190,4);
insert into cricket values(7,"latham",78,"batsman",3000,22,2);
insert into cricket values(6,"convey",98,"batter",12000,220,2);
insert into cricket values(5,"maxwell",49,"allrounder",18000,100,3);
insert into cricket values(4,"smith",67,"batsman",10000,13,3);
insert into cricket values(3,"kane",89,"batsman",12000,23,2);
insert into cricket values(2,"rohit",87,"batsman",22000,22,1);
insert into cricket values(1,"virat",100,"batsman",32000,20,1);
insert into cricket values(12,"kuldhep",90,"bowler",3000,290,null);
select *from cricket;

create table country(country_id int primary key,country_name varchar(20) not null);
insert into country values(5,"england");
insert into country values(4,"england");
insert into country values(3,"australia");
insert into country values(2,"newzland");
insert into country values(1,"india");
select *from country;



select cricket.player_no,cricket.player_name,cricket.matches,
cricket.runs,cricket.wickets,country.country_name from 
country,cricket where cricket.coun_id=country.country_id;

select cricket.player_no,cricket.player_name,cricket.matches,
cricket.runs,cricket.wickets,country.country_name from 
country,cricket where cricket.coun_id=country.country_id order by cricket.player_no;

select cricket.player_no,cricket.player_name,cricket.matches,
cricket.runs,cricket.wickets,country.country_name from 
cricket inner join country on cricket.coun_id=country.country_id order by cricket.player_no;









select *from cricket 
where coun_id=(select country_id from country where country.country_name="india");




use prakash;

create table studentdetails (roll_no int not null,sname varchar(20));


create table studentcourse (course_name varchar(20), roll_no int not null);
insert into studentcourse values("css",7),("javva",3),("css",2),("python",1),("python",8),("html",11),("javva",9),("c+++",12);

select *from studentdetails;
select *from studentcourse;

select studentdetails.sname,studentcourse.course_name  from 
studentdetails right join studentcourse on studentdetails.roll_no=studentcourse.roll_no;
select studentdetails.sname,studentcourse.course_name  from 
studentdetails left join studentcourse on studentdetails.roll_no=studentcourse.roll_no;
select studentcourse.course_name ,studentdetails.sname from 
studentdetails inner join studentcourse on studentdetails.roll_no=studentcourse.roll_no;










