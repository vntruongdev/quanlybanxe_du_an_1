/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ultramotor.ui.sanPham;

import com.ultramotor.dao.DongSanPhamDAO;
import com.ultramotor.dao.LoaiHangDAO;
import com.ultramotor.dao.NhaSanXuatDAO;
import com.ultramotor.entity.DongSanPham;
import com.ultramotor.entity.LoaiHang;
import com.ultramotor.entity.NhaSanXuat;
import com.ultramotor.util.MsgBox;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author thaian
 */
public class DongSanPhamPanel extends javax.swing.JPanel {

    /** Creates new form DongSanPhamPanel */
    public DongSanPhamPanel() {
        initComponents();
        init();
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        pnlDongSP = new javax.swing.JPanel();
        jLabel7 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        txtTenDongSP = new javax.swing.JTextField();
        txtID_DongSP = new javax.swing.JTextField();
        btnThem = new com.swingx.Button();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblDongSP = new javax.swing.JTable();
        btnXoa = new com.swingx.Button();
        btnSua = new com.swingx.Button();
        txtNSX = new javax.swing.JTextField();
        txtID_LH = new javax.swing.JTextField();

        pnlDongSP.setBackground(new java.awt.Color(255, 255, 255));

        jLabel7.setFont(new java.awt.Font("Lucida Grande", 0, 18)); // NOI18N
        jLabel7.setText("Dòng Sản Phẩm");

        jLabel9.setText("ID_DongSP");

        jLabel8.setText("Tên Dòng SP");

        jLabel10.setText("ID_LH");

        jLabel11.setText("ID_NSX");

        btnThem.setBackground(new java.awt.Color(0, 153, 153));
        btnThem.setText("Thêm ");
        btnThem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThemActionPerformed(evt);
            }
        });

        tblDongSP.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "ID_Dòng sản phẩm", "Tên dòng sản phẩm", "ID_LH", "ID_NSX"
            }
        ));
        tblDongSP.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblDongSPMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tblDongSP);

        btnXoa.setBackground(new java.awt.Color(0, 153, 153));
        btnXoa.setText("Xoá");
        btnXoa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXoaActionPerformed(evt);
            }
        });

        btnSua.setBackground(new java.awt.Color(0, 153, 153));
        btnSua.setText("Sửa");
        btnSua.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSuaActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout pnlDongSPLayout = new javax.swing.GroupLayout(pnlDongSP);
        pnlDongSP.setLayout(pnlDongSPLayout);
        pnlDongSPLayout.setHorizontalGroup(
            pnlDongSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlDongSPLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlDongSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(pnlDongSPLayout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 557, Short.MAX_VALUE)
                        .addContainerGap())
                    .addGroup(pnlDongSPLayout.createSequentialGroup()
                        .addGroup(pnlDongSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel7, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 189, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, pnlDongSPLayout.createSequentialGroup()
                                .addGroup(pnlDongSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel9)
                                    .addComponent(jLabel10))
                                .addGap(28, 28, 28)
                                .addGroup(pnlDongSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(txtID_DongSP, javax.swing.GroupLayout.DEFAULT_SIZE, 118, Short.MAX_VALUE)
                                    .addComponent(txtID_LH))
                                .addGap(18, 18, Short.MAX_VALUE)
                                .addGroup(pnlDongSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel8)
                                    .addComponent(jLabel11))
                                .addGap(18, 18, 18)
                                .addGroup(pnlDongSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txtTenDongSP, javax.swing.GroupLayout.PREFERRED_SIZE, 186, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtNSX, javax.swing.GroupLayout.PREFERRED_SIZE, 128, javax.swing.GroupLayout.PREFERRED_SIZE))))
                        .addGap(47, 47, 47))))
            .addGroup(pnlDongSPLayout.createSequentialGroup()
                .addGap(162, 162, 162)
                .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(btnXoa, javax.swing.GroupLayout.PREFERRED_SIZE, 58, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(btnSua, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        pnlDongSPLayout.setVerticalGroup(
            pnlDongSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlDongSPLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel7)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(pnlDongSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(pnlDongSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel9)
                        .addComponent(txtID_DongSP, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jLabel8)
                    .addComponent(txtTenDongSP, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(pnlDongSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel10)
                    .addGroup(pnlDongSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel11)
                        .addComponent(txtID_LH, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(txtNSX, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(24, 24, 24)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 138, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(pnlDongSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnXoa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnSua, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(40, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(pnlDongSP, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(pnlDongSP, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents

    private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThemActionPerformed
        // TODO add your handling code here:
        this.insert();
    }//GEN-LAST:event_btnThemActionPerformed

    private void tblDongSPMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblDongSPMouseClicked
        // TODO add your handling code here:
        if (evt.getClickCount() == 1) {
            this.row = tblDongSP.getSelectedRow();
            this.edit();
        }
    }//GEN-LAST:event_tblDongSPMouseClicked

    private void btnXoaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXoaActionPerformed
        // TODO add your handling code here:
        this.delete();
    }//GEN-LAST:event_btnXoaActionPerformed

    private void btnSuaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSuaActionPerformed
        // TODO add your handling code here:
        this.update();
    }//GEN-LAST:event_btnSuaActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.swingx.Button btnSua;
    private com.swingx.Button btnThem;
    private com.swingx.Button btnXoa;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JPanel pnlDongSP;
    private javax.swing.JTable tblDongSP;
    private javax.swing.JTextField txtID_DongSP;
    private javax.swing.JTextField txtID_LH;
    private javax.swing.JTextField txtNSX;
    private javax.swing.JTextField txtTenDongSP;
    // End of variables declaration//GEN-END:variables
DongSanPhamDAO dao_DongSP = new DongSanPhamDAO();
    LoaiHangDAO dao_LH = new LoaiHangDAO();
    NhaSanXuatDAO dao_NSX = new NhaSanXuatDAO();
    int row = -1;
    void init(){
        fillTableDongSanPham();

        this.row = -1;
    }
    
    
    void fillTableDongSanPham() {
        DefaultTableModel model = (DefaultTableModel) tblDongSP.getModel();
        model.setRowCount(0);
        try {
            List<DongSanPham> list = dao_DongSP.selectAll();
            for (DongSanPham dsp : list) {
                Object[] row = {
                    dsp.getIdDongSP(),
                    dsp.getTenDongSP(),
                    dsp.getIdLH(),
                    dsp.getIdNSX()
                };
                model.addRow(row);
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
            MsgBox.inform("Lỗi truy vấn dữ liệu!");
        }
    }
    void insert(){
        DongSanPham model = getForm();
        try {
            dao_DongSP.insert(model);
            this.fillTableDongSanPham();
            this.clearForm();
            MsgBox.inform("Thêm mới thành công!");
        } 
        catch (Exception e) {
            e.printStackTrace();
            MsgBox.inform( "Thêm mới thất bại!");
        }
    }
    void update() {
        DongSanPham model = getForm();
        try {
            dao_DongSP.update(model);
            this.fillTableDongSanPham();
            MsgBox.inform("Cập nhật thành công!");
        } catch (Exception e) {
            MsgBox.inform("Cập nhật thất bại!");
        }
    }

    void delete() {

        String maDongSP = txtID_DongSP.getText();
        try {
            dao_DongSP.delete(maDongSP);
            this.fillTableDongSanPham();
            this.clearForm();
            MsgBox.inform("Xóa thành công!");
        } catch (Exception e) {
            e.printStackTrace();
            MsgBox.inform("Xoá thất bại");
        }

    }
    DongSanPham getForm(){
        DongSanPham dsp = new DongSanPham();
        dsp.setIdDongSP(txtID_DongSP.getText());
        dsp.setTenDongSP(txtTenDongSP.getText());
        dsp.setIdLH(txtID_LH.getText());
        dsp.setIdNSX(txtNSX.getText());
        return dsp;
    }
    void clearForm(){
        DongSanPham dsp = new DongSanPham();
        this.setForm(dsp);
//        this.row = -1;
//        this.updateStatus();
    } 
     void setForm(DongSanPham dsp){
        txtID_DongSP.setText(dsp.getIdDongSP());
        txtTenDongSP.setText(dsp.getTenDongSP());
        txtID_LH.setText(dsp.getIdLH());
        txtNSX.setText(dsp.getIdNSX());
    }
      void edit() {
        String maDongSP = (String) tblDongSP.getValueAt(this.row, 0);
        DongSanPham dsp = dao_DongSP.selectByID(maDongSP);
        this.setForm(dsp);
    }
}
