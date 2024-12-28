package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import database.Constant;

/**
 *
 * @author nhatb
 */
public class LoginController {
    public static boolean register(String username, String password){
        try {
            if (!isUserExist(username)) {
                Connection connection = DriverManager.getConnection(Constant.DB_URL, Constant.DB_USERNAME, Constant.DB_PASSWORD);
                PreparedStatement sql = connection.prepareStatement("insert into NguoiDung(tendangnhap, matkhau, vaitro) values (?, ?, 'customer')");
                sql.setString(1, username);
                sql.setString(2, password);
                sql.executeUpdate();
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean isUserExist(String username){
        try {
            Connection connection = DriverManager.getConnection(Constant.DB_URL, Constant.DB_USERNAME, Constant.DB_PASSWORD);
            PreparedStatement sql = connection.prepareStatement("select * from nguoidung where tendangnhap = ?");
            sql.setString(1, username);
            ResultSet rs = sql.executeQuery();
            if (!rs.isBeforeFirst()) {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    public static boolean validateLogin(String username, String password){
        try {
            if (isUserExist(username)) {
                Connection connection = DriverManager.getConnection(Constant.DB_URL, Constant.DB_USERNAME, Constant.DB_PASSWORD);
                PreparedStatement sql = connection.prepareStatement("select matkhau from nguoidung where tendangnhap = ? and matkhau = ?");
                sql.setString(1, username);
                sql.setString(2, password);
                ResultSet rs = sql.executeQuery();
                if (!rs.isBeforeFirst()) {
                    return false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    public static String login(String username, String password){
        try {
            if (validateLogin(username, password)) {
                Connection connection = DriverManager.getConnection(Constant.DB_URL, Constant.DB_USERNAME, Constant.DB_PASSWORD);
                PreparedStatement sql = connection.prepareStatement("select vaitro from nguoidung where tendangnhap = ?");
                sql.setString(1, username);
                ResultSet rs = sql.executeQuery();
                rs.next();
                String role = rs.getString(1);
                return role;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }
}