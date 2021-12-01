package com.ultramotor.ui;

import com.swingx.model.ModelMenu;
import com.ultramotor.entity.NhanVien;
import com.ultramotor.entity.NhanVienBanHang;
import com.ultramotor.entity.NhanVienKho;
import com.ultramotor.entity.TruongPhong;
import com.ultramotor.ui.hoadon.HoaDonPanel;
import com.ultramotor.ui.nhanvien.NhanVienPanel;
import com.ultramotor.ui.nhanvien.kho.nhapkho.BarcodePanel;
import com.ultramotor.ui.nhanvien.kho.nhapkho.NhapKhoPanel;
import com.ultramotor.ui.quanlykhachhang.KhachHangPanel;
import com.ultramotor.ui.sanPham.QuanLySanPhamPanel;
import com.ultramotor.util.Auth;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import javax.swing.ImageIcon;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;

public class MainFrame extends javax.swing.JFrame {

    public MainFrame() {
        initComponents();
        init();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        bg = new javax.swing.JLayeredPane();
        pnlMain = new com.ultramotor.component.MainForm();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        bg.setBackground(new java.awt.Color(245, 245, 245));
        bg.setOpaque(true);

        bg.setLayer(pnlMain, javax.swing.JLayeredPane.DEFAULT_LAYER);

        javax.swing.GroupLayout bgLayout = new javax.swing.GroupLayout(bg);
        bg.setLayout(bgLayout);
        bgLayout.setHorizontalGroup(
            bgLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(bgLayout.createSequentialGroup()
                .addComponent(pnlMain, javax.swing.GroupLayout.DEFAULT_SIZE, 1054, Short.MAX_VALUE)
                .addGap(1, 1, 1))
        );
        bgLayout.setVerticalGroup(
            bgLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(pnlMain, javax.swing.GroupLayout.DEFAULT_SIZE, 575, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(bg)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(bg)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Windows".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(MainFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MainFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MainFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MainFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new MainFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLayeredPane bg;
    private com.ultramotor.component.MainForm pnlMain;
    // End of variables declaration//GEN-END:variables
    private NhanVienPanel pnlNhanVien;
    private KhachHangPanel pnlKhachHang;
    private QuanLySanPhamPanel pnlSanPham;
    private NhapKhoPanel pnlNhapKho;
    private BarcodePanel pnlBarcode;
    private HoaDonPanel pnlHoaDon;

    private void init() {
        pnlNhanVien = new NhanVienPanel();
        pnlKhachHang = new KhachHangPanel();
        pnlSanPham = new QuanLySanPhamPanel();
        pnlNhapKho = new NhapKhoPanel();
        pnlBarcode = new BarcodePanel();
        pnlHoaDon = new HoaDonPanel();
        setLocationRelativeTo(null);
        NhanVien user = Auth.user;
        if (user == null) {
//            return;
        }
        pnlMain.setUser(user);
        addMenus(user);

    }

    private void addMenus(NhanVien user) {
        File path = Paths.get("src", "com", "ultramotor", "img", "icon").toFile();
        if (user instanceof NhanVienBanHang) {
            return;
        }
        if (user instanceof NhanVienKho) {

            return;
        }

        ModelMenu mnuNhanVien = new ModelMenu("Quản lý nhân viên", new ImageIcon(), getEvent("NhanVien")
        );
        ModelMenu mnuHoaDon = new ModelMenu("Quản lý hoá đơn", new ImageIcon(new File(path, "refresh_25px.png").getPath()), getEvent("HoaDon"));
        ModelMenu mnuKhachHang = new ModelMenu("Quản lý khách hàng", new ImageIcon(new File(path, "refresh_25px.png").getPath()), getEvent("KhachHang"));
        ModelMenu mnuSanPham = new ModelMenu("Quản lý sản phẩm", new ImageIcon(new File(path, "refresh_25px.png").getPath()), getEvent("SanPham"));
        ModelMenu mnuNhapKho = new ModelMenu("Quản lý kho", new ImageIcon(new File(path, "refresh_25px.png").getPath()), getEvent("NhapKho"));
        ModelMenu mnuBarcode = new ModelMenu("In barcode", new ImageIcon(new File(path, "refresh_25px.png").getPath()), getEvent("Barcode"));

        pnlMain.addMenu(mnuNhanVien, mnuHoaDon, mnuKhachHang, mnuSanPham, mnuNhapKho, mnuBarcode);
    }

    private ActionListener getEvent(String name) {
        return (ActionEvent e) -> {
            showForm(name);
        };
    }

    private void showForm(String name) {
        JPanel panel = null;
        switch (name) {
            case "NhanVien":
                panel = pnlNhanVien;
                break;
            case "KhachHang":
                panel = pnlKhachHang;
                break;
            case "SanPham":
                panel = pnlSanPham;
                break;
            case "NhapKho":
                panel = pnlNhapKho;
                break;
            case "Barcode":
                panel = pnlBarcode;
                break;
            case "HoaDon":
                panel = pnlHoaDon;
                break;
        }
        if (panel == null) {
            return;
        }
        showForm(panel);
    }

    private void showForm(JPanel panel) {
        SwingUtilities.invokeLater(() -> {
            pnlMain.showForm(panel);
        });
    }
}
