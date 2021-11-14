package com.ultramotor.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nghipc
 */
public class XJdbc {

    private static Connection con;
    private static final String URL = "jdbc:sqlserver://localhost;databaseName=HONDA;username=sa;password=songlong";

    public static Connection getCon() {
        try {
            if (con == null || con.isClosed()) {
                con = DriverManager.getConnection(URL);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return con;
    }

    private static PreparedStatement getStmt(String sql, Object... args) throws SQLException {
        con = getCon();
        PreparedStatement pstmt;
        if (sql.trim().startsWith("{") || sql.trim().startsWith("exec")) {
            pstmt = con.prepareCall(sql);
        } else {
            pstmt = con.prepareStatement(sql);
        }
        for (int i = 0; i < args.length; i++) {
            pstmt.setObject(i + 1, args[i]);
        }
        return pstmt;
    }

    public static ResultSet query(String sql, Object... args) throws SQLException {
        PreparedStatement pstmt = getStmt(sql, args);
        return pstmt.executeQuery();
    }

    public static Object value(String sql, Object... args) {
        Object value = null;
        try (ResultSet rs = query(sql, args)) {
            if (rs.next()) {
                value = rs.getObject(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            closeCon();
        }
        return value;
    }

    public static int update(String sql, Object... args) {
        int count = 0;
        try (PreparedStatement pstmt = getStmt(sql, args)) {
            count = pstmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            closeCon();
        }
        return count;
    }

    public static void closeCon() {
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
