/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import bean.Bus;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class DbConnection {
    
    private static Connection con = null;
    private static Statement stm = null;
    
    private DbConnection()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/busticket","root","");
            stm = con.createStatement();
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }
    
    public static Statement getIStatement()
    {
        if(stm==null){
            new DbConnection();
        }
        return stm;
    }
    
    
    public List<Bus> getBusList(String f, String t)
    {
        List<Bus> busList = new ArrayList<Bus>();
        String sql = "";
       // ResultSet rs = stm.executeQuery(sql)
        
        return busList;
    }
    
}
