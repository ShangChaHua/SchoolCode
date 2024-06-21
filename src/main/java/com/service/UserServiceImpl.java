package com.service;

import com.dao.UserMapper;
import com.pojo.User;
import org.springframework.stereotype.Service;
//author：HongDongXv

@Service
public class UserServiceImpl implements UserService {

    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public User findUserByName(String userName) {
        return userMapper.findUserByName(userName);
    }

    @Override
    public void registerUser(User user) {
        userMapper.insertUser(user);
    }

}

