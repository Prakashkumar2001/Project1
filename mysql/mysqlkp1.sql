use prakash;

create table employee(
emp_id int primary key,
empname varchar(30),
job_decr varchar(20),
salary int
);
insert into employee(emp_id,empname,job_decr) values(14,"prakash","developer");

insert into employee values(13,"ram","bpo",70000);
insert into employee values(12,"raji","bpo",78000);
insert into employee values(11,"raman","hr",76000);
insert into employee values(10,"pugal","developer",78000);
insert into employee values(9,"prathap","developer",43000);
insert into employee values(8,"virat","batter",80000);
insert into employee values(7,"pandiya","bowler",30000);
insert into employee values(6,"rohit","batter",90000);
insert into employee values(5,"rahul","batter",97000);
insert into employee values(4,"rishaph","keeper",20000);
insert into employee values(3,"kane","batter",76000);
insert into employee values(2,"siraj","bowler",60000);
insert into employee values(1,"prakash","developer",100000);

select *from employee;

alter table employee add column debut_date date;
alter table employee drop column debut_date;

alter table employee add column ages int;
alter table employee drop column ages;

alter table employee alter salary set default 80000;

describe employee;

update employee
 set job_decr="wk batter" 
 where emp_id=1;


select *from employee where empname like 'p%';
select *from employee where empname like 'p%p';
select *from employee where empname like '%i%';
select *from employee where empname not like 'p%';
select *from employee where job_decr="bowler" or job_decr="batter";
select *from employee where job_decr in("bowler","developer" );
select *from employee where job_decr not in("bowler","developer");
select *from employee where job_decr not in("bowler","developer","batter");
select *from employee where salary between 60000 and 100000;

select *from employee where empname<>"virat";
select *from employee where job_decr<>"batter";
select *from employee where empname="virat" ;


select *from employee where salary>40000 and job_decr="batter";
select *from employee where salary>40000 and job_desc="batter";
select emp_id,empname,salary from employee where salary>60000;

select max(salary) as_second_highest_salary from employee where salary<(select max(salary) from employee);
select empname ,length(empname) from employee;
select min(salary) from employee;
select  avg(salary) from employee;
select sum(salary) from employee;
select count(*) total_employee from employee;
select upper(empname) from employee;
select empname,left(job_decr,3) from employee;


select emp_id,empname,salary/12 as monthly_salary from employee;

select *from employee order by salary desc ;
select *from employee order by salary;

select *from employee order by (case job_decr 
           when "batter" then 1 
              when "bowler" then 2
                 when "wt batter" then 3
                    when "developer" then 4
                       when "hr" then 5
                       else 100 end
           );
           select avg(salary) from employee;        
           select job_decr from employee group by job_decr;
          select job_decr,avg(salary) from employee group by job_decr;
             select job_decr,count(emp_id) from employee group by job_decr;
           select job_decr,count(emp_id) from employee group by job_decr having count(emp_id)>1;

            select job_decr,count(emp_id) from employee group by job_decr having count(emp_id)>1 order by job_decr;
    
           
           
           

























select date_add(curdate(),interval 2 week);
select datediff("2023/06/05","2026/06/05");
select datediff(curdate(),"2024/01/05");
select datediff("2089/09/21",curdate());
select curdate();
select date(now());
select now();


