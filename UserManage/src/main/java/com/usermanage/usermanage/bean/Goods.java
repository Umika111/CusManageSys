package com.usermanage.usermanage.bean;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Goods implements Serializable {
    private Integer goodsId;

    private String goodsName;

    private Integer cateId;

    private String goodsCover;

    private Float goodsPrice;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date goodsCreatetime;

    private Integer goodsCreateuser;

    private Date goodsUpdatetime;

    private Integer goodsUpdateuser;

    private Integer goodsStatus;

    private String goodsDesc;

    public List<Customer> getCustomer() {
        return customer;
    }

    public void setCustomer(List<Customer> customer) {
        this.customer = customer;
    }

    private List<Customer> customer;

    private static final long serialVersionUID = 1L;

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName == null ? null : goodsName.trim();
    }

    public Integer getCateId() {
        return cateId;
    }

    public void setCateId(Integer cateId) {
        this.cateId = cateId;
    }

    public String getGoodsCover() {
        return goodsCover;
    }

    public void setGoodsCover(String goodsCover) {
        this.goodsCover = goodsCover == null ? null : goodsCover.trim();
    }

    public Float getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(Float goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public Date getGoodsCreatetime() {
        return goodsCreatetime;
    }

    public void setGoodsCreatetime(Date goodsCreatetime) {
        this.goodsCreatetime = goodsCreatetime;
    }

    public Integer getGoodsCreateuser() {
        return goodsCreateuser;
    }

    public void setGoodsCreateuser(Integer goodsCreateuser) {
        this.goodsCreateuser = goodsCreateuser;
    }

    public Date getGoodsUpdatetime() {
        return goodsUpdatetime;
    }

    public void setGoodsUpdatetime(Date goodsUpdatetime) {
        this.goodsUpdatetime = goodsUpdatetime;
    }

    public Integer getGoodsUpdateuser() {
        return goodsUpdateuser;
    }

    public void setGoodsUpdateuser(Integer goodsUpdateuser) {
        this.goodsUpdateuser = goodsUpdateuser;
    }

    public Integer getGoodsStatus() {
        return goodsStatus;
    }

    public void setGoodsStatus(Integer goodsStatus) {
        this.goodsStatus = goodsStatus;
    }

    public String getGoodsDesc() {
        return goodsDesc;
    }

    public void setGoodsDesc(String goodsDesc) {
        this.goodsDesc = goodsDesc == null ? null : goodsDesc.trim();
    }
}