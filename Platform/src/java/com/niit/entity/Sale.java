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
public class Sale {
    private int sale_id;
    private int seller_id;
    private int buyer_id;
    private int pro_id;
    private Date sale_date;
    private String sale_desc;

    public int getSale_id() {
        return sale_id;
    }

    public void setSale_id(int sale_id) {
        this.sale_id = sale_id;
    }

    public int getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(int seller_id) {
        this.seller_id = seller_id;
    }

    public int getBuyer_id() {
        return buyer_id;
    }

    public void setBuyer_id(int buyer_id) {
        this.buyer_id = buyer_id;
    }

    public int getPro_id() {
        return pro_id;
    }

    public void setPro_id(int pro_id) {
        this.pro_id = pro_id;
    }

    public Date getSale_date() {
        return sale_date;
    }

    public void setSale_date(Date sale_date) {
        this.sale_date = sale_date;
    }

    public String getSale_desc() {
        return sale_desc;
    }

    public void setSale_desc(String sale_desc) {
        this.sale_desc = sale_desc;
    }
    
    
}
