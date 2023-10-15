
SELECT Employees.Employee_ID,
       Employees.First_Name || ' ' || Employees.Last_Name AS Full_Name,
       Territories.Territory_Description
FROM Employees
INNER JOIN Employee_Territories ON Employees.Employee_ID = Employee_Territories.Employee_ID
INNER JOIN Territories ON Employee_Territories.Territory_ID = Territories.Territory_ID;


--select * from employees


-- select * from employee_territories 
 --select * from territories
 
 --select * from coutry