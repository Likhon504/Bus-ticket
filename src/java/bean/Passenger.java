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
public class Passenger {
     @Id
    @GeneratedValue
    private long ps_id;
     
    private String user,pname,paddress,pmobile,busname,tfrom,tto,pseat,totalpayment,jdate,jtime;
    

    public Passenger() {
    }

    public long getPs_id() {
        return ps_id;
    }

    public void setPs_id(long ps_id) {
        this.ps_id = ps_id;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPaddress() {
        return paddress;
    }

    public void setPaddress(String paddress) {
        this.paddress = paddress;
    }

    public String getPmobile() {
        return pmobile;
    }

    public void setPmobile(String pmobile) {
        this.pmobile = pmobile;
    }

    public String getBusname() {
        return busname;
    }

    public void setBusname(String busname) {
        this.busname = busname;
    }

    public String getTfrom() {
        return tfrom;
    }

    public void setTfrom(String tfrom) {
        this.tfrom = tfrom;
    }

    public String getTto() {
        return tto;
    }

    public void setTto(String tto) {
        this.tto = tto;
    }

    public String getPseat() {
        return pseat;
    }

    public void setPseat(String pseat) {
        this.pseat = pseat;
    }

    public String getTotalpayment() {
        return totalpayment;
    }

    public void setTotalpayment(String totalpayment) {
        this.totalpayment = totalpayment;
    }

    public String getJdate() {
        return jdate;
    }

    public void setJdate(String jdate) {
        this.jdate = jdate;
    }

    public String getJtime() {
        return jtime;
    }

    public void setJtime(String jtime) {
        this.jtime = jtime;
    }

    public Passenger(String user, String pname, String paddress, String pmobile, String busname, String tfrom, String tto, String pseat, String totalpayment, String jdate, String jtime) {
        this.user = user;
        this.pname = pname;
        this.paddress = paddress;
        this.pmobile = pmobile;
        this.busname = busname;
        this.tfrom = tfrom;
        this.tto = tto;
        this.pseat = pseat;
        this.totalpayment = totalpayment;
        this.jdate = jdate;
        this.jtime = jtime;
    }

    
    @Override
    public String toString() {
        return "Passenger{" + "ps_id=" + ps_id + ", user=" + user + ", pname=" + pname + ", paddress=" + paddress + ", pmobile=" + pmobile + ", busname=" + busname + ", tfrom=" + tfrom + ", tto=" + tto + ", pseat=" + pseat + ", totalpayment=" + totalpayment + ", jdate=" + jdate + ", jtime=" + jtime + '}';
    }

    

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

   

    
    
    
    
    
    
    
    
    
    
}
