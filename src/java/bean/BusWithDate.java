/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author User
 */
@Entity
public class BusWithDate {

    @Id
    @GeneratedValue
    private Integer id;
    private Integer bus_id;
    private String date;
    private String seat;

    public BusWithDate() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBus_id() {
        return bus_id;
    }

    public void setBus_id(Integer bus_id) {
        this.bus_id = bus_id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }

    @Override
    public String toString() {
        return "BusWithDate{" + "id=" + id + ", bus_id=" + bus_id + ", date=" + date + ", seat=" + seat + '}';
    }

    public BusWithDate(Integer bus_id, String date, String seat) {
        this.bus_id = bus_id;
        this.date = date;
        this.seat = seat;
    }

    
    
}
