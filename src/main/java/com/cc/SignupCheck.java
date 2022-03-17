package com.cc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SignupCheck {
	//table changes
	String sql="INSERT INTO shrey_111916045_details VALUES(?,?,?,?,?,?)";
	String url="jdbc:mysql://localhost:3306/world";
	String username ="root";
	//parameter changes
	public boolean check(String eid,String pass,String fname,String lname,String dob,String cnu) {
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","Itsmeshrey1@");
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, eid);
        st.setString(2,pass);
        st.setString(3, fname);  
        st.setString(4, lname);
        st.setString(5, dob);
        st.setString(6, cnu);
        int rs=st.executeUpdate();
        if(rs>0)
        {
        	return true;
        }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
