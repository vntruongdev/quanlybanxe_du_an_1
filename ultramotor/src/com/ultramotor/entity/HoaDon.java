/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultramotor.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author nghipc
 */
@Entity
@Table(name = "HoaDon")
@NamedQueries({
    @NamedQuery(name = "HoaDon.findAll", query = "SELECT h FROM HoaDon h")})
public class HoaDon implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idHD")
    private String idHD;
    @Basic(optional = false)
    @Column(name = "thoiGian")
    @Temporal(TemporalType.DATE)
    private Date thoiGian;
    @Basic(optional = false)
    @Column(name = "loaiThanhToan")
    private String loaiThanhToan;
    @Basic(optional = false)
    @Column(name = "trangThai")
    private String trangThai;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idHD")
    private List<ChiTietHoaDon> chiTietHoaDonList;
    @JoinColumn(name = "idKH", referencedColumnName = "idKH")
    @ManyToOne
    private KhachHang idKH;
    @JoinColumn(name = "id_NV", referencedColumnName = "id_NV")
    @ManyToOne(optional = false)
    private NhanVien idNV;

    public HoaDon() {
    }

    public HoaDon(String idHD) {
        this.idHD = idHD;
    }

    public HoaDon(String idHD, Date thoiGian, String loaiThanhToan, String trangThai) {
        this.idHD = idHD;
        this.thoiGian = thoiGian;
        this.loaiThanhToan = loaiThanhToan;
        this.trangThai = trangThai;
    }

    public String getIdHD() {
        return idHD;
    }

    public void setIdHD(String idHD) {
        this.idHD = idHD;
    }

    public Date getThoiGian() {
        return thoiGian;
    }

    public void setThoiGian(Date thoiGian) {
        this.thoiGian = thoiGian;
    }

    public String getLoaiThanhToan() {
        return loaiThanhToan;
    }

    public void setLoaiThanhToan(String loaiThanhToan) {
        this.loaiThanhToan = loaiThanhToan;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public List<ChiTietHoaDon> getChiTietHoaDonList() {
        return chiTietHoaDonList;
    }

    public void setChiTietHoaDonList(List<ChiTietHoaDon> chiTietHoaDonList) {
        this.chiTietHoaDonList = chiTietHoaDonList;
    }

    public KhachHang getIdKH() {
        return idKH;
    }

    public void setIdKH(KhachHang idKH) {
        this.idKH = idKH;
    }

    public NhanVien getIdNV() {
        return idNV;
    }

    public void setIdNV(NhanVien idNV) {
        this.idNV = idNV;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idHD != null ? idHD.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof HoaDon)) {
            return false;
        }
        HoaDon other = (HoaDon) object;
        if ((this.idHD == null && other.idHD != null) || (this.idHD != null && !this.idHD.equals(other.idHD))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.ultramotor.entity.HoaDon[ idHD=" + idHD + " ]";
    }
    
}