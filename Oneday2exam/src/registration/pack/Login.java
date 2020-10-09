package registration.pack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Login {


    private String email;

    private String password;
    Login(String email,String password){
    
   	 this.email=email;
   	
   	 this.password=password;
    }
    public String userExistance() {
		boolean flag=false;
		 String name=null;
		try { 
            
			// Initialize the database 
			Connection con = DatabaseConnection.initializeDatabase(); 
             ResultSet rt=null;
			// Create a SQL query to insert data into demo table 
			// demo table consists of two columns, so two '?' is used 
			PreparedStatement st = con.prepareStatement("select name from userdata where email=? and pasword=?"); 

			// For the first parameter, 
			// get the data using request object 
			// sets the data to st pointer 
	    
			st.setString(1,email); 
			st.setString(2,password); 
			// Execute the insert command using executeUpdate() 
			// to make changes in database 
			rt=st.executeQuery(); 
			if(rt.next()){
				
	    			
	    			name=rt.getString(1);
	    			System.out.println("NAME  :"+name);
	    		
				
			}
			
			// Close all the connections 
			st.close(); 
			con.close(); 
			System.out.println(flag);
		
		
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		}
		if(flag){
			return name;
		}
		return name; 
		
	}
}
