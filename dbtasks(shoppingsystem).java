package onlineshopppingsystem;

import java.beans.Statement;
import java.sql.Connection;
//import com.sun.jdi.connect.spi.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.Scanner;

public class shoppingsystem {
	
	private static Connection connect = null;
	private static java.sql.Statement statement = null;
	private static ResultSet resultSet = null;
	
	final private static String host = "jdbc:postgresql://10.98.98.61:5432/group54";  
	final private static String user = "group54";
	final private static String password = "?S^5vcm_cwv%qj9Q";
	
	private static void WriteResultSet(ResultSet resultSet) throws SQLException{
		ResultSetMetaData rsmd = resultSet.getMetaData();
		int columnsNumber = rsmd.getColumnCount();
		while(resultSet.next()) {
			for(int i = 1; i <= columnsNumber; i++) {
				System.out.print(resultSet.getString(i) + " ");
				System.out.println();
			}
		}
	}
	
	public static void main(String[] args){
		
	while(true) {
		try {
			Connection connection = (Connection) DriverManager.getConnection(host, user, password);
			statement =connection.createStatement();
			System.out.println("Connected");
			System.out.println("0- to exit");
			System.out.println("1- Insert a payment");
			System.out.println("2- Delete a product");
			System.out.println("3- Update a category");
			System.out.println("4- List a customer");

			Scanner scan = new Scanner(System.in);
			int com = scan.nextInt();
			
		if(com == 0) {
				System.out.println("Exit done");
				System.exit(0);
		}
		if(com==1 ) {
			System.out.println("1-Enter the Payment amount");
			int amount = scan.nextInt();
			System.out.println("2- Enter the Payment pType");
			String pType = scan.next();
			System.out.println("3- Enter the Payment paymentId");
			int paymentId = scan.nextInt();
			System.out.println("4- Enter the Payment pCost");
			int pCost = scan.nextInt();
			String query ="INSERT INTO public.\"Payment\"\r\n" + 
					"(amount, \"p-type\", \"payment-ýd\", \"p-cost\")" + 
					"VALUES("+amount+", '"+pType+"', '"+paymentId+"', "+pCost+");";

			statement.executeUpdate(query);
			System.out.println("updated");
		}
		if(com==2 ) {
			System.out.println("Enter a p-ýd");
			int pId = scan.nextInt();
			String query = "delete from product where \"p-ýd\" = "+pId+";";
			statement.executeUpdate(query);
			System.out.println("updated");
			
		}
		if(com==3 ) {
			System.out.println("Enter c-ýd");
			int cId = scan.nextInt();
			System.out.println("Enter color ");
			String color = scan.next();
			String query = "update \"Category\" set color ='"+color+"' where \"c-ýd\" = '"+cId+"';";
			statement.executeUpdate(query);
			System.out.println("updated");
			
			String query2= "select * from \"Category\" c ;";
			resultSet = statement.executeQuery(query2);
			WriteResultSet(resultSet);

		}
		if(com==4) {
			String query = "select * from customer";
			resultSet = statement.executeQuery(query);
			WriteResultSet(resultSet);
		}
				
		}
		catch(SQLException e) {
			System.out.println("Failure");
			e.printStackTrace();
		}
		finally {
			close();
		}
	}
	}

	private static void close() {
		try {
			if(resultSet != null) {
				resultSet.close();
			}
			if(statement != null) {
				statement.close();
			}
			if(connect != null) {
				connect.close();
			}	
		} catch(Exception e) {
			
		}	
	}

}
