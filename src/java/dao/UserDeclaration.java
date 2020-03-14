/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.Admin;
import bean.User;

/**
 *
 * @author User
 */
public interface UserDeclaration {
    public long insertUser(User user); 
    public long saveAdmin(Admin admin);
     
}
