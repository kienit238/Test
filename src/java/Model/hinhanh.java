/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Computer
 */
public class hinhanh {

    private String url;
    private String id;

    public hinhanh() {
    }

    public hinhanh(String url, String id) {
        this.url = url;
        this.id = id;
    }
//Lau url Image

    public String getUrlTN(String id) {
        Connection connect = null;
        String url="";
        try {
            getData data=new getData();
            connect=data.getConnect();
            String sql="Select * from ImageTN where idTour=?";
            PreparedStatement st=connect.prepareStatement(sql);
            st.setString(1,id);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                url=rs.getString("urlTN");
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return url;
    }
//Get URL QT
    public String getUrlQT(String id) {
        Connection connect = null;
        String url="";
        try {
            getData data=new getData();
            connect=data.getConnect();
            String sql="Select * from ImageQT where idTour=?";
            PreparedStatement st=connect.prepareStatement(sql);
            st.setString(1,id);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                url=rs.getString("urlQT");
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return url;
    }
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

}
