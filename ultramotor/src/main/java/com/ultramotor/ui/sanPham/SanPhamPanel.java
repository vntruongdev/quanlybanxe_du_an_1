package com.ultramotor.ui.sanPham;

import com.ultramotor.entity.DongSanPham;
import com.ultramotor.entity.NhaSanXuat;
import com.ultramotor.entity.SanPham;
import com.ultramotor.util.Auth;
import com.ultramotor.util.MsgBox;
import com.ultramotor.util.MyConstants;
import com.ultramotor.util.XDate;
import com.ultramotor.util.XImage;
import java.awt.Component;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.File;
import java.nio.file.Paths;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JComboBox;
import javax.swing.text.JTextComponent;

public class SanPhamPanel extends MyPanel<SanPham> {

    public SanPhamPanel(List<SanPham> list, List<NhaSanXuat> listNSX, List<DongSanPham> listDongSP) {
        super(list);
        initComponents();
        this.listNSX = listNSX;
        this.listDongSP = listDongSP;
        init();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        cboDoiXe = new com.swingx.ComboBoxSuggestion();
        cboColors = new com.swingx.ComboBoxSuggestion();
        pblSP = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        txtMoTa = new javax.swing.JTextArea();
        cboDongSP = new com.swingx.ComboBoxSuggestion();
        txtMaSKU = new com.swingx.TextField();
        lblVaiTro = new javax.swing.JLabel();
        txtDiaChiSX = new com.swingx.TextField();
        txtTenSP = new com.swingx.TextField();
        txtGiaTien = new com.swingx.TextField();
        lblMota = new javax.swing.JLabel();
        cboBaoHanh = new com.swingx.ComboBoxSuggestion();
        lblBaoHanh = new javax.swing.JLabel();
        lblPhanKhoi = new javax.swing.JLabel();
        cboPhanKhoi = new com.swingx.ComboBoxSuggestion();
        cboNSX = new com.swingx.ComboBoxSuggestion();
        lblNSX = new javax.swing.JLabel();
        lblHinh = new javax.swing.JLabel();
        cboLH = new com.swingx.ComboBoxSuggestion();
        lblLH = new javax.swing.JLabel();
        textField1 = new com.swingx.TextField();
        txtDiaChiSX1 = new com.swingx.TextField();
        jPanel1 = new javax.swing.JPanel();
        btnSave = new com.swingx.Button();
        btnReset = new com.swingx.Button();

        cboColors.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "50cc", "75cc", "100cc", "125cc", "150cc" }));

        pblSP.setBackground(new java.awt.Color(255, 255, 255));

        txtMoTa.setColumns(20);
        txtMoTa.setRows(5);
        jScrollPane1.setViewportView(txtMoTa);

        cboDongSP.setEditable(true);

        txtMaSKU.setLabelText("Mã Sản Phẩm");

        lblVaiTro.setForeground(new java.awt.Color(102, 102, 102));
        lblVaiTro.setText("Dòng Sản Phẩm");
        lblVaiTro.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 10, 0, 0));

        txtDiaChiSX.setLabelText("Địa chỉ SX");

        txtTenSP.setLabelText("Tên SP");

        txtGiaTien.setToolTipText("");
        txtGiaTien.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter()));
        txtGiaTien.setLabelText("Giá Tiền");

        lblMota.setForeground(new java.awt.Color(102, 102, 102));
        lblMota.setText("Mô tả");

        cboBaoHanh.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "12 tháng", "24 tháng", "36 tháng" }));
        cboBaoHanh.setSelectedIndex(2);

        lblBaoHanh.setForeground(new java.awt.Color(102, 102, 102));
        lblBaoHanh.setText("Thời Gian Bảo Hành");
        lblBaoHanh.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 10, 0, 0));

        lblPhanKhoi.setForeground(new java.awt.Color(102, 102, 102));
        lblPhanKhoi.setText("Phân Khối");
        lblPhanKhoi.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 10, 0, 0));

        cboPhanKhoi.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "50cc", "75cc", "100cc", "125cc", "150cc" }));

        cboNSX.setEditable(true);
        cboNSX.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "50cc", "75cc", "100cc", "125cc", "150cc" }));

        lblNSX.setForeground(new java.awt.Color(102, 102, 102));
        lblNSX.setText("Nhà Sản Xuất");

        lblHinh.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblHinh.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 102, 102), 1, true));
        lblHinh.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);

        cboLH.setEditable(true);
        cboLH.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "50cc", "75cc", "100cc", "125cc", "150cc" }));

        lblLH.setForeground(new java.awt.Color(102, 102, 102));
        lblLH.setText("Loại Hàng");

        textField1.setLabelText("Đời xe");

        txtDiaChiSX1.setLabelText("Màu sắc");

        jPanel1.setOpaque(false);

        btnSave.setBackground(new java.awt.Color(0, 174, 114));
        btnSave.setText("Lưu");

        btnReset.setBackground(new java.awt.Color(0, 174, 114));
        btnReset.setText("Reset");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btnReset, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(10, 10, 10)
                .addComponent(btnSave, javax.swing.GroupLayout.PREFERRED_SIZE, 67, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(btnReset, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btnSave, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        javax.swing.GroupLayout pblSPLayout = new javax.swing.GroupLayout(pblSP);
        pblSP.setLayout(pblSPLayout);
        pblSPLayout.setHorizontalGroup(
            pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pblSPLayout.createSequentialGroup()
                .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(pblSPLayout.createSequentialGroup()
                        .addGap(20, 20, 20)
                        .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(pblSPLayout.createSequentialGroup()
                                .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addComponent(lblHinh, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(txtMaSKU, javax.swing.GroupLayout.DEFAULT_SIZE, 189, Short.MAX_VALUE))
                                .addGap(50, 50, 50)
                                .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(cboNSX, javax.swing.GroupLayout.PREFERRED_SIZE, 190, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(cboLH, javax.swing.GroupLayout.PREFERRED_SIZE, 190, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(cboDongSP, javax.swing.GroupLayout.PREFERRED_SIZE, 189, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(pblSPLayout.createSequentialGroup()
                                        .addGap(10, 10, 10)
                                        .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(lblNSX)
                                            .addComponent(lblLH)))
                                    .addComponent(lblVaiTro)
                                    .addComponent(txtTenSP, javax.swing.GroupLayout.PREFERRED_SIZE, 189, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(pblSPLayout.createSequentialGroup()
                                .addGap(2, 2, 2)
                                .addComponent(txtDiaChiSX1, javax.swing.GroupLayout.PREFERRED_SIZE, 189, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(50, 50, 50)
                                .addComponent(txtDiaChiSX, javax.swing.GroupLayout.PREFERRED_SIZE, 189, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(lblMota)
                                .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addGroup(pblSPLayout.createSequentialGroup()
                                        .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                            .addGroup(pblSPLayout.createSequentialGroup()
                                                .addComponent(cboPhanKhoi, javax.swing.GroupLayout.PREFERRED_SIZE, 190, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addGap(49, 49, 49))
                                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, pblSPLayout.createSequentialGroup()
                                                .addGap(1, 1, 1)
                                                .addComponent(lblPhanKhoi, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                                        .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(lblBaoHanh)
                                            .addComponent(cboBaoHanh, javax.swing.GroupLayout.PREFERRED_SIZE, 190, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                    .addComponent(jScrollPane1)))))
                    .addGroup(pblSPLayout.createSequentialGroup()
                        .addGap(20, 20, 20)
                        .addComponent(textField1, javax.swing.GroupLayout.PREFERRED_SIZE, 189, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(50, 50, 50)
                        .addComponent(txtGiaTien, javax.swing.GroupLayout.PREFERRED_SIZE, 190, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(0, 20, Short.MAX_VALUE))
            .addGroup(pblSPLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        pblSPLayout.setVerticalGroup(
            pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pblSPLayout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(pblSPLayout.createSequentialGroup()
                        .addComponent(lblNSX, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(cboNSX, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(lblLH)
                        .addGap(4, 4, 4)
                        .addComponent(cboLH, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(22, 22, 22)
                        .addComponent(lblVaiTro)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(cboDongSP, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(lblHinh, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(pblSPLayout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtDiaChiSX1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtDiaChiSX, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(pblSPLayout.createSequentialGroup()
                        .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(pblSPLayout.createSequentialGroup()
                                .addGap(10, 10, 10)
                                .addComponent(txtMaSKU, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(pblSPLayout.createSequentialGroup()
                                .addGap(11, 11, 11)
                                .addComponent(txtTenSP, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(0, 0, 0)
                                .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(txtGiaTien, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(textField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 67, Short.MAX_VALUE)))
                .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblBaoHanh)
                    .addComponent(lblPhanKhoi, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pblSPLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cboBaoHanh, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cboPhanKhoi, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(lblMota)
                .addGap(4, 4, 4)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(16, 16, 16))
        );

        pblSPLayout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {cboDongSP, cboLH});

        pblSPLayout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {txtMaSKU, txtTenSP});

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(pblSP, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(pblSP, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.swingx.Button btnReset;
    private com.swingx.Button btnSave;
    private com.swingx.ComboBoxSuggestion cboBaoHanh;
    private com.swingx.ComboBoxSuggestion cboColors;
    private com.swingx.ComboBoxSuggestion cboDoiXe;
    private com.swingx.ComboBoxSuggestion cboDongSP;
    private com.swingx.ComboBoxSuggestion cboLH;
    private com.swingx.ComboBoxSuggestion cboNSX;
    private com.swingx.ComboBoxSuggestion cboPhanKhoi;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lblBaoHanh;
    private javax.swing.JLabel lblHinh;
    private javax.swing.JLabel lblLH;
    private javax.swing.JLabel lblMota;
    private javax.swing.JLabel lblNSX;
    private javax.swing.JLabel lblPhanKhoi;
    private javax.swing.JLabel lblVaiTro;
    private javax.swing.JPanel pblSP;
    private com.swingx.TextField textField1;
    private com.swingx.TextField txtDiaChiSX;
    private com.swingx.TextField txtDiaChiSX1;
    private com.swingx.TextField txtGiaTien;
    private com.swingx.TextField txtMaSKU;
    private javax.swing.JTextArea txtMoTa;
    private com.swingx.TextField txtTenSP;
    // End of variables declaration//GEN-END:variables
    private List<DongSanPham> listDongSP;
    private List<NhaSanXuat> listNSX;
    private final File parent = Paths.get("logos", "sp").toFile();
    private final File defaultFile = new File(parent, "default.png");

    void init() {
        fillComboBox();
        addListeners();
    }

    private void addListeners() {
        lblHinh.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                if (e.getClickCount() == 2) {
                    XImage.uploadIcon(getTopLevelAncestor(), lblHinh, defaultFile);
                }
            }
        });

        btnReset.addActionListener(event -> {
            reset();
        });

        cboNSX.addActionListener(event -> {
            fillComboBoxDongSP();
        });

    }

    private void fillComboBox() {
        fillComboBoxNSX();
        fillComboBoxDongSP();
        fillComboBoxMauSac();
        fillComboBoxDoiXe();
    }

    private void fillComboBoxNSX() {
        fillComboBox(cboNSX, listNSX.toArray());
    }

    private void fillComboBoxDongSP() {
        NhaSanXuat nsx = (NhaSanXuat) cboNSX.getSelectedItem();
        if (nsx != null) {
            List<DongSanPham> newList = listDongSP.stream().filter(dsp -> dsp.getIdNSX().equals(nsx.getIdNSX())).collect(Collectors.toList());
            fillComboBox(cboDongSP, newList.toArray());
        }

    }

    private void fillComboBoxMauSac() {
        Set<String> colors = MyConstants.colorMap.keySet();
        fillComboBox(cboColors, colors.toArray());
    }

    private void fillComboBoxDoiXe() {
        int currentYear = Integer.parseInt(XDate.toString(new Date(), "yyyy"));
        Object[] years = new Object[20];
        for (int i = 0; i < years.length; i++) {
            years[i] = currentYear--;
        }
        fillComboBox(cboDoiXe, years);
    }

    private void fillComboBox(JComboBox cbo, Object[] os) {
        cbo.setModel(new DefaultComboBoxModel(os));
        System.out.println(os.length);
        if (os.length > 0) {
            cbo.setSelectedIndex(0);
        }
    }

    private void reset() {
        if (entity != null) {
            setForm(entity);
            return;
        }
        for (Component comp : this.getComponents()) {
            if (comp instanceof JTextComponent) {
                ((JTextComponent) comp).setText("");
            }
        }
        if (cboDongSP.getItemCount() > 0) {
            cboDongSP.setSelectedIndex(0);
        }
        XImage.setIcon(null, lblHinh, defaultFile);
    }

    @Override
    public void setForm(SanPham sp) {
        if (sp == null || sp.getIdDongSP() == null) {
            return;
        }
        txtMaSKU.setText(sp.getSku());
        txtTenSP.setText(sp.getTenSP());
        cboColors.setSelectedItem(sp.getMauSac());
        cboPhanKhoi.setSelectedItem(sp.getPhanKhoi());
        cboBaoHanh.setSelectedItem(String.format("%d tháng", sp.getThoiGianBH()));
        txtDiaChiSX.setText(sp.getDiaChiSX());
        txtGiaTien.setText(new DecimalFormat("#,##0.00").format(sp.getGiaTien()));
        txtMoTa.setText(sp.getMoTa());
        cboDoiXe.setSelectedItem(sp.getDoiXe());
        if (sp.getHinh() != null) {
            XImage.setIcon(new File(parent, sp.getHinh()), lblHinh, defaultFile);
        }
        DongSanPham dsp = findDongSP(sp.getIdDongSP());
        if (dsp != null) {
            cboNSX.setSelectedItem(findNSX(dsp.getIdNSX()));
            cboDongSP.setSelectedItem(dsp);
        }
        cboDongSP.setSelectedItem(sp.getIdDongSP());
        txtMaSKU.setEditable(sp.getSku() == null);
    }

    @Override
    public SanPham getForm() {
        if (validateForm()) {
            SanPham sp = new SanPham();
            sp.setSku(txtMaSKU.getText());
            sp.setTenSP(txtTenSP.getText());
            sp.setMauSac((String) cboColors.getSelectedItem());
            sp.setPhanKhoi((String) cboPhanKhoi.getSelectedItem());
            sp.setThoiGianBH(Integer.parseInt(((String) cboBaoHanh.getSelectedItem()).replaceAll("[^0-9]", "")));
            sp.setDiaChiSX(txtDiaChiSX.getText());
            sp.setGiaTien(Double.valueOf(txtGiaTien.getText()));
            sp.setMoTa(txtMoTa.getText());
            sp.setDoiXe(Integer.valueOf(String.valueOf(cboDoiXe.getSelectedItem())));
            sp.setHinh(lblHinh.getToolTipText());
            sp.setIdDongSP(((DongSanPham) cboDongSP.getSelectedItem()).getIdDongSP());
            sp.setIdNV(Auth.user == null ? "NV01" : Auth.user.getIdNV());
            return sp;
        }
        return null;
    }

    @Override
    public void setDoneListener(ActionListener doneListener) {
        btnSave.addActionListener(doneListener);
    }

    public boolean validateForm() {
        if (validate(txtMaSKU, txtTenSP, txtGiaTien, txtDiaChiSX)) {
            if (entity == null) {
                boolean exists = list.stream().anyMatch(sp -> sp.getSku().equals(txtMaSKU.getText()));
                if (exists) {
                    MsgBox.error("Đã tồn tại mã sản phẩm");
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    private NhaSanXuat findNSX(String idNSX) {
        return listNSX.stream().filter(nsx -> nsx.getIdNSX().equals(idNSX)).findFirst().orElse(null);
    }

    private DongSanPham findDongSP(String idDongSP) {
        return listDongSP.stream().filter(dsp -> dsp.getIdDongSP().equals(idDongSP)).findFirst().orElse(null);
    }
}
