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
public class giohang implements Serializable {

    private String tentour;
    private String ngaykh;
    private String thoigian;
    private String diadiem;
    private String gia;
    private String mota;
    private String chitiet;
    private String id;
    private String url;
    private int soluong;
    private int tongtien;
    public static ArrayList<giohang> gt = new ArrayList<>();
    public static ArrayList<giohang> ds = new ArrayList<>();
    public static giohang gh = new giohang();

    public giohang() {
    }

    public giohang(String tentour, String ngaykh, String thoigian, String diadiem, String gia, String mota, String chitiet, String id, int soluong, String url, int tongtien) {
        this.tentour = tentour;
        this.ngaykh = ngaykh;
        this.thoigian = thoigian;
        this.diadiem = diadiem;
        this.gia = gia;
        this.mota = mota;
        this.chitiet = chitiet;
        this.id = id;
        this.soluong = soluong;
        this.url=url;
        this.tongtien=tongtien;
    }

// kiem tra gio hang
    public boolean kiemtra(String id) {
        for (int i = 0; i < gt.size(); i++) {
            if (gt.get(i).getId().equals(id)) {
                return true;

            }
        }
        return false;
    }
// Them vao gio hang

    public boolean themvaogiohang(String id) {
        boolean kiemtra = kiemtra(id);

        Connection connect = null;
        giohang gh = null;
        try {
            getData data = new getData();
            connect = data.getConnect();
            String sql = "Select * from GioHang where IDTour=?";
            PreparedStatement st = connect.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            gh = new giohang();
            boolean result = rs.next();
            if (result && kiemtra == false) {
                int index = 1;
//                while (rs.next()) {
                gh.setTentour(rs.getString("TenTour"));
                gh.setNgaykh(rs.getString("NgayKH"));
                gh.setThoigian(rs.getString("ThoiGian"));
                gh.setGia(rs.getString("Gia"));
                gh.setDiadiem(rs.getString("DiaDiem"));
                gh.setSoluong(index);
                gh.setId(rs.getString("IDTour"));
                gh.setUrl(rs.getString("URL"));
                gt.add(gh);
//                }
                return true;
            } else if (kiemtra == true) {
                int index = gt.size();
                int count = 0;
                for (int i = 0; i < index; i++) {
                    if (gt.get(i).getId().equals(id)) {
                        String[] s = gt.get(i).getGia().split("\\.");
                        String ch = "";
                        for (int j = 0; j < s.length; j++) {
                            ch = ch + s[j];
                        }
                        int gia = Integer.parseInt(ch);
                        int sum = 0;
                        gt.get(i).setSoluong(gt.get(i).getSoluong() + 1);
                        count = gt.get(i).getSoluong() ;
                        if (count > 1) {
                            sum = gia + (gia / (count - 1));
                        } else {
                            sum = gia;
                        }
                        String t=String.valueOf(sum);
                        
                        gt.get(i).setGia(String.valueOf(sum));

                    }
                }
            }
            rs.close();
            st.close();
            connect.close();

        } catch (Exception ex) {
            System.out.println(ex);
        }

        return false;
    }
//Remove gio hang

    public boolean delete(int id) {
        Connection connect = null;
        giohang gh = null;
        try {

            gh = new giohang();
            gh.getGt().remove(id);

        } catch (Exception ex) {

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

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getTongtien() {
        return tongtien;
    }

    public void setTongtien(int tongtien) {
        this.tongtien = tongtien;
    }
    
    public static ArrayList<giohang> getGt() {
        return gt;
    }

    public static void setGt(ArrayList<giohang> gt) {
        giohang.gt = gt;
    }

    public static void main(String[] args) {
        giohang gh = new giohang();
        boolean t = gh.themvaogiohang("TN1");

        System.out.println(gh.getGt().get(0).getDiadiem());
        System.out.println(gh.getGt().get(0).getSoluong());

    }

   

}
