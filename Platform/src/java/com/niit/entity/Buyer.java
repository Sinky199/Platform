/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.entity;

import java.util.Date;

/**
 *
 * @author M
 */
public class Buyer {
    private int buyer_id;               //ID
    private String buyer_email;         //登录账号  
    private String buyer_password;      //密码
    private String buyer_name;          //买家姓名
    private String buyer_card;          //买家身份证号码
    private String buyer_phone;         //买家联系电话
    private String buyer_address;       //买家配送地址
    private Date buyer_date;            //买家账号注册日期
    private int buyer_status;           //买家账号状态（1为在线，0为不在线）

    public int getBuyer_id() {
        return buyer_id;
    }

    public void setBuyer_id(int buyer_id) {
        this.buyer_id = buyer_id;
    }

    public String getBuyer_email() {
        return buyer_email;
    }

    public void setBuyer_email(String buyer_email) {
        this.buyer_email = buyer_email;
    }

    public String getBuyer_password() {
        return buyer_password;
    }

    public void setBuyer_password(String buyer_password) {
        this.buyer_password = buyer_password;
    }

    public String getBuyer_name() {
        return buyer_name;
    }

    public void setBuyer_name(String buyer_name) {
        this.buyer_name = buyer_name;
    }

    public String getBuyer_card() {
        return buyer_card;
    }

    public void setBuyer_card(String buyer_card) {
        this.buyer_card = buyer_card;
    }

    public String getBuyer_phone() {
        return buyer_phone;
    }

    public void setBuyer_phone(String buyer_phone) {
        this.buyer_phone = buyer_phone;
    }

    public String getBuyer_address() {
        return buyer_address;
    }

    public void setBuyer_address(String buyer_address) {
        this.buyer_address = buyer_address;
    }

    public Date getBuyer_date() {
        return buyer_date;
    }

    public void setBuyer_date(Date buyer_date) {
        this.buyer_date = buyer_date;
    }

    public int getBuyer_status() {
        return buyer_status;
    }

    public void setBuyer_status(int buyer_status) {
        this.buyer_status = buyer_status;
    }
    
    
         
}
