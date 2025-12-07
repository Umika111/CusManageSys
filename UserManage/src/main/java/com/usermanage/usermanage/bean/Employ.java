package com.usermanage.usermanage.bean;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

public class Employ implements Serializable {
    private Integer emId;

    private String emName;

    private String emPhone;

    private String emSex;

    private String emPost;

    private String emAddress;

    private Integer depId;

    private Integer emState;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date openDate;
    private Date emCreatetime;

    private Integer emCreateuser;

    private static final long serialVersionUID = 1L;


    public Integer getEmId() {
        return emId;
    }

    public void setEmId(Integer emId) {
        this.emId = emId;
    }

    public String getEmName() {
        return emName;
    }

    public void setEmName(String emName) {
        this.emName = emName == null ? null : emName.trim();
    }

    public String getEmPhone() {
        return emPhone;
    }

    public void setEmPhone(String emPhone) {
        this.emPhone = emPhone == null ? null : emPhone.trim();
    }

    public String getEmSex() {
        return emSex;
    }

    public void setEmSex(String emSex) {
        this.emSex = emSex == null ? null : emSex.trim();
    }

    public String getEmPost() {
        return emPost;
    }

    public void setEmPost(String emPost) {
        this.emPost = emPost == null ? null : emPost.trim();
    }

    public String getEmAddress() {
        return emAddress;
    }

    public void setEmAddress(String emAddress) {
        this.emAddress = emAddress == null ? null : emAddress.trim();
    }

    public Integer getDepId() {
        return depId;
    }

    public void setDepId(Integer depId) {
        this.depId = depId;
    }

    public Integer getEmState() {
        return emState;
    }

    public void setEmState(Integer emState) {
        this.emState = emState;
    }

    public Date getEmCreatetime() {
        return emCreatetime;
    }

    public void setEmCreatetime(Date emCreatetime) {
        this.emCreatetime = emCreatetime;
    }

    public Integer getEmCreateuser() {
        return emCreateuser;
    }

    public void setEmCreateuser(Integer emCreateuser) {
        this.emCreateuser = emCreateuser;
    }
}