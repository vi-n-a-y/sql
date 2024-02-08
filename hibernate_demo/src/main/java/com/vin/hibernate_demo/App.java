package com.vin.hibernate_demo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
       First_Class fc= new First_Class();
       fc.setId(1);
       fc.setName("john");
       fc.setMarks(91);
       Configuration con = new Configuration().configure().addAnnotatedClass(First_Class.class);
       SessionFactory sf= con.buildSessionFactory();
       Session session = sf.openSession();
       Transaction tx =session.beginTransaction();
       
       session.persist(tx);
       tx.commit();
    }
}
