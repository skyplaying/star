package com.sz.mapper;

import com.github.pagehelper.PageInfo;
import com.sz.pojo.Goods;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsMapper {
    /**
     * 商品查询
     * @return
     */
    List<Goods> queryAll();

/*
*  商品删除
* */


    int deleteById(@Param("id") int id);

//    根据商品id 查询
    List<Goods> queryById(Long id);

    // 修改单个商品信息

    int update(Goods goods);


    //    根据区域范围查询
    List<Goods> queryByDistrict(Long goodsDistrict);



//     提供分页插件的查询

    PageInfo<Goods> queryByPage(PageInfo pageInfo);

//    增加商品信息

    int addGoods(Goods goods);









    /*
* 商品排序
*
* */
// 根据商品数量降序
   List<Goods> queryAllByCount();

//   根据日期升序
    List<Goods> queryAllByDate();

//    //     根据分页插件 实现商品分页查询
////    PageInfo<Goods> query(@Param("goods") Goods goods);

//    服从分页功能 试验性方法

    List<Goods> queryAllPage();
}
