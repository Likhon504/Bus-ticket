/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import javax.servlet.http.HttpServlet;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 *
 * @author User
 */
public class SessionFactoo extends HttpServlet {
    static SessionFactory sf;
    private static ServiceRegistry serviceRegistry;
    
    public static SessionFactory getSessionFactoo(){
        Configuration cfg = new Configuration();
        cfg.configure("/resources/hibernate.cfg.xml");
        
        serviceRegistry = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        
        sf = cfg.buildSessionFactory(serviceRegistry);
        
        
        System.out.println("Build session factory ---");
        
        return sf;
    }
    
    
    
}
