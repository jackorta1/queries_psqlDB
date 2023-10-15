select 'employess',last_name ||'  '|| first_name  as company,address,city from employees

union all
select 'suppliers' ,company_name as company, address,city from suppliers 