package com.sz.service;

import com.github.pagehelper.PageInfo;
import com.sz.pojo.Goods;

import java.util.List;

    public interface GoodsService {

    List<Goods>queryAll();

// 删除方法
    int deleteById(Integer id);

//    根据区域范围查询
    List<Goods> queryByDistrict(Long goodsDistrict);


    //    根据商品id 查询
    List<Goods> queryById(Long id);

    // 修改单个商品信息

    int update(Goods goods);


//     提供分页插件的查询

    PageInfo<Goods> queryByPage(PageInfo pageInfo);

    //    增加商品信息

    int addGoods(Goods goods);




}
