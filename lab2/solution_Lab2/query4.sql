SELECT P.name FROM Persons P, Tenants TWHERE P.SSN = T.LeaseTenantSSN AND T.Rent > 0.5 * P.Salary;-- Equivalent query

SELECT P.name FROM Persons P, Tenants TWHERE P.SSN = T.LeaseTenantSSN AND 2.0 * T.Rent > P.Salary;-- Equivalent query

SELECT P.name FROM Persons PWHERE P.SSN IN (SELECT T.LeaseTenantSSN FROM Tenants T WHERE 2 * T.Rent> P.Salary);