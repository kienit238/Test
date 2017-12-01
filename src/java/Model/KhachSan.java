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
public class KhachSan {

    private String id;
    private String tenks;
    private String danhgia;
    private String diadiem;
    private String mota;
    private String chitiet;
    private String gia;
    private String url;

    public KhachSan() {
    }

    public KhachSan(String id, String tenks, String danhgia, String diadiem, String mota, String chitiet, String gia, String url) {
        this.id = id;
        this.tenks = tenks;
        this.danhgia = danhgia;
        this.diadiem = diadiem;
        this.mota = mota;
        this.chitiet = chitiet;
        this.gia = gia;
        this.url = url;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTenks() {
        return tenks;
    }

    public void setTenks(String tenks) {
        this.tenks = tenks;
    }

    public String getDanhgia() {
        return danhgia;
    }

    public void setDanhgia(String danhgia) {
        this.danhgia = danhgia;
    }

    public String getDiadiem() {
        return diadiem;
    }

    public void setDiadiem(String diadiem) {
        this.diadiem = diadiem;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public String getChitiet() {
        return chitiet;
    }

    public void setChitiet(String chitiet) {
        this.chitiet = chitiet;
    }

    public String getGia() {
        return gia;
    }

    public void setGia(String gia) {
        this.gia = gia;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    //Show All
    public ArrayList<KhachSan> show() {
        Connection con = null;
        ArrayList<KhachSan> ds = new ArrayList<KhachSan>();
        try {
            getData data = new getData();
            con = data.getConnect();
            String sql = "Select * from KhachSan";
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                KhachSan ks = new KhachSan();
                ks.setId(rs.getString("IDKhachsan"));
                ks.setTenks(rs.getString("TenKS"));
                ks.setDanhgia(rs.getString("DanhGia"));
                ks.setMota(rs.getString("MoTa"));
                ks.setChitiet(rs.getString("ChiTiet"));
                ks.setDiadiem(rs.getString("DiaDiem"));
                ks.setUrl(rs.getString("URl"));
                ds.add(ks);
            }
        } catch (Exception ex) {
        }
        return ds;
    }

    //Show theo ID
    public KhachSan showone(String id) {
        Connection con = null;
        KhachSan ks = null;
        try {
            getData data = new getData();
            con = data.getConnect();
            String sql = "Select * from KhachSan where IDKhachSan=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                ks = new KhachSan();
                ks.setId(rs.getString("IDKhachSan"));
                ks.setTenks(rs.getString("TenKS"));
                ks.setDanhgia(rs.getString("DanhGia"));
                ks.setMota(rs.getString("MoTa"));
                ks.setChitiet(rs.getString("ChiTiet"));
                ks.setDiadiem(rs.getString("DiaDiem"));
                ks.setGia(rs.getString("Gia"));
                ks.setUrl(rs.getString("URl"));
            }
        } catch (Exception ex) {
        }
        return ks;
    }
}
