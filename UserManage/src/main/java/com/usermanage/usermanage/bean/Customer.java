package com.usermanage.usermanage.bean;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Customer implements Serializable {
    private Integer customerId;

    private String customerName;

    private String customerAddress;

    private Integer ctypeId;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date customerCreatetime;

    private Integer customerCreateuser;

    private Date customerUpdatetime;

    private Integer customerUpdateuser;

    private Integer customerStatus;

    private String customerTaxid;

    private Integer linkmanId;

    private List<Linkman> linkman;

    private Customer_type type;

    private List<buy> buy;

    private  Goods goods;

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public List<com.usermanage.usermanage.bean.buy> getBuy() {
        return buy;
    }

    public void setBuy(List<com.usermanage.usermanage.bean.buy> buy) {
        this.buy = buy;
    }

    public List<Linkman> getLinkman() {
        return linkman;
    }

    public void setLinkman(List<Linkman> linkman) {
        this.linkman = linkman;
    }

    public Customer_type getType() {
        return type;
    }

    public void setType(Customer_type type) {
        this.type = type;
    }

    private static final long serialVersionUID = 1L;

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName == null ? null : customerName.trim();
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress == null ? null : customerAddress.trim();
    }

    public Integer getCtypeId() {
        return ctypeId;
    }

    public void setCtypeId(Integer ctypeId) {
        this.ctypeId = ctypeId;
    }

    public Date getCustomerCreatetime() {
        return customerCreatetime;
    }

    public void setCustomerCreatetime(Date customerCreatetime) {
        this.customerCreatetime = customerCreatetime;
    }

    public Integer getCustomerCreateuser() {
        return customerCreateuser;
    }

    public void setCustomerCreateuser(Integer customerCreateuser) {
        this.customerCreateuser = customerCreateuser;
    }

    public Date getCustomerUpdatetime() {
        return customerUpdatetime;
    }

    public void setCustomerUpdatetime(Date customerUpdatetime) {
        this.customerUpdatetime = customerUpdatetime;
    }

    public Integer getCustomerUpdateuser() {
        return customerUpdateuser;
    }

    public void setCustomerUpdateuser(Integer customerUpdateuser) {
        this.customerUpdateuser = customerUpdateuser;
    }

    public Integer getCustomerStatus() {
        return customerStatus;
    }

    public void setCustomerStatus(Integer customerStatus) {
        this.customerStatus = customerStatus;
    }

    public String getCustomerTaxid() {
        return customerTaxid;
    }

    public void setCustomerTaxid(String customerTaxid) {
        this.customerTaxid = customerTaxid == null ? null : customerTaxid.trim();
    }

    public Integer getLinkmanId() {
        return linkmanId;
    }

    public void setLinkmanId(Integer linkmanId) {
        this.linkmanId = linkmanId;
    }
}