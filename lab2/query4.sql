-- Lab2, Query 4
-- Find the names of all persons who lease an apartment whose rent is higher than half of that person's salary.


SELECT Persons.Name
FROM Persons, Tenants
WHERE Persons.Salary/2 > Tenants.Rent AND Tenants.LeaseTenantSSN = Persons.SSN;
