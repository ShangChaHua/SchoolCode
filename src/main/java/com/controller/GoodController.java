package com.controller;

import com.pojo.Good;
import com.service.GoodService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

//author：HongDongXv

@Controller
@RequestMapping("/good")
public class GoodController {

    // controller层调用service层，service层调用dao层
    //@Qualifier注解 别名

    @Autowired
    @Qualifier("goodServiceImpl")
    private GoodService goodService;


    @RequestMapping("/allGood")
    public String selectAllGood(Model model) {
        //使用业务层调用dao层查询出数据，通过model对象渲染到前台页面
        List<Good> goodList = goodService.selectAllGood();
        model.addAttribute(goodList);
        return "allGood";
    }


    //添加物资，首先需要跳转到添加物资的表单页面
    @RequestMapping("/toAddGood")
    public String toAddGood() {
        //接收到前端请求后，跳到添加物资表单页面
        return "/addGood";
    }

    //接收添加物资表单的数据，进行正式的添加物资，添加完成后，重定向到所有物资页面
    @RequestMapping("addGood")
    public String addGood(Good good) {
        goodService.addGood(good);
        System.out.println(good.toString());
        return "redirect:/good/allGood";
    }

    //更新物资，与添加物资流程基本一样
    @RequestMapping("toUpdateGood")
    public String toUpdateGood(Model model, int id) {
        Good good = goodService.findGoodById(id);
        model.addAttribute("good", good);
        //跳转到物资修改页面，同时将要修改的物资的信息传递过去
        return "/updateGood";
    }

    //正式更新物资
    @RequestMapping("updateGood")
    public String updateGood(Good good) {
        System.out.println(good.toString());
        goodService.updateGood(good);
        System.out.println(good.getId());
        return "redirect:/good/allGood";
    }


    //删除就直接删除物资即可
    @RequestMapping("delGood")
    public String delGood(int id) {
        goodService.delGood(id);
        return "redirect:/good/allGood";
    }


    //查询物资 根据物资名称查询
    @RequestMapping("/queryGood")
    public String queryGood(String goodName, Model model) {
        List<Good> goodList = goodService.findGoodByName(goodName);
        model.addAttribute(goodList);
        return "allGood";
    }
}
