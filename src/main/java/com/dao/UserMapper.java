package com.dao;

import com.pojo.User;
import org.springframework.stereotype.Repository;

//author：HongDongXv

@Repository
public interface UserMapper {
    User findUserByName(String userName);
    void insertUser(User user);
}

