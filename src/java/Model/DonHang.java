/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Computer
 */
public class DonHang {

    private String email;
    private String hoten;
    private String dienthoai;
    private String diachi;
    private int id;
    private String tongtien;

    public DonHang() {
    }

    public DonHang(String email, String hoten, String dienthoai, String diachi, int id, String tongtien) {
        this.email = email;
        this.hoten = hoten;
        this.dienthoai = dienthoai;
        this.diachi = diachi;
        this.id = id;
        this.tongtien = tongtien;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getDienthoai() {
        return dienthoai;
    }

    public void setDienthoai(String dienthoai) {
        this.dienthoai = dienthoai;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getTongtien() {
        return tongtien;
    }

    public void setTongtien(String tongtien) {
        this.tongtien = tongtien;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean themdonhang(String email, String hoten, String diachi, String dienthoai, String gia) {
        Connection con = null;
        try {
            getData data = new getData();
            con = data.getConnect();
            String sql = "Insert into DonHang(Email,HoTen,DiaChi,DienThoai,Gia) values(?,?,?,?,?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, hoten);
            st.setString(3, diachi);
            st.setString(4, dienthoai);
            st.setString(5, gia);
            int rs = st.executeUpdate();
            if (rs > 0) {
                return true;
            }
        } catch (Exception ex) {
        }
        return false;
    }
// Update

    public boolean capnhatdonhang(String email, String hoten, String diachi, String dienthoai, String gia, String id) {
        Connection con = null;
        try {
            getData data = new getData();
            con = data.getConnect();
            String sql = "Update DonHang set Email=?,HoTen=?,DiaChi=?,DienThoai=?,Gia=? where IDDH=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, hoten);
            st.setString(3, diachi);
            st.setString(4, dienthoai);
            st.setString(5, gia);
            st.setString(6, id);
            int rs = st.executeUpdate();
            if (rs > 0) {
                return true;
            }
        } catch (Exception ex) {
        }
        return false;
    }

    //Kiem tra don hang
    public boolean kiemtradonhang(String email) {
        Connection con = null;
        try {
            getData data = new getData();
            con = data.getConnect();
            DonHang dh = new DonHang();
            ArrayList<DonHang> ds = dh.show();
            for (int i = 0; i < ds.size(); i++) {
                if (ds.get(i).getEmail().equals(email)) {
                    return true;
                }
            }
        } catch (Exception ex) {
        }
        return false;
    }

    //Show all
    public ArrayList<DonHang> show() {
        Connection con = null;
        ArrayList<DonHang> ds = null;

        try {
            getData data = new getData();
            con = data.getConnect();
            String sql = "Select * from DonHang";
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            ds = new ArrayList<DonHang>();
            DonHang dh = null;
            while (rs.next()) {
                dh = new DonHang();
                dh.setId(rs.getInt("IDDH"));
                dh.setHoten(rs.getString("HoTen"));
                dh.setEmail(rs.getString("Email"));
                dh.setDiachi(rs.getString("DiaChi"));
                dh.setDienthoai(rs.getString("DienThoai"));
                dh.setTongtien(rs.getString("Gia"));
                ds.add(dh);
            }
        } catch (Exception ex) {

        }
        return ds;
    }

    //Delete Donhang
    public boolean delete(String id) {
        Connection con = null;
        try {
            getData data = new getData();
            con = data.getConnect();
            String sql = "Delete from DonHang where IDDH=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, id);
            int result = st.executeUpdate();
            if (result > 0) {
                return true;
            }
        } catch (Exception ex) {
        }
        return false;
    }

    //Show 1 donhang
    public DonHang showone(String id) {
        Connection con = null;
        DonHang ds=null;
        try {
            getData data=new getData();
            con=data.getConnect();
            String sql="Select * from DonHang where IDDH=?";
            PreparedStatement st=con.prepareStatement(sql);
            st.setString(1, id);
            ds=new DonHang();
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                ds.setId(rs.getInt("IDDH"));
                ds.setHoten(rs.getString("HoTen"));
                ds.setEmail(rs.getString("Email"));
                ds.setDiachi(rs.getString("DiaChi"));
                ds.setDienthoai(rs.getString("DienThoai"));
                ds.setTongtien(rs.getString("Gia"));
            }
        } catch (Exception ex) {
        }
        return ds;
    }
    public static void main(String[] args) {
        DonHang dh=new DonHang();
        DonHang ds=dh.showone("2");
        System.out.println(ds.getHoten());
    }
}
