package com.spring.mvc.service;

import com.spring.mvc.database.UsersDatabase;
import com.spring.mvc.dto.LoginDTO;

import com.spring.mvc.entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
public class UsersService {

  @Autowired
  private UsersDatabase database;


  public boolean validateUser(LoginDTO dto) throws Exception
  {
    if(this.database.loginUser(dto))
      return true;
    return false;
  }
  public List<String> getAllUsersEmail()
  {
    List<Users> users = this.database.getAllUsers();
    List<String> useremail = new ArrayList<String>();
    users.forEach(user -> useremail.add(user.getEmail()));
    return useremail;

  }
  public List<Users> getAllUsers() {
    return database.getAllUsers();
  }

  public void registerUser(Users user) throws Exception {
    // check if user with given email already exists
    Users existingUser = database.getUserByEmail(user.getEmail());
    if (existingUser != null) {
      throw new Exception("User with email " + user.getEmail() + " already exists");
    }

    // set user's creation date and save to database
    //user.setCreated(LocalDateTime.now());
    database.saveUser(user);
  }
  public void saveUser(Users user) {
    database.saveUser(user);
  }




  // Other methods as required by the application
}
