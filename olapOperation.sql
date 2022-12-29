create Table employees2
(
 eName varchar(MAX),eGender varchar(MAX),eSalary int,eCountry varchar(MAX)
);

insert into employees2 values('Haider','Male',110000,'Pakistan');
insert into employees2 values('Kifayat','Male',80000,'Pakistan');
insert into employees2 values('Rahul','Male',10000,'India');
insert into employees2 values('Anjali','Female',25000,'India');
insert into employees2 values('Prem','Male',80000,'India');
insert into employees2 values('Sam','Male',16000,'UK');
insert into employees2 values('Vicky','Female',65000,'UK');
insert into employees2 values('Anna','Female',15000,'UK');
insert into employees2 values('Miguel','Male',56000,'USA');
insert into employees2 values('Mary','Female',11000,'USA');
insert into employee

--Rollup--

select eCountry,sum(eSalary) as TotalSalary  From employees2
Group by Rollup(eCountry)

select eCountry,eGender,sum(eSalary) as TotalSalary  From employees2
Group by Rollup(eCountry,eGender)

select eCountry,eGender,sum(eSalary) as TotalSalary  From employees2
Group by Cube(eCountry,eGender)

--Slice--

select eGender,sum(eSalary) From employees2 where eCountry = 'India' Group by eGender 

--Dice--
select eGender,sum(eSalary) as TotalSalary From employees2 where eCountry = 'India' and eGender= 'Male' Group by eGender;