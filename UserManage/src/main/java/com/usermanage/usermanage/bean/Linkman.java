package com.usermanage.usermanage.bean;

import java.io.Serializable;

public class Linkman implements Serializable {
    private static Integer linkmanId;

    private String linkmanName;

    private String linkmanPhone1;

    private String linkmanPhone2;

    private String linkmanPost;

    private Integer linkmanCustomerid;

    private static final long serialVersionUID = 1L;

    public Integer getlinkmanCustomerid() {
        return linkmanCustomerid;
    }

    public void setlinkmanCustomerid(Integer linkman_customerid) {
        this.linkmanCustomerid = linkman_customerid;
    }
    public static Integer getLinkmanId() {
        return linkmanId;
    }

    public void setLinkmanId(Integer linkmanId) {
        this.linkmanId = linkmanId;
    }

    public String getLinkmanName() {
        return linkmanName;
    }

    public void setLinkmanName(String linkmanName) {
        this.linkmanName = linkmanName == null ? null : linkmanName.trim();
    }

    public String getLinkmanPhone1() {
        return linkmanPhone1;
    }

    public void setLinkmanPhone1(String linkmanPhone1) {
        this.linkmanPhone1 = linkmanPhone1 == null ? null : linkmanPhone1.trim();
    }

    public String getLinkmanPhone2() {
        return linkmanPhone2;
    }

    public void setLinkmanPhone2(String linkmanPhone2) {
        this.linkmanPhone2 = linkmanPhone2 == null ? null : linkmanPhone2.trim();
    }

    public String getLinkmanPost() {
        return linkmanPost;
    }

    public void setLinkmanPost(String linkmanPost) {
        this.linkmanPost = linkmanPost == null ? null : linkmanPost.trim();
    }
}