/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import database.Constant;
import model.Homestay;

/**
 *
 * @author nhatbarry
 */
public class UserController {
    public static Vector<Homestay> find(String city) {
        Vector<Homestay> list = new Vector<>();
        try {
            Connection connection = DriverManager.getConnection(Constant.DB_URL, Constant.DB_USERNAME,
                    Constant.DB_PASSWORD);
            if (city.equals("Tất cả")) {
                city = "";
            }
            String searchCity = "%" + city + "%";
            PreparedStatement sql = connection.prepareStatement("SELECT * FROM timphong WHERE diaChi LIKE ? and trangthai = ?");
            sql.setString(1, searchCity);
            sql.setString(2, "Available");
            ResultSet rs = sql.executeQuery();
            while (rs.next()) {
                Homestay hs = new Homestay();
                hs.setMaHomestay(rs.getString(1));
                hs.setTenHomestay(rs.getString(2));
                hs.setMaPhong(rs.getString(3));
                hs.setLoaiPhong(rs.getString(4));
                hs.setGiaPhong(rs.getString(5));
                hs.setDiaChi(rs.getString(6));
                list.add(hs);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return list;
    }

    public static void book(int maphong, int mahomestay, int manguoidung, Date ngaynhan){
        try {
            Connection connection = DriverManager.getConnection(Constant.DB_URL, Constant.DB_USERNAME,
                    Constant.DB_PASSWORD);
            PreparedStatement sql = connection.prepareStatement("insert into datphong ([maPhong], [maHomestay], [maNguoiDung], [ngayNhanPhong]) values(? ,? ,?, ?)");
            sql.setInt(1, maphong);
            sql.setInt(2, mahomestay);
            sql.setInt(3, manguoidung);
            sql.setDate(4, ngaynhan);
            int rowsAffected = sql.executeUpdate();
            System.out.println(rowsAffected + " rows inserted.");
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }

    public static void update(String id, String username, String email, String phone, String add){
        try {
            Connection connection = DriverManager.getConnection(Constant.DB_URL, Constant.DB_USERNAME,
                    Constant.DB_PASSWORD);
            PreparedStatement sql = connection.prepareStatement("  update NguoiDung \r\n" + //
                                "  set tendangnhap = ?, email = ?, sodienthoai = ?, diachi = ? where maNguoiDung = ?");
            sql.setString(1, username);
            sql.setString(2, email);
            sql.setString(3, phone);
            sql.setString(4, add);
            sql.setString(5, id);
            int rowsAffected = sql.executeUpdate();
            System.out.println(rowsAffected + " rows updated.");
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }
}
