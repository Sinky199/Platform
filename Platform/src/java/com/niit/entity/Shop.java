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
}
