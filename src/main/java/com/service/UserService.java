package com.service;

import com.pojo.User;
//author：HongDongXv
public interface UserService {

    //根据用户名查询用户
    public User findUserByName(String userName);

    //注册用户
    public void registerUser(User user);

}
