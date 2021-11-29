package com.ultramotor.dao;

import com.ultramotor.entity.ModelSanPham;
import com.ultramotor.entity.SanPham;
import com.ultramotor.util.XJdbc;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SanPhamDAO extends UltraDAO<SanPham, String> {

    {
        TABLE_NAME = "SanPham";
        SELECT_BY_ID_SQL = String.format("select *, dbo.fn_soLuongTonSp(%s) from %s where %s = ?","SKU", TABLE_NAME, "SKU");
        SELECT_ALL_SQL = String.format("select *, dbo.fn_soLuongTonSp(%s) from %s", "SKU", TABLE_NAME);
    }

    final String INSERT_SQL = String.format("exec usp_insert_%s ?, ?, ?, ?, ?, ? , ?, ?, ?, ?, ?, ?", TABLE_NAME);
    final String DELETE_SQL = String.format("DELETE FROM %s WHERE %s = ?", TABLE_NAME, "SKU");
//    String INSERT_SQL = "INSERT INTO SanPham(SKU,tenSP,hinh,mauSac,phanKhoi,doiXe,thoiGianBH,DiaChiSX,giaTien,moTa,tonKho,id_DongSP,id_NV)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
//    String UPDATE_SQL = "UPDATE SanPham SET tenSP=?,hinh=?,mauSac=?,phanKhoi=?,doiXe=?,thoiGianBH=?,DiaChiSX=?,giaTien=?,moTa=?,tonKho=? ,id_DongSP=?,id_NV=? WHERE SKU=?";
//    String DELETE_SQL = "DELETE FROM SanPham WHERE SKU=?";

    @Override
    public int insert(SanPham e) {
        return XJdbc.update(INSERT_SQL,
                e.getSku(), e.getTenSP(), e.getHinh(), e.getMauSac(), e.getPhanKhoi(), e.getDoiXe(), e.getThoiGianBH(),
                e.getDiaChiSX(), e.getGiaTien(), e.getMoTa(), e.getIdDongSP(), e.getIdNV());
    }

    @Override
    public int update(SanPham e) {
        return insert(e);
    }

    @Override
    public int delete(String id) {
        return XJdbc.update(DELETE_SQL, id);
    }

    @Override
    public List<SanPham> selectAll() {
        return selectBySQL(SELECT_ALL_SQL);
    }

    @Override
    public SanPham selectByID(String key) {
        List<SanPham> list = this.selectBySQL(SELECT_BY_ID_SQL, key);
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override
    public List<SanPham> selectBySQL(String sql, Object... args) {
        List<SanPham> list = new ArrayList<>();
        try (ResultSet rs = XJdbc.query(sql, args)) {
            while (rs.next()) {
                SanPham sp = new SanPham(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getFloat(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12));
                sp.settonKho(rs.getInt(13));
                list.add(sp);
            }
        } catch (SQLException ex) {
            Logger.getLogger(NhaSanXuatDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<SanPham> getListSP(ModelSanPham model) {
        String sql = "SELECT * FROM SanPham WHERE id_DongSP = ? AND DoiXe = ? AND PhanKhoi = ?";
        return selectBySQL(sql, model.getId_dongSP(), model.getDoiXe(), model.getPhanKhoi());
    }
}
