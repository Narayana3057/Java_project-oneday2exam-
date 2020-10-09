package registration.pack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Signup {
	private String name;
    private String email;
    private String mobile;
    private String password;
    Signup(String name,String email,String mobile,String password){
    	this.name=name;
   	 this.email=email;
   	 this.mobile=mobile;
   	 this.password=password;
    }
	public void storeData() {
		try { 

			// Initialize the database 
			Connection con = DatabaseConnection.initializeDatabase(); 

			// Create a SQL query to insert data into demo table 
			// demo table consists of two columns, so two '?' is used 
			PreparedStatement st = con 
				.prepareStatement("insert into userdata values(?,?,?,?)"); 

			// For the first parameter, 
			// get the data using request object 
			// sets the data to st pointer 
	
			st.setString(1,name); 
			// Same for second parameter 
			st.setString(2, email); 
			st.setString(3, mobile); 
			st.setString(4, password);

			// Execute the insert command using executeUpdate() 
			// to make changes in database 
			st.executeUpdate(); 

			// Close all the connections 
			st.close(); 
			con.close(); 

		
		
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
		
		
	}
	public boolean checkExistence() {
		boolean flag=false;
		try { 
            
			// Initialize the database 
			Connection con = DatabaseConnection.initializeDatabase(); 
             ResultSet rt=null;
			// Create a SQL query to insert data into demo table 
			// demo table consists of two columns, so two '?' is used 
			PreparedStatement st = con 
				.prepareStatement("select count(*) from userdata where email=?"); 

			// For the f/LoginServletirst parameter, 
			// get the data using request object 
			// sets the data to st pointer 
	
			st.setString(1,email); 
	
			// Execute the insert command using executeUpdate() 
			// to make changes in database 
			rt=st.executeQuery(); 
           if(rt.next()){
        	       
        		if(rt.getInt(1)==1){
        			flag=true;
        			System.out.println(rt.getInt(1));
        		}
       
           }
			// Close all the connections 
			st.close(); 
			con.close(); 
			System.out.println(flag);
		
		
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		}
		
		return flag; 
		
	}
	
    
    
    
}
