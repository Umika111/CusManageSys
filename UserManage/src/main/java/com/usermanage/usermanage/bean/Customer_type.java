package com.usermanage.usermanage.bean;

import java.io.Serializable;
import java.util.List;

public class Customer_type implements Serializable {
    private Integer ctypeId;

    private String ctypeName;

    private Integer ctypeOrder;

    private static final long serialVersionUID = 1L;

    private List<Customer> customer;
    public List<Customer> getCustomer() {
        return customer;
    }

    public void setCustomer(List<Customer> customer) {
        this.customer = customer;
    }

    public Integer getCtypeId() {
        return ctypeId;
    }

    public void setCtypeId(Integer ctypeId) {
        this.ctypeId = ctypeId;
    }

    public String getCtypeName() {
        return ctypeName;
    }

    public void setCtypeName(String ctypeName) {
        this.ctypeName = ctypeName == null ? null : ctypeName.trim();
    }

    public Integer getCtypeOrder() {
        return ctypeOrder;
    }

    public void setCtypeOrder(Integer ctypeOrder) {
        this.ctypeOrder = ctypeOrder;
    }
}