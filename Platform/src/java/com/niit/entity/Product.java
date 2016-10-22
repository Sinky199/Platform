 
package com.niit.entity;

 
public class Product {
   private int pro_id;
   private String pro_name;
   private String pro_type_name;
   private String pro_type_value;
   private double pro_price;
   private int category_id;
   private int seller_id;

    public int getPro_id() {
        return pro_id;
    }

    public void setPro_id(int pro_id) {
        this.pro_id = pro_id;
    }

    public String getPro_name() {
        return pro_name;
    }

    public void setPro_name(String pro_name) {
        this.pro_name = pro_name;
    }

    public String getPro_type_name() {
        return pro_type_name;
    }

    public void setPro_type_name(String pro_type_name) {
        this.pro_type_name = pro_type_name;
    }

    public String getPro_type_value() {
        return pro_type_value;
    }

    public void setPro_type_value(String pro_type_value) {
        this.pro_type_value = pro_type_value;
    }

    public double getPro_price() {
        return pro_price;
    }

    public void setPro_price(double pro_price) {
        this.pro_price = pro_price;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public int getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(int seller_id) {
        this.seller_id = seller_id;
    }
   
   
}
