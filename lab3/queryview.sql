-- Lab 3 2.6 Working with views

/*
2.6.2 Query a view
Write a query over the Home_Landlords view to answer the following question about “Overdue Landlords”:
"Give the name and rent for each landlord who lives in a house that he owns, and who also
has overdue rent on a tenancy for which he is the lease tenant. The name should be the
landlord’s name, and the rent should be the rent for a tenancy that is overdue.
*/

SELECT p.Name, t.Rent
FROM Persons p, Tenants t, Home_Landlords hl
WHERE p.SSN = hl.SSN AND t.RentOverdue = TRUE;

/*
Before running this query, recreate the Lab3 schema using the create_Lab3.sql script, and load the data using
the script load_values_Lab3.sql. That way, any changes that you’ve done for other parts of Lab3 won’t affect
the result. Then run the above “Overdue Landlords” query, and write the results in a comment.
*/

-- Results of "Overdue Landlords" query:
/*
              name              |  rent
--------------------------------+---------
 Catherine Washington           | 2200.00
 Catherine Washington           | 2060.00
 Catherine Washington           | 1940.00
 Catherine Washington           | 1882.00
 Catherine Washington           | 1802.40
 Catherine Washington           | 2201.10
 Catherine Washington           | 3104.10
 Catherine Washington           | 2310.50
 Catherine Washington           | 2200.00
 Catherine Washington           | 2060.00
 Catherine Washington           | 1940.00
 Catherine Washington           | 1882.00
 Catherine Washington           | 1802.40
 Catherine Washington           | 2201.10
 Catherine Washington           | 3104.10
 Catherine Washington           | 2310.50
 Robert Johnson                 | 2200.00
 Robert Johnson                 | 2060.00
 Robert Johnson                 | 1940.00
 Robert Johnson                 | 1882.00
 Robert Johnson                 | 1802.40
 Catherine Washington           | 1802.40
 Catherine Washington           | 2201.10
 Catherine Washington           | 3104.10
 Catherine Washington           | 2310.50
 Robert Johnson                 | 2200.00
 Robert Johnson                 | 2060.00
 Robert Johnson                 | 1940.00
 Robert Johnson                 | 1882.00
 Robert Johnson                 | 1802.40
 Robert Johnson                 | 2201.10
 Robert Johnson                 | 3104.10
 Robert Johnson                 | 2310.50
 Alex Jones                     | 2200.00
 Alex Jones                     | 2060.00
 Alex Jones                     | 1940.00
 Alex Jones                     | 1882.00
 Alex Jones                     | 1802.40
 Alex Jones                     | 2201.10
 Alex Jones                     | 3104.10
 Alex Jones                     | 2310.50
 Juan Rodriguez                 | 2200.00
 Juan Rodriguez                 | 2060.00
 Juan Rodriguez                 | 1940.00
 Juan Rodriguez                 | 1882.00
 Juan Rodriguez                 | 1802.40
 Juan Rodriguez                 | 2201.10
 Juan Rodriguez                 | 3104.10
 Juan Rodriguez                 | 2310.50
 Juan Rodriguez                 | 2200.00
 Juan Rodriguez                 | 2060.00
 Juan Rodriguez                 | 1940.00
 Juan Rodriguez                 | 1882.00
 Juan Rodriguez                 | 1802.40
 Juan Rodriguez                 | 2201.10
 Juan Rodriguez                 | 3104.10
 Juan Rodriguez                 | 2310.50
(48 rows)
*/

-- Next, write commands to delete just the tuples that have the following
--     primary keys from the Tenants table:
-- (1000,2) (1100,2)

DELETE FROM Tenants WHERE HouseID = 1000 AND ApartmentNumber = 2;

DELETE FROM Tenants WHERE HouseID = 1100 AND ApartmentNumber = 2;

-- Results of running "Overdue Landlords" Again:
/*
              name              |  rent
--------------------------------+---------
 Catherine Washington           | 2200.00
 Catherine Washington           | 2060.00
 Catherine Washington           | 1940.00
 Catherine Washington           | 1882.00
 Catherine Washington           | 1802.40
 Catherine Washington           | 3104.10
 Catherine Washington           | 2200.00
 Catherine Washington           | 2060.00
 Catherine Washington           | 1940.00
 Catherine Washington           | 1882.00
 Catherine Washington           | 1802.40
 Catherine Washington           | 3104.10
 Robert Johnson                 | 2200.00
 Robert Johnson                 | 2060.00
 Robert Johnson                 | 1940.00
 Robert Johnson                 | 1882.00
 Robert Johnson                 | 1802.40
 Robert Johnson                 | 3104.10
 Juan Rodriguez                 | 2200.00
 Juan Rodriguez                 | 2060.00
 Juan Rodriguez                 | 1940.00
 Juan Rodriguez                 | 1882.00
 Juan Rodriguez                 | 1802.40
 Juan Rodriguez                 | 3104.10
(24 rows)
*/

