package com.DAO;

import com.entity.User;

public interface UserDAO {
    public boolean userRegister(User us);
    
    public User login(String email,String pass);
    
    public boolean checkPass(String pass,int id);
    
    public boolean updateUser(User us);
    
    public boolean checkUser(String em);
}