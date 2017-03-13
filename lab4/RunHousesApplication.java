import java.sql.*;
import java.io.*;
import java.util.*;

/**
 * A class that connects to PostgreSQL and disconnects.
 * You will need to change your credentials below, to match the usename and password of your account
 * in the PostgreSQL server.
 * The name of your database in the server is the same as your username.
 * You are asked to include code that tests the methods of the HousesApplication class
 * in a similar manner to the sample RunStoresApplication.java program.
*/


public class RunHousesApplication
{
    public static void main(String[] args) {
    	
    	Connection connection = null;
    	try {
    		//Register the driver
    		Class.forName("org.postgresql.Driver"); 
    		// Make the connection.
            // You will need to fill in your real username
            // and password for your Postgres account in the arguments of the
            // getConnection method below.
            connection = DriverManager.getConnection(
                                                     "jdbc:postgresql://cmps180-db.lt.ucsc.edu/mjgates",
                                                     "mjgates",
                                                     "division50field");
            
            if (connection != null)
                System.out.println("Connected to the database!");
			
            /* Include your code below to test the methods of the 
	            HousesApplication class
             * The sample code in RunStoresApplication.java should be useful.
             * That code tests other methods for a different database schema.
             * Your code below: */
             
             
            HousesApplication ha = new HousesApplication(connection);
             
            // Test of the getLeaseTenantsWithApartmentsInManyHouses method 
            //	with the numberOfHouses argument set to 4. 
            try {
	            int num_houses = 4;
	            List<Integer> lease_tenant_result = new ArrayList<Integer>();
	            lease_tenant_result = ha.getLeaseTenantsWithApartmentsInManyHouses(num_houses);
				/*
				* Output of getLeaseTenantsWithApartmentsInManyHouses 
				* when the parameter numberOfHouses is 4.
				*	[641078001, 699061306]
				*/
	            System.out.println("Results (SSN):");
	            System.out.println(lease_tenant_result);
            }
            catch (Exception e) {
                e.printStackTrace();
            }
            
            // Test for the raiseSalary method that raises the salary of persons named 
            // 	“John Smith” by 10,000.
            try {
	            String name = "John Smith";
	            int raise = 10000;
	            ha.raiseSalary(name, raise);
				// This method validates to ensure it is able to make the update
				//	Ideally the method would return a status code but it is not in the spec
            }
            catch (Exception e) {
                e.printStackTrace();
            }
            
            //  Two tests for the movePersonToApartment method.
            try {
	            System.out.println("Tests for movePersonToApartment:");
	            int result;
	            
	            System.out.println("Test 1: attempting to move person with SSN 631952071 to apartment 1 at 401 Heller Drive");
				result = ha.movePersonToApartment(631952071, "401 Heller Drive", 1);
				System.out.println("Result of Test 1: ");
				System.out.println(result);
		
	            System.out.println("Test 2: attempting to move person with SSN 563960185 to apartment 10 at 401 Heller Drive");
				result = ha.movePersonToApartment(563960185, "401 Heller Drive", 10);
				System.out.println("Result of Test 2: ");
				System.out.println(result);
				// This method validates to ensure it is able to make the update
				//	Ideally the method would return a status code but it is not in the spec
            }
            catch (Exception e) {
		        e.printStackTrace();
				System.out.println("SQLException: Did you forget to execute moveperson.pgsql");
	        }
            
            System.out.println("Thank you, come again.");
            
            // Interactive Testing
            
            
//             // Get user input n and call
//             // getLeaseTenantsWithApartmentsInManyHouses(na)
//             try {
//                 HousesApplication h = new HousesApplication(connection);
//                 Scanner reader = new Scanner(System.in);  // Reading from System.in
//                 System.out.println("Enter number of houses: ");
//                 int n = reader.nextInt();
//                 System.out.println("Results (SSN):");
// 				System.out.println(h.getLeaseTenantsWithApartmentsInManyHouses(n));
//             }
//             catch (Exception e) {
//                 e.printStackTrace();
//             }
//             
//             
//             // Get user input of name and salary
//             // getLeaseTenantsWithApartmentsInManyHouses(na)
//             try {
//                 HousesApplication h = new HousesApplication(connection);
//                 // Reading from System.in
//                 Scanner reader_name = new Scanner(System.in);
//                 
//                 System.out.println("Enter a name: ");
//                 String name = reader_name.nextLine();
//                 
//                 Scanner reader_raise = new Scanner(System.in);
//                 
//                 System.out.println("Enter a salary: ");
//                 int raise = reader_raise.nextInt();
//                 
//                 h.raiseSalary(name, raise);
//             }
//             catch (Exception e) {
//                 e.printStackTrace();
//             }
			
            
            /*******************
            * Your code ends here */
            
    	}
    	catch (SQLException | ClassNotFoundException e) {
    		System.out.println("Error while connecting to database: " + e);
    		e.printStackTrace();
    	}
    	finally {
    		if (connection != null) {
    			// Closing Connection
    			try {
					connection.close();
				} catch (SQLException e) {
					System.out.println("Failed to close connection: " + e);
					e.printStackTrace();
				}
    		}
    	}
    }
}
