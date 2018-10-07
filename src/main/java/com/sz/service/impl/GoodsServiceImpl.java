package com.sz.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sz.mapper.GoodsMapper;
import com.sz.pojo.Goods;
import com.sz.service.GoodsService;
import constant.CommonCodeConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsMapper goodsMapper;
//    查询所有商品信息
    @Override
    public List<Goods> queryAll() {
        return goodsMapper.queryAll();
    }
// 删除方法
    @Override
    public int deleteById(Integer id) {


            return goodsMapper.deleteById(id);
    }

    @Override
    public List<Goods> queryByDistrict(Long goodsDistrict) {
        return goodsMapper.queryByDistrict(goodsDistrict);
    }

    //    根据商品数量进行从大到小排列


    @Override
    public List<Goods> queryById(Long id) {
        return goodsMapper.queryById(id);
    }

    @Override
    public int update(Goods goods) {
        return goodsMapper.update(goods);
    }

    @Override
    public PageInfo<Goods> queryByPage(PageInfo pageInfo) {

        // 去第几页， 页码的大小
        PageHelper.startPage(pageInfo.getPageNum(),pageInfo.getPageSize());
        List<Goods> lo = goodsMapper.queryAll();
        PageInfo<Goods> page = new PageInfo<Goods>(lo);

        return page;
    }

    @Override
    public int addGoods(Goods goods) {

        return goodsMapper.addGoods(goods);
    }


}
