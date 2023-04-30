package com.spring.mvc.database;



import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.mvc.dto.LoginDTO;
import com.spring.mvc.entity.Users;

@Repository
public class UsersDatabase {

  @Autowired
  private SessionFactory factory;

  public List<Users> getAllUsers()
  {
    Session session = factory.openSession();
    List<Users> users = session.createQuery("from Users", Users.class).getResultList();
    session.close();
    return users;
  }
  public boolean loginUser(LoginDTO dto) throws Exception
  {
    System.out.println(dto);
    Session session = factory.openSession();
    Users user = session.get(Users.class, dto.getEmail());
    System.out.println(user);
    if(user != null)
    {
      if(dto.getPassword().equals(user.getPassword()))
        return true;
    }
    throw new Exception("Invalid Credentials");
  }

  public Users getUserByEmail(String email) {
    Session session = factory.openSession();
    Users user = session.get(Users.class, email);
    session.close();
    return user;
  }

  public void addUser(Users user) {
    Session session = factory.openSession();
    session.beginTransaction();
    session.save(user);
    session.getTransaction().commit();
    session.close();
  }

  public void updateUser(Users user) {
    Session session = factory.openSession();
    session.beginTransaction();
    session.update(user);
    session.getTransaction().commit();
    session.close();
  }

  public void deleteUser(String email) {
    Session session = factory.openSession();
    session.beginTransaction();
    Users user = session.get(Users.class, email);
    session.delete(user);
    session.getTransaction().commit();
    session.close();
  }
  public void saveUser(Users user) {
    Session session = factory.openSession();
    Transaction tx = null;
    try {
      tx = session.beginTransaction();
      session.save(user);
      tx.commit();
    } catch (HibernateException e) {
      if (tx != null)
        tx.rollback();
      e.printStackTrace();
    } finally {
      session.close();
    }
  }


}
