package com.service;

import com.pojo.Good;

//author：HongDongXv

import java.util.List;

public interface GoodService {

    //添加物资
    public int addGood(Good good);

    //删除物资  根据id
    public int delGood(int id);

    //更新物资信息  根据id
    public int updateGood(Good good);

    //查询单个物资 根据id查
    public Good findGoodById(int id);

    //查询所有物资信息
    public List<Good> selectAllGood();

    //根据物资名称查询物资
    public List<Good> findGoodByName(String goodName);
}
