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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Computer
 */
public class ChiTiet implements Serializable {

    private String tentour;
    private String ngaykh;
    private String thoigian;
    private String diadiem;
    private String gia;
    private String mota;
    private String chitiet;
    private String id;
    private String url;
    public ChiTiet() {
    }

    public ChiTiet(String tentour, String ngaykh, String thoigian, String diadiem, String gia, String mota, String chitiet, String id, String url) {
        this.tentour = tentour;
        this.ngaykh = ngaykh;
        this.thoigian = thoigian;
        this.diadiem = diadiem;
        this.gia = gia;
        this.mota = mota;
        this.chitiet = chitiet;
        this.id = id;
        this.url=url;
    }
// Xuat thong tin

    public ChiTiet showTN(String id) {
        Connection connect = null;
        List<ChiTiet> ds = new ArrayList<ChiTiet>();
        ChiTiet ct = null;
        try {
            getData data = new getData();
            connect = data.getConnect();
            String sql = "Select * from TourTN where IDTour=?";
            PreparedStatement st = connect.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            ct = new ChiTiet();
            while (rs.next()) {
                ct.setTentour(rs.getString("TenTour"));
                ct.setNgaykh(rs.getString("NgayKH"));
                ct.setThoigian(rs.getString("ThoiGian"));
                ct.setGia(rs.getString("Gia"));
                ct.setDiadiem(rs.getString("DiaDiem"));
                ct.setMota(rs.getString("MoTa"));
                ct.setChitiet(rs.getString("ChiTiet"));
                ct.setId(rs.getString("IDTour"));
                ct.setUrl(rs.getString("urlTN"));
                ds.add(ct);
            }

            rs.close();
            st.close();
            connect.close();

        } catch (Exception ex) {
            System.out.println(ex);
        }
        return ct;
    }
// Show 1 Tour dua vao ID

    public ChiTiet showQT(String id) {
        Connection connect = null;
        List<ChiTiet> ds = new ArrayList<ChiTiet>();
        ChiTiet ct = null;
        try {
            getData data = new getData();
            connect = data.getConnect();
            String sql = "Select * from TourQT where IDTour=?";
            PreparedStatement st = connect.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            ct = new ChiTiet();
            while (rs.next()) {
                ct.setTentour(rs.getString("TenTour"));
                ct.setNgaykh(rs.getString("NgayKH"));
                ct.setThoigian(rs.getString("ThoiGian"));
                ct.setGia(rs.getString("Gia"));
                ct.setDiadiem(rs.getString("DiaDiem"));
                ct.setMota(rs.getString("MoTa"));
                ct.setChitiet(rs.getString("ChiTiet"));
                ct.setId(rs.getString("IDTour"));
                ct.setUrl(rs.getString("urlQT"));
            }

            rs.close();
            st.close();
            connect.close();

        } catch (Exception ex) {
            System.out.println(ex);
        }
        return ct;
    }
//Show full TN

    public List<ChiTiet> show() {
        Connection connect = null;
        List<ChiTiet> ds = new ArrayList<ChiTiet>();
        ChiTiet ct = null;
        int size = 0;
        try {
            getData data = new getData();
            connect = data.getConnect();
            String sql = "Select * from TourTN ";
            Statement st = connect.createStatement();
            ResultSet rs = st.executeQuery(sql);
            
            while (rs.next()) {
                ct = new ChiTiet();
                ct.setTentour(rs.getString("TenTour"));
                ct.setNgaykh(rs.getString("NgayKH"));
                ct.setThoigian(rs.getString("ThoiGian"));
                ct.setGia(rs.getString("Gia"));
                ct.setDiadiem(rs.getString("DiaDiem"));
                ct.setMota(rs.getString("MoTa"));
                ct.setChitiet(rs.getString("ChiTiet"));
                ct.setId(rs.getString("IDTour"));
                ct.setUrl(rs.getString("urlTN"));
                ds.add(ct);
            }
            size = ds.size();
            rs.close();
            st.close();
            connect.close();

        } catch (Exception ex) {
            System.out.println(ex);
        }
        return ds;
    }
// Show all TourQT
    public List<ChiTiet> showQT() {
        Connection connect = null;
        List<ChiTiet> ds = new ArrayList<ChiTiet>();
        ChiTiet ct = null;
        int size = 0;
        try {
            getData data = new getData();
            connect = data.getConnect();
            String sql = "Select * from TourQT ";
            Statement st = connect.createStatement();
            ResultSet rs = st.executeQuery(sql);
            
            while (rs.next()) {
                ct = new ChiTiet();
                ct.setTentour(rs.getString("TenTour"));
                ct.setNgaykh(rs.getString("NgayKH"));
                ct.setThoigian(rs.getString("ThoiGian"));
                ct.setGia(rs.getString("Gia"));
                ct.setDiadiem(rs.getString("DiaDiem"));
                ct.setMota(rs.getString("MoTa"));
                ct.setChitiet(rs.getString("ChiTiet"));
                ct.setId(rs.getString("IDTour"));
                ct.setUrl(rs.getString("urlQT"));
                ds.add(ct);
            }
            size = ds.size();
            rs.close();
            st.close();
            connect.close();

        } catch (Exception ex) {
            System.out.println(ex);
        }
        return ds;
    }
    //Xoa Tour
    public boolean delete(String id) {
        Connection connect = null;

        try {
            getData data = new getData();
            connect = data.getConnect();
            String sql = "Delete from TourTN where IDTour=?";
            PreparedStatement st = connect.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            boolean result = rs.next();
            if (result) {
                return true;
            }
        } catch (Exception ex) {
        }
        return false;
    }
// Update

    public boolean update(String id, String tentour, String ngaykh, String thoigian, String diadiem, String gia, String path) {
        Connection connect = null;

        try {
            getData data = new getData();
            connect = data.getConnect();
            String sql = "Update TourTN set TenTour=?,NgayKH=?,ThoiGian=?,DiaDiem=?,Gia=?,urlTN=?  where IDTour=?";
            PreparedStatement st = connect.prepareStatement(sql);
            
            st.setString(1, tentour);
            st.setString(2, ngaykh);
            st.setString(3, thoigian);

            st.setString(4, diadiem);
            st.setString(5, gia);
            st.setString(7, id);
            st.setString(6, path);

            
            int rs = st.executeUpdate();
//            boolean result = rs.next();
            if (rs>0) {
                return true;
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return false;
    }
// Insert
    public boolean insert(String id, String tentour, String ngaykh, String thoigian, String diadiem, String gia, String mota, String path ){
        Connection connect = null;

        try {
            getData data = new getData();
            connect = data.getConnect();
            String sql = "Insert into TourTN(IDTour,TenTour,NgayKH,ThoiGian,DiaDiem,Gia,MoTa,urlTN) Values (?,?,?,?,?,?,?,?)";
            PreparedStatement st = connect.prepareStatement(sql);
            st.setString(1, id);
            st.setString(2, tentour);
            st.setString(3, ngaykh);
            st.setString(4, thoigian);
            st.setString(5, diadiem);
            st.setString(6, gia);
            st.setString(7, mota);
            st.setString(8, path);
            int result = st.executeUpdate();
            
            if (result>0) {
                return true;
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return false;
    }
    public String getTentour() {
        return tentour;
    }

    public void setTentour(String tentour) {
        this.tentour = tentour;
    }

    public String getNgaykh() {
        return ngaykh;
    }

    public void setNgaykh(String ngaykh) {
        this.ngaykh = ngaykh;
    }

    public String getThoigian() {
        return thoigian;
    }

    public void setThoigian(String thoigian) {
        this.thoigian = thoigian;
    }

    public String getDiadiem() {
        return diadiem;
    }

    public void setDiadiem(String diadiem) {
        this.diadiem = diadiem;
    }

    public String getGia() {
        return gia;
    }

    public void setGia(String gia) {
        this.gia = gia;
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

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    
    public static void main(String[] args) {
        ChiTiet ct = new ChiTiet();
        System.out.println(ct.show().size());
    }
}
