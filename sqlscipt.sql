CREATE DATABASE EAD;
CREATE TABLE ROLES (
ID INTEGER NOT NULL IDENTITY(1,1), 
"NAME" VARCHAR(255), 
PRIMARY KEY (ID)
);
CREATE TABLE EMPLOYEES (
ID INTEGER NOT NULL IDENTITY(1,1), 
"NAME" VARCHAR(255), 
ROLE_ID INTEGER, 
PRIMARY KEY (ID)
FOREIGN KEY (ROLE_ID) REFERENCES ROLES(ID)
);
CREATE TABLE TASKS (
ID INTEGER NOT NULL IDENTITY(1,1), 
DESCRIPTION VARCHAR(255), 
EMPLOYEE_ID INTEGER, 
PRIMARY KEY (ID)
FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES(ID)
);

