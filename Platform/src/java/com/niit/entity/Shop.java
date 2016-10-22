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
public class Shop {
    private int store_id;           //商店ID
    private int seller_id;          //卖家ID
    private String store_name;      //商店名称
    private int store_status;       //商店状态（1为营业，0为停业）
    private Date store_date;        //商店注册日期

    public int getStore_id() {
        return store_id;
    }

    public void setStore_id(int store_id) {
        this.store_id = store_id;
    }

    public int getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(int seller_id) {
        this.seller_id = seller_id;
    }

    public String getStore_name() {
        return store_name;
    }

    public void setStore_name(String store_name) {
        this.store_name = store_name;
    }

    public int getStore_status() {
        return store_status;
    }

    public void setStore_status(int store_status) {
        this.store_status = store_status;
    }

    public Date getStore_date() {
        return store_date;
    }

    public void setStore_date(Date store_date) {
        this.store_date = store_date;
    }
    
    
}
