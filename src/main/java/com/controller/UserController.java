package com.controller;

import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


//author：HongDongXv

@Controller
@RequestMapping("/user")
public class UserController {

    // controller层调用service层，service层调用dao层
    //@Qualifier注解 别名

    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;

    // 登录验证
    @RequestMapping("/login")
    public String login(String userName, String password, Model model) {
        User user = userService.findUserByName(userName);
        if (user == null || !user.getPassword().equals(password)) {
            // 登录失败，返回登录页面并提示错误信息
            model.addAttribute("error", "用户名或密码错误！");
            return "redirect:/index.jsp";
        } else {
            // 登录成功，跳转到商品管理页面
            return "redirect:/good/allGood";
        }
    }

    // 注册
    @RequestMapping("/register")
    public String register(String uName, String password,String Spassword ,Model model) {
        if (uName.isEmpty() || password.isEmpty() || Spassword.isEmpty() || !password.equals(Spassword)) {
            // 注册失败，返回注册页面并提示错误信息
            model.addAttribute("error", "请输入有效的用户名和密码，并确保两次输入的密码相同。");
            return "redirect:/register.jsp";
        } else {
            // 注册成功，将用户注册的信息存储到数据库并返回登录页面并提示注册成功
            User user = new User(uName,password);
            userService.registerUser(user);
            model.addAttribute("message", "注册成功！");
            return "redirect:/index.jsp";
        }
    }
}
