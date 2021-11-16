
package com.ultramotor.entity;

import java.io.Serializable;
import java.util.List;

public class SoBaoHanh implements Serializable {


    private String idSBH;
    private Integer idCTHD;
    private List<ChiTietBaoHanh> chiTietBaoHanhList;
    private List<ChiTietBaoDuong> chiTietBaoDuongList;

    public SoBaoHanh() {
    }

    public SoBaoHanh(String idSBH) {
        this.idSBH = idSBH;
    }

    public String getIdSBH() {
        return idSBH;
    }

    public void setIdSBH(String idSBH) {
        this.idSBH = idSBH;
    }

    public SoBaoHanh(String idSBH, Integer idCTHD) {
        this.idSBH = idSBH;
        this.idCTHD = idCTHD;
    }
    

    public List<ChiTietBaoHanh> getChiTietBaoHanhList() {
        return chiTietBaoHanhList;
    }

    public void setChiTietBaoHanhList(List<ChiTietBaoHanh> chiTietBaoHanhList) {
        this.chiTietBaoHanhList = chiTietBaoHanhList;
    }

    public List<ChiTietBaoDuong> getChiTietBaoDuongList() {
        return chiTietBaoDuongList;
    }

    public void setChiTietBaoDuongList(List<ChiTietBaoDuong> chiTietBaoDuongList) {
        this.chiTietBaoDuongList = chiTietBaoDuongList;
    }

    public Integer getIdCTHD() {
        return idCTHD;
    }

    public void setIdCTHD(Integer idCTHD) {
        this.idCTHD = idCTHD;
    }

    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idSBH != null ? idSBH.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SoBaoHanh)) {
            return false;
        }
        SoBaoHanh other = (SoBaoHanh) object;
        if ((this.idSBH == null && other.idSBH != null) || (this.idSBH != null && !this.idSBH.equals(other.idSBH))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.ultramotor.entity.SoBaoHanh[ idSBH=" + idSBH + " ]";
    }

}
