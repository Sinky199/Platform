/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.dao;

 
import com.niit.entity.Buyer;
import com.niit.entity.Manager;
import com.niit.entity.Seller;
import com.niit.impl.DB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author M
 */
public class Register {
    PreparedStatement pstm;
    Connection con;
    DB db ;
    
    
    public Register()
    {
        db = new DB();
        con = db.connectSQL();
    }
    public int register_buyer(Buyer buyer) throws SQLException{
          
          try {
                String sql = "insert into buyer values(?,?,?,?,?,?,?,?)"; 
                pstm = con.prepareStatement(sql);
                pstm.setString(1, buyer.getBuyer_email());
                pstm.setString(2, buyer.getBuyer_password());
                pstm.setString(3, buyer.getBuyer_name());
                pstm.setString(4, buyer.getBuyer_card());
                pstm.setString(5, buyer.getBuyer_phone());
                pstm.setString(6, buyer.getBuyer_address());
                pstm.setString(7, new Date().toString());
                pstm.setString(8,"");
                pstm.executeUpdate();
        } catch (Exception e) {
            return 0;
        }
          return 1;
    };
    public int register_seller(Seller seller){
           
          try {
                String sql = "insert into seller values(?,?,?,?,?,?,?)"; 
                pstm = con.prepareStatement(sql);
                pstm.setString(1, seller.getSeller_email());
                pstm.setString(2, seller.getSeller_password());
                pstm.setString(3, seller.getSeller_name());
                pstm.setString(4, seller.getSeller_card());
                pstm.setString(5, seller.getSeller_phone());
                pstm.setString(6, seller.getSeller_address());
                pstm.setString(7, "");
                pstm.setString(8, new Date().toString());
                pstm.setString(9, "");
                pstm.executeUpdate();
        } catch (Exception e) {
            return 0;
        }
          return 1;
        
    };
    
    public int register_manager(Manager manager){
      
          try {
                String sql = "insert into manager values(?,?,?,?,?,?,?)"; 
                pstm = con.prepareStatement(sql);
                pstm.setString(1, manager.getManager_email());
                pstm.setString(2, manager.getManager_password());
                pstm.setString(3, manager.getManager_name());
                pstm.setString(4, manager.getManager_card());
                pstm.setString(5, manager.getManager_phone());
                pstm.executeUpdate();
        } catch (Exception e) {
            return 0;
        }
          return 1;
    };
    
}
