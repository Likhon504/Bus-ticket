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
public class Bus {
    @Id
    @GeneratedValue
    private int bus_id;
    private String date;
    private String busname, depfrom, destination,depr_time,arival_time;
    
    
    
    private  long tprice,seatno;

    public Bus() {
    }
    
    
    

    public Bus(String busname, String depfrom, String destination, String depr_time, String arival_time, long tprice, long seatno) {
        this.busname = busname;
        this.depfrom = depfrom;
        this.destination = destination;
        this.depr_time = depr_time;
        this.arival_time = arival_time;
        this.tprice = tprice;
        this.seatno = seatno;
    }
    
    

    public int getBus_id() {
        return bus_id;
    }

    public void setBus_id(int bus_id) {
        this.bus_id = bus_id;
    }

    public String getBusname() {
        return busname;
    }

    public void setBusname(String busname) {
        this.busname = busname;
    }

    public String getDepfrom() {
        return depfrom;
    }

    public void setDepfrom(String depfrom) {
        this.depfrom = depfrom;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getDepr_time() {
        return depr_time;
    }

    public void setDepr_time(String depr_time) {
        this.depr_time = depr_time;
    }

    public String getArival_time() {
        return arival_time;
    }

    public void setArival_time(String arival_time) {
        this.arival_time = arival_time;
    }

    public long getTprice() {
        return tprice;
    }

    public void setTprice(long tprice) {
        this.tprice = tprice;
    }

    public long getSeatno() {
        return seatno;
    }

    public void setSeatno(long seatno) {
        this.seatno = seatno;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    

    @Override
    public String toString() {
        return "Bus{" + "bus_id=" + bus_id + ", busname=" + busname + ", depfrom=" + depfrom + ", destination=" + destination + ", depr_time=" + depr_time + ", arival_time=" + arival_time + ", tprice=" + tprice + ", seatno=" + seatno + '}';
    }

    

    

    
    
    
    
    
   
    
    
    
    
    
    
}
