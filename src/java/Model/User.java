/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

/**
 *
 * @author Computer
 */
public class User {

    private String iduser;
    private String hoten;
    private String username;
    private String email;
    private String gioitinh;
    private String dienthoai;
    private String capdo;
    private String url;

    public User() {
    }

    public User(String iduser, String hoten, String username, String email, String gioitinh, String dienthoai, String capdo, String url) {
        this.iduser = iduser;
        this.hoten = hoten;
        this.username = username;
        this.email = email;
        this.gioitinh = gioitinh;
        this.dienthoai = dienthoai;
        this.capdo = capdo;
        this.url = url;
    }
// Update User

    public boolean updateUser(String id, String hoten, String username, String dienthoai, String email, boolean gioitinh) {
        Connection connect = null;

        try {
            getData data = new getData();
            connect = data.getConnect();
            String sql = "Update NguoiDung set HoTen=?,Username=?,DienThoai=?,Email=?,GioiTinh=? where idUser=?";
            PreparedStatement st = connect.prepareStatement(sql);
            st.setString(1, hoten);
            st.setString(2, username);
            st.setString(3, dienthoai);
            st.setString(4, email);
            st.setBoolean(5, gioitinh);
            st.setString(6,id);
            int rs = st.executeUpdate();
            if (rs > 0) {
                return true;
            }
        } catch (Exception ex) {
        }
        return false;
    }
// Show 1 User

    public User showid(String id) {
        Connection connect = null;
        User user = null;
        try {
            getData data = new getData();
            connect = data.getConnect();
            String sql = "Select * from NguoiDung where idUser=?";
            PreparedStatement st = connect.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            user = new User();
            while (rs.next()) {
                user.setIduser(rs.getString("idUser"));
                user.setHoten(rs.getString("HoTen"));
                user.setUsername(rs.getString("Username"));
                user.setDienthoai(rs.getString("DienThoai"));
                user.setEmail(rs.getString("Email"));
                if (rs.getBoolean("GioiTinh") == true) {
                    user.setGioitinh("Nam");
                } else {
                    user.setGioitinh("Nữ");
                }

                user.setUrl(rs.getString("URL"));
            }
        } catch (Exception ex) {

        }
        return user;
    }
// Show User

    public List<User> show() {
        Connection connect = null;
        User user = null;
        List<User> ds = null;

        try {
            getData data = new getData();
            connect = data.getConnect();
            String sql = "Select * from NguoiDung";
            Statement st = connect.createStatement();
//            st.setString(1, id);
            ResultSet rs = st.executeQuery(sql);
            ResultSetMetaData rsmeta = rs.getMetaData();
            int socot = rsmeta.getColumnCount();

            ds = new ArrayList<>();
            while (rs.next()) {
                user = new User();
                user.setIduser(rs.getString("idUser"));
                user.setHoten(rs.getString("HoTen"));
                user.setUsername(rs.getString(2));
                user.setDienthoai(rs.getString("DienThoai"));
                user.setEmail(rs.getString("Email"));
                if (rs.getBoolean("GioiTinh") == true) {
                    user.setGioitinh("Nam");
                } else {
                    user.setGioitinh("Nữ");
                }

                user.setUrl(rs.getString("URL"));
                if (rs.getBoolean("Permission") == true) {
                    user.setCapdo("Admin");
                } else {
                    user.setCapdo("User");
                }

                ds.add(user);
            }
            rs.close();
            st.close();
            connect.close();
        } catch (Exception ex) {

        }
        return ds;
    }
// Get Size

    public int getsize() {
        Connection connect = null;
        int size = 0;

        try {
            getData data = new getData();
            connect = data.getConnect();
            String sql = "Select * from NguoiDung";
            Statement st = connect.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                size = rs.getRow();
            }
        } catch (Exception ex) {

        }
        return size;
    }
// Xóa

    public boolean xoaUser(String id) {
        Connection connect = null;
        try {
            getData data = new getData();
            connect = data.getConnect();
            String sql = "Delete from NguoiDung where idUser=?";
            PreparedStatement st = connect.prepareStatement(sql);
            st.setString(1, id);
            int result = st.executeUpdate();
            
            if (result>0) {
                return true;
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return false;
    }

    public String getIduser() {
        return iduser;
    }

    public void setIduser(String iduser) {
        this.iduser = iduser;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGioitinh() {
        return gioitinh;
    }

    public void setGioitinh(String gioitinh) {
        this.gioitinh = gioitinh;
    }

    public String getDienthoai() {
        return dienthoai;
    }

    public void setDienthoai(String dienthoai) {
        this.dienthoai = dienthoai;
    }

    public String getCapdo() {
        return capdo;
    }

    public void setCapdo(String capdo) {
        this.capdo = capdo;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public static void main(String[] args) {
        User us = new User();
        List<User> ds = new ArrayList<>();
        ds = us.show();
        for (User user : ds) {
            System.out.println(user.getUsername());
        }
        System.out.println(us.getsize());
    }
}
