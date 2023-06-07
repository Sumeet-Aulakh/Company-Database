CREATE TABLE EMPLOYEE (
 Fname varchar (15) NOT NULL,
 Minit char (1) NULL,
 Lname varchar (15) NOT NULL,
 Ssn char (9) NOT NULL,
 Bdate date NULL,
 Address varchar (30) NULL,
 Sex char (1) NULL,
 Salary decimal (10, 2) NULL,
 Super_ssn char (9) NULL,
 Dno int NOT NULL,
PRIMARY KEY ( Ssn )
) ;
CREATE TABLE DEPARTMENT (
 Dname varchar (15) NOT NULL,
 Dnumber int NOT NULL,
 Mgr_ssn char (9) NOT NULL,
 Mgr_start_date date NULL,
PRIMARY KEY ( Dnumber ),
UNIQUE ( Dname )
) ;
CREATE TABLE DEPT_LOCATIONS (
 Dnumber int NOT NULL,
 Dlocation varchar (15) NOT NULL,
PRIMARY KEY 
( Dnumber , Dlocation )
) ;
CREATE TABLE PROJECT (
 Pname varchar (15) NOT NULL,
 Pnumber int NOT NULL,
 Plocation varchar (15) NULL,
 Dnum int NOT NULL,
PRIMARY KEY ( Pnumber ),
UNIQUE ( Pname )
);
CREATE TABLE WORKS_ON (
 Essn char (9) NOT NULL,
 Pno int NOT NULL,
 Hours decimal (3, 1) NULL,
PRIMARY KEY ( Essn , Pno )
);

CREATE TABLE DEPENDENT (
 Essn char (9) NOT NULL,
 Dependent_name varchar (15) NOT NULL,
 Sex char (1) NULL,
 Bdate date NULL,
 Relationship varchar (8) NULL,
PRIMARY KEY ( Essn , Dependent_name )
) ;

