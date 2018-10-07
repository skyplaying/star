package com.sz.pojo;


import java.util.Date;

public class Goods {

  private long id;
  private String goodsName;
  private long billStatus;
  private long goodsDistrict;
  private long goodsPrice;
  private long goodsCount;
  private java.sql.Date creationTime;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getGoodsName() {
    return goodsName;
  }

  public void setGoodsName(String goodsName) {
    this.goodsName = goodsName;
  }


  public long getBillStatus() {
    return billStatus;
  }

  public void setBillStatus(long billStatus) {
    this.billStatus = billStatus;
  }


  public long getGoodsDistrict() {
    return goodsDistrict;
  }

  public void setGoodsDistrict(long goodsDistrict) {
    this.goodsDistrict = goodsDistrict;
  }


  public long getGoodsPrice() {
    return goodsPrice;
  }

  public void setGoodsPrice(long goodsPrice) {
    this.goodsPrice = goodsPrice;
  }


  public long getGoodsCount() {
    return goodsCount;
  }

  public void setGoodsCount(long goodsCount) {
    this.goodsCount = goodsCount;
  }


  public Date getCreationTime() {
    return creationTime;
  }

  public void setCreationTime(java.sql.Date creationTime) {
    this.creationTime = creationTime;
  }

}
