package com.sz.controller;

import com.github.pagehelper.PageInfo;
import com.sz.pojo.Goods;
import com.sz.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.Date;


import java.util.List;

@Controller
@RequestMapping("/good")
public class GoodsController {
    @Autowired
    private GoodsService goodsService;

    //    商品查询
    @RequestMapping("/query")
//    @ResponseBody
    public String queryAll(Model model) {
        List<Goods> goods = goodsService.queryAll();
        model.addAttribute("good", goods);

        return "main";
    }

//     根据商品id 删除商品


    @RequestMapping("/delete/{id}")
    public String deleteById(@PathVariable("id") Integer id, Model model) {

//         删除商品信息 ，重新查询数据库 然后返回主页面
        int row = goodsService.deleteById(id);

//         重新查询商品信息，返回商品详情页
        PageInfo<Goods> pageInfo = new PageInfo<>();
        pageInfo.setPageSize(3); //每页的数量
        pageInfo.setPageNum(1);//当前页
        pageInfo = goodsService.queryByPage(pageInfo);
        model.addAttribute("page", pageInfo);

        return "main";


    }


//     根据id查询单个商品信息，跳转修改页面

    @RequestMapping("/query/by/{id}")
    public String queryById(@PathVariable("id") Long id, Model model) {

//         查询单个商品信息

        List<Goods> goods = goodsService.queryById(id);
        model.addAttribute("page", goods);

//        返回修改页面
        return "Update";
    }


    //  根据商品id  修改单一商品信息
    @RequestMapping("/update/by")
    public String update(@RequestParam("id") Long id, @RequestParam("goodsName") String goodsName, @RequestParam("goodsPrice") Long goodsPrice,
                         @RequestParam("goodsCount") Long goodsCount, @RequestParam("billStatus") Long billStatus
            , Model model) {


        Goods goods = new Goods();
        goods.setGoodsName(goodsName);
        goods.setBillStatus(billStatus);
        goods.setGoodsCount(goodsCount);
        goods.setGoodsPrice(goodsPrice);
        goods.setId(id);

        int row = goodsService.update(goods);

//         重新查询商品信息，返回商品详情页
        PageInfo<Goods> pageInfo = new PageInfo<>();
        pageInfo.setPageSize(3); //每页的数量
        pageInfo.setPageNum(1);//当前页
        pageInfo = goodsService.queryByPage(pageInfo);
        model.addAttribute("page", pageInfo);


        return "main";


    }

//     根据id查询单个商品信息，跳转修改页面

    @RequestMapping("/query/of/{goodsDistrict}")
    public String queryById2(@PathVariable("goodsDistrict") Long goodsDistrict, Model model) {

//         查询单个商品信息

        List<Goods> goods = goodsService.queryByDistrict(goodsDistrict);

        //         重新查询商品信息，返回商品详情页
        PageInfo<Goods> pageInfo = new PageInfo<>();
        pageInfo.setPageSize(3); //每页的数量
        pageInfo.setPageNum(1);//当前页
        pageInfo = goodsService.queryByPage(pageInfo);
        model.addAttribute("page", pageInfo);

//        返回主页面
        return "main";
    }

    //     返回选择页面
    @RequestMapping("/select")
    public String select(Model model) {
// 重新查询 商品信息

        List<Goods> goods = goodsService.queryAll();
        model.addAttribute("page", goods);
        return "select";


    }


//    查询商品详情并带有分页参数

    @RequestMapping("/page")
    public String queryByPage(Model model) {
        PageInfo<Goods> pageInfo = new PageInfo<>();
        pageInfo.setPageSize(3); //每页的数量
        pageInfo.setPageNum(1);//当前页
        pageInfo = goodsService.queryByPage(pageInfo);
        model.addAttribute("page", pageInfo);


        return "main";
    }

    //    跳转分页页面
    @RequestMapping("/pageTo/{page}")
    public String pageInfo(@PathVariable("page") Integer page, Model model) {

//        上一页到顶时
        if (page < 1) {
            page = 1;
        }

        PageInfo<Goods> pageInfo = new PageInfo<>();

        pageInfo.setPageSize(3); //每页的数量
////
//      int pages=pageInfo.getPages();
////        if(page>pages){
////            page=pages;
////        }
//        if(page>=pages){
//            page=pages;
//        }

        pageInfo.setPageNum(page);//当前页
        pageInfo = goodsService.queryByPage(pageInfo);
        model.addAttribute("page", pageInfo);
        return "main";


    }

    @RequestMapping("/add")
    public String add( Model model,@RequestParam("goodsName") String goodsName,

                      @RequestParam("goodsPrice") Long goodsPrice, @RequestParam("goodsCount") Long goodsCount,
                      @RequestParam("billStatus") Long billStatus) {

        Goods goods = new Goods();
//        系统当前时间

        java.util.Date utilDate=new java.util.Date();

        java.sql.Date date=new java.sql.Date(utilDate.getTime());
        goods.setCreationTime(date);

        goods.setGoodsPrice(goodsPrice);
        goods.setGoodsName(goodsName);
        goods.setGoodsCount(goodsCount);
        goods.setBillStatus(billStatus);
        int row = goodsService.addGoods(goods);

        //         重新查询商品信息，返回商品详情页
        PageInfo<Goods> pageInfo = new PageInfo<>();
        pageInfo.setPageSize(3); //每页的数量
        pageInfo.setPageNum(1);//当前页
        pageInfo = goodsService.queryByPage(pageInfo);
        model.addAttribute("page", pageInfo);


        return "main";


    }




}