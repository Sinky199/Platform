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
public class Sellers {
    private int seller_id;               //ID
    private String seller_email;         //登录账号  
    private String seller_password;      //密码
    private String seller_name;          //买家姓名
    private String seller_card;          //买家身份证号码
    private String seller_phone;         //买家联系电话
    private String seller_address;       //买家配送地址
    private int seller_number;
    private Date seller_date;            //买家账号注册日期
    private int seller_status;           //买家账号状态（1为在线，0为不在线）

    public int getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(int seller_id) {
        this.seller_id = seller_id;
    }

    public String getSeller_email() {
        return seller_email;
    }

    public void setSeller_email(String seller_email) {
        this.seller_email = seller_email;
    }

    public String getSeller_password() {
        return seller_password;
    }

    public void setSeller_password(String seller_password) {
        this.seller_password = seller_password;
    }

    public String getSeller_name() {
        return seller_name;
    }

    public void setSeller_name(String seller_name) {
        this.seller_name = seller_name;
    }

    public String getSeller_card() {
        return seller_card;
    }

    public void setSeller_card(String seller_card) {
        this.seller_card = seller_card;
    }

    public String getSeller_phone() {
        return seller_phone;
    }

    public void setSeller_phone(String seller_phone) {
        this.seller_phone = seller_phone;
    }

    public String getSeller_address() {
        return seller_address;
    }

    public void setSeller_address(String seller_address) {
        this.seller_address = seller_address;
    }

    public int getSeller_number() {
        return seller_number;
    }

    public void setSeller_number(int seller_number) {
        this.seller_number = seller_number;
    }

    public Date getSeller_date() {
        return seller_date;
    }

    public void setSeller_date(Date seller_date) {
        this.seller_date = seller_date;
    }

    public int getSeller_status() {
        return seller_status;
    }

    public void setSeller_status(int seller_status) {
        this.seller_status = seller_status;
    }
    
    
}
