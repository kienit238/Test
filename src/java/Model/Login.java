/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author PC01
 */
public class Login implements Serializable {

    private String username;
    private String password;
    private String email;
    private boolean roles;
    private boolean gioitinh;
    private String hoten;
    private String ngaysinh;

    public Login() {
    }

    public Login(String username, String password, String email, boolean roles, boolean gioitinh, String hoten, String ngaysinh) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.roles = roles;
        this.gioitinh = gioitinh;
        this.hoten = hoten;
        this.ngaysinh = ngaysinh;
    }

    public String checkLogin(String email, String password) {
        Connection connect = null;
        try {
            getData data = new getData();
            connect = data.getConnect();
            String sql = "Select * from NguoiDung where Email=? and Password=?";
            PreparedStatement st = connect.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, password);

            ResultSet rs = st.executeQuery();
            boolean result = rs.next();
            String name = "";

            name = rs.getString("Username");

            if (result) {

                return name;
            }
            st.close();
            connect.close();
            rs.close();
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return "";
    }
// kiemtra

    public int size() {
        Connection con = null;
        int size = 0;
        try {
            getData data = new getData();
            con = data.getConnect();
            String sql = "Select * from NguoiDung";
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                size=rs.getRow();
            }
        } catch (Exception ex) {

        }
        return size;
    }
//Insert

    public boolean dangky(String hoten, String email, String password, String gioitinh, String roles, String ngaysinh, String username) {
        Connection connect = null;
        int size=0;
        try {
            getData data = new getData();
            connect = data.getConnect();
            Login lg=new Login();
            String sql = "Insert into NguoiDung(HoTen,Email,Password,GioiTinh,Permission,NgaySinh,Username,idUser)" + "Values(?,?,?,?,?,?,?,?)";
            PreparedStatement st = connect.prepareStatement(sql);
            size=lg.size();
            st.setString(1, hoten);
            st.setString(2, email);
            st.setString(3, password);
            st.setString(4, gioitinh);
            st.setString(5, roles);
            st.setString(6, ngaysinh);
            st.setString(7, username);
            st.setString(8, "U"+(size+1));
            int result = st.executeUpdate();

            if (result > 0) {
                return true;
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return false;
    }
//Return Username

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isRoles() {
        return roles;
    }

    public void setRoles(boolean roles) {
        this.roles = roles;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isGioitinh() {
        return gioitinh;
    }

    public void setGioitinh(boolean gioitinh) {
        this.gioitinh = gioitinh;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(String ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public static void main(String[] args) {
        Login lg = new Login();
        boolean result = lg.dangky("Phạm Quốc Khánh", "khanh@gmail.com", "456", "True", "False", "11-10-1995", "Khánh");
//        System.out.println(lg.size());
        System.out.println(result);
    }
}
