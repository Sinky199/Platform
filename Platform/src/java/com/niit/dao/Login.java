/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.dao;

import com.niit.impl.DB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author M
 */
public class Login {
    PreparedStatement pstm;
    Connection con;
    DB db ;
    ResultSet rs;
    public Login()
    {
        db = new DB();
        con = db.connectSQL();
    }
    public int buyer_login(String buyer_email,String buyer_password) throws SQLException
    {
        String sql = "select * from buyer where buyer_email = ? and buyer_password = ?";
        pstm = con.prepareStatement(sql);
        pstm.setString(1, buyer_email);
        pstm.setString(2, buyer_password);
        rs = pstm.executeQuery();
        
        if(!rs.next())
        {
            System.out.println("----------------登录失败");
            return 0;  
            
        }else
        {
            System.out.println("----------------登录成功");
            return 1;
        }
            
        
    }
        public int seller_login(String seller_email,String seller_password) throws SQLException
    {
        String sql = "select * from seller where seller_email = ? and seller_password = ?";
        pstm = con.prepareStatement(sql);
        pstm.setString(1, seller_email);
        pstm.setString(2, seller_password);
        rs = pstm.executeQuery();
        
        if(!rs.next())
        {
            System.out.println("----------------登录失败");
            return 0;  
            
        }else
        {
            System.out.println("----------------登录成功");
            return 1;
        }
    }
            public int manager_login(String manager_email,String manager_password) throws SQLException
    {
        String sql = "select * from manager where manager_email = ? and manager_password = ?";
        pstm = con.prepareStatement(sql);
        pstm.setString(1, manager_email);
        pstm.setString(2, manager_password);
        rs = pstm.executeQuery();
        
        if(!rs.next())
        {
            System.out.println("----------------登录失败");
            return 0;  
            
        }else
        {
            System.out.println("----------------登录成功");
            return 1;
        }
    }
    
     
}
