/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.Bus;
import bean.BusWithDate;
import bean.Passenger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author User
 */
public class AdminOperation implements AdminDeclaration {

    SessionFactory sf;
    Session ss;
    Transaction ts;

    public AdminOperation() {
        sf = controller.SessionFactoo.getSessionFactoo();
        ss = sf.openSession();
    }

    @Override
    public int insertBus(Bus bus) {

        System.err.println("BUS : " + bus);

        ts = ss.beginTransaction();

        int l = (Integer) ss.save(bus);
        ts.commit();
        if (l > 0) {
            return l;
        } else {
            return 0;
        }

    }

    @Override
    public long insertPassenger(Passenger passenger) {
        //System.err.println("BUS : "+bus);

        ts = ss.beginTransaction();

        long l = (Long) ss.save(passenger);
        ts.commit();
        if (l > 0) {
            return l;
        } else {
            return 0;
        }

    }

    @Override
    public Integer insertBookSeat(BusWithDate bwd) {

        BusWithDate bwd2 = (BusWithDate) ss.get(BusWithDate.class, bwd.getId());

        ts = ss.beginTransaction();

        Integer l = (Integer) ss.save(bwd);
        ts.commit();
        if (l > 0) {
            return l;
        } else {
            return 0;
        }
    }

    @Override
    public Integer updateBookSeat(BusWithDate bwd) {

        int l = 1;
        BusWithDate bwd2 = (BusWithDate) ss.get(BusWithDate.class, bwd.getId());

       

        sf = controller.SessionFactoo.getSessionFactoo();
        ss = sf.openSession();

        try {

            String a = bwd2.getSeat();
            String b = bwd.getSeat();

            bwd.setSeat(a + b);

            ts = ss.beginTransaction();

            ss.update(bwd);

            ts.commit();

        } catch (Exception ex) {
            l = 0;
            ex.printStackTrace();
        }

        return l;
    }

}
