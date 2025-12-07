package com.usermanage.usermanage.bean;

import java.io.Serializable;

public class Department implements Serializable {
    private Integer depId;

    private String depName;

    private Integer depOrder;

    private Integer depPid;

    private Integer depState;

    private static final long serialVersionUID = 1L;

    public Integer getDepId() {
        return depId;
    }

    public void setDepId(Integer depId) {
        this.depId = depId;
    }

    public String getDepName() {
        return depName;
    }

    public void setDepName(String depName) {
        this.depName = depName == null ? null : depName.trim();
    }

    public Integer getDepOrder() {
        return depOrder;
    }

    public void setDepOrder(Integer depOrder) {
        this.depOrder = depOrder;
    }

    public Integer getDepPid() {
        return depPid;
    }

    public void setDepPid(Integer depPid) {
        this.depPid = depPid;
    }

    public Integer getDepState() {
        return depState;
    }

    public void setDepState(Integer depState) {
        this.depState = depState;
    }
}