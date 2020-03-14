/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.Admin;
import bean.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author User
 */
public class UserOperation implements UserDeclaration {

    SessionFactory sf;
    Session ss;
    Transaction ts;

    public UserOperation() {
        sf = controller.SessionFactoo.getSessionFactoo();
        ss = sf.openSession();
    }

    @Override
    public long insertUser(User user) {
        ts = ss.beginTransaction();

        long l = (Long) ss.save(user);
        ts.commit();
        if (l > 0) {
            return l;
        } else {
            return 0;
        }
    }

    public static boolean validate(String username, String password) {
        boolean status = false;
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "busticket";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String passWord = "";
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager
                    .getConnection(url + dbName, userName, passWord);

            pst = conn.prepareStatement("select * from user where username=? and password=?");
            pst.setString(1, username);
            pst.setString(2, password);

            rs = pst.executeQuery();
            status = rs.next();

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pst != null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return status;
    }
    
    public static boolean adminValidate(String username, String password) {
        boolean status = false;
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "busticket";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String passWord = "";
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager
                    .getConnection(url + dbName, userName, passWord);

            pst = conn.prepareStatement("select * from admin where username=? and password=?");
            pst.setString(1, username);
            pst.setString(2, password);

            rs = pst.executeQuery();
            status = rs.next();

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pst != null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return status;
    }

    @Override
    public long saveAdmin(Admin admin) {
        ts = ss.beginTransaction();

        long l = (Long) ss.save(admin);
        ts.commit();
        if (l > 0) {
            return l;
        } else {
            return 0;
        }
    }
}
