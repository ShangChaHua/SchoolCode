package com.service;

import com.dao.GoodMapper;
import com.pojo.Good;
import org.springframework.stereotype.Service;

//author：HongDongXv

import java.util.List;


@Service
public class GoodServiceImpl implements GoodService {

    private GoodMapper goodMapper;

    public void setGoodMapper(GoodMapper goodMapper) {
        this.goodMapper = goodMapper;
    }

    @Override
    public int addGood(Good good) {
        return goodMapper.addGood(good);
    }

    @Override
    public int delGood(int id) {
        return goodMapper.delGood(id);
    }

    @Override
    public int updateGood(Good good) {
        return goodMapper.updateGood(good);
    }

    @Override
    public Good findGoodById(int id) {
        return goodMapper.findGoodById(id);
    }

    @Override
    public List<Good> selectAllGood() {
        return goodMapper.selectAllGood();
    }

    @Override
    public List<Good> findGoodByName(String goodName) {
        return goodMapper.findGoodByName(goodName);
    }
}
