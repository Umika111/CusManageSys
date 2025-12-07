package com.usermanage.usermanage.bean;

import java.io.Serializable;
import java.util.List;

public class GoodsCategory implements Serializable {
    private Integer cateId;

    private String cateName;

    private String cateOrder;

    private Integer catePid;

    private static final long serialVersionUID = 1L;

    private List<Goods> goods;

    public List<Goods> getGoods() {
        return goods;
    }

    public void setGoods(List<Goods> goods) {
        this.goods = goods;
    }

    public Integer getCateId() {
        return cateId;
    }

    public void setCateId(Integer cateId) {
        this.cateId = cateId;
    }

    public String getCateName() {
        return cateName;
    }
//== null ? null : cateName.trim()
    public void setCateName(String cateName) {
        this.cateName = cateName ;
    }

    public String getCateOrder() {
        return cateOrder;
    }
//== null ? null : cateOrder.trim()
    public void setCateOrder(String cateOrder) {
        this.cateOrder = cateOrder ;
    }

    public Integer getCatePid() {
        return catePid;
    }

    public void setCatePid(Integer catePid) {
        this.catePid = catePid;
    }
}