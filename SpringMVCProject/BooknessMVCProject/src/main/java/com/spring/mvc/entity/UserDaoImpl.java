//package com.spring.mvc.dao;
//
//
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.query.Query;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//
//import javax.persistence.NoResultException;
//
//@Repository
//public class UserDaoImpl implements UserDao {
//
//  @Autowired
//  private SessionFactory sessionFactory;
//
//  @Override
//  public User getUserByUsername(String username) {
//    Session session = sessionFactory.getCurrentSession();
//    Query<User> query = session.createQuery("from User where username = :username", User.class);
//    query.setParameter("username", username);
//    User user = null;
//    try {
//      user = query.getSingleResult();
//    } catch (NoResultException e) {
//      // user not found
//    }
//    return user;
//  }
//
//  @Override
//  public void saveOrUpdateUser(User user) {
//    Session session = sessionFactory.getCurrentSession();
//    session.saveOrUpdate(user);
//  }
//  @Override
//  public boolean addBookToLiked(String email, int bookId) {
//    Session session = sessionFactory.getCurrentSession();
//    User user = getUserByEmail(email);
//    if (user != null) {
//      Book book = session.get(Book.class, bookId);
//      if (book != null) {
//        user.getLikedBooks().add(book);
//        session.saveOrUpdate(user);
//        return true;
//      }
//    }
//    return false;
//  }
//
//}
