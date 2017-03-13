package com.aromenskiy.dao;

import com.aromenskiy.model.User;

import java.util.List;

/**
 * Created by Artyom on 8.3.17.
 */
public interface UserDao {

    void addUser(User user);

    List<User> getAllUsers();

    List<User> searchUser(String name);

    void deleteUser(Integer userId);

    User updateUser(User user);

    User getUser(int userId);
}
