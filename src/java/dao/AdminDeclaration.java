/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.Bus;
import bean.BusWithDate;
import bean.Passenger;

/**
 *
 * @author User
 */
public interface AdminDeclaration {
 public int insertBus(Bus bus);
 public long insertPassenger(Passenger passenger);
 public Integer updateBookSeat(BusWithDate bwd);
 public Integer insertBookSeat(BusWithDate bwd);
 
}
