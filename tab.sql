CREATE TABLE emp (
	empno int2 NOT NULL,
	ename varchar(10) NULL,
	job varchar(9) NULL,
	mgr int2 NULL,
	hiredate timestamp NULL,
	sal numeric(7, 2) NULL,
	comm numeric(7, 2) NULL,
	deptno int2 NULL,
	CONSTRAINT sys_c0012572 PRIMARY KEY (empno),
	CONSTRAINT sys_c0012573 FOREIGN KEY (mgr) REFERENCES emp(empno)
