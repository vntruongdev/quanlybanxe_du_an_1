
CREATE TYPE NhanVien AS TABLE(
    id_NV NVARCHAR(10) PRIMARY KEY,
    HoNV NVARCHAR(20) NOT NULL,
    TenNV NVARCHAR(20) NOT NULL,
    NgaySinh DATE NOT NULL,
    GioiTinh BIT NOT NULL,
    DiaChi NVARCHAR(255) NOT NULL,
    SDT NVARCHAR(10) NOT NULL,
    Email NVARCHAR(50) NOT NULL,
    Luong FLOAT NOT NULL,
    Hinh NVARCHAR(50) NOT NULL,
    VaiTro NVARCHAR(20) NOT NULL,
    GhiChu NVARCHAR(255)
)
GO

CREATE TYPE KhachHang AS TABLE
(
    idKH NVARCHAR(10) PRIMARY KEY,
    HoKH NVARCHAR(20) NOT NULL,
    TenKH NVARCHAR(20) NOT NULL,
    GioiTinh BIT NOT NULL,
    NgaySinh DATE NOT NULL,
    DiaChi NVARCHAR(255),
    SDT NVARCHAR(20), 
    Email NVARCHAR(50),
    ThanhVien BIT DEFAULT 0,
    GhiChu NVARCHAR(255),
    id_NV NVARCHAR(10)
)
GO 

CREATE TYPE LoaiHang AS TABLE
(
    id_LH NVARCHAR(20) PRIMARY KEY,
    TenLoaiHang NVARCHAR(255) NOT NULL 
)
GO

CREATE TYPE NhaSanXuat AS TABLE
(
    id_NSX NVARCHAR(20) PRIMARY KEY,
    TenNSX NVARCHAR(255) NOT NULL 
)
GO

CREATE TYPE DongSanPham AS TABLE
(
    id_DongSP NVARCHAR(20) PRIMARY KEY,
    tenDongSP NVARCHAR(100) NOT NULL,
    id_LH NVARCHAR(20) NOT NULL,
    id_NSX NVARCHAR(20) NOT NULL
)
GO

CREATE TYPE ModelSanPham AS TABLE
(
	id_Model VARCHAR(10) PRIMARY KEY,
	tenModel NVARCHAR(100) NOT NULL,
	doiXe INT NOT NULL, 
	id_DongSP NVARCHAR(20) NOT NULL
)
GO

CREATE TYPE SanPham AS TABLE
(
    SKU NVARCHAR(20) PRIMARY KEY,
    tenSP NVARCHAR(100) NOT NULL,
    hinh NVARCHAR(20),
    mauSac NVARCHAR(20) NOT NULL,
    phanKhoi NVARCHAR(20) NOT NULL,
    thoiGianBH INT,
    DiaChiSX NVARCHAR(255) NOT NULL,
    giaTien FLOAT NOT NULL,
    moTa NVARCHAR(255),
    id_Model VARCHAR(10) NOT NULL,
    id_NV NVARCHAR(10) NOT NULL
)
GO

CREATE TYPE PhieuNhapKho AS TABLE
(
    id_PN NVARCHAR(10) PRIMARY KEY,
	ngayNhap DATE NOT NULL DEFAULT GETDATE(),
    id_NV NVARCHAR(10) NOT NULL
)
GO

CREATE TYPE ChiTietNhapKho AS TABLE
(
    id_CTNK NVARCHAR(10) PRIMARY KEY,
    soLuong INT NOT NULL,
    giaNhap FLOAT NOT NULL,
    SKU NVARCHAR(20) NOT NULL,
    id_PN NVARCHAR(10) NOT NULL
)
GO

CREATE TYPE PhieuXuatKho AS TABLE
(
    id_PX NVARCHAR(10) PRIMARY KEY,
    ngayXuat DATE NOT NULL DEFAULT GETDATE(),
    id_NV NVARCHAR(10) NOT NULL
)
GO

CREATE TYPE ChiTietXuatKho AS TABLE
(
    ID_CTXK NVARCHAR(10) PRIMARY KEY,
    soLuong INT NOT NULL,
    SKU NVARCHAR(20) NOT NULL,
    id_PX NVARCHAR(10) NOT NULL
)
GO

CREATE TYPE ChiTietSanPham AS TABLE
(
    id_SP NVARCHAR(10) PRIMARY KEY,
    soKhung NVARCHAR(50) NOT NULL,
    soMay NVARCHAR(50) NOT NULL,
    SKU NVARCHAR(20) NOT NULL,
    id_CTNK NVARCHAR(10) NOT NULL
)
GO

CREATE TYPE DichVu AS TABLE
(
    idDV NVARCHAR(10) PRIMARY KEY,
    tenDV NVARCHAR(255) NOT NULL,
    donGia FLOAT NOT NULL,
    id_NV NVARCHAR(10) NOT NULL
)
GO

CREATE TYPE HoaDon AS TABLE
(
    idHD NVARCHAR(15) PRIMARY KEY,
    thoiGian DATE NOT NULL,
    loaiThanhToan NVARCHAR(50) NOT NULL,
    trangThai NVARCHAR(10) NOT NULL,
    id_NV NVARCHAR(10) NOT NULL,
    idKH NVARCHAR(10) NULL
)
GO

CREATE TYPE ChiTietHoaDon AS TABLE
(
	id_CTHD INT IDENTITY(1,1) PRIMARY KEY,
	donGia FLOAT NOT NULL,
	idDV NVARCHAR(10) NOT NULL,
	id_SP NVARCHAR(10) NOT NULL,
    idHD NVARCHAR(15) NOT NULL
)
GO

CREATE TYPE SoBaoHanh AS TABLE
(
    id_SBH NVARCHAR(10) PRIMARY KEY,
    id_CTHD INT NOT NULL
)
GO 

CREATE TYPE ChiTietBaoHanh AS TABLE
(
    id INT IDENTITY(1,1) PRIMARY KEY,
    thoiGian DATE NOT NULL,
    noiDung NVARCHAR(255) NOT NULL,
    id_NV NVARCHAR(10) NOT NULL,
    id_SBH NVARCHAR(10) NOT NULL
)
GO

CREATE TYPE ChiTietBaoDuong AS TABLE
(
    id INT IDENTITY(1,1) PRIMARY KEY,
    thoiGian DATE NOT NULL,
    noiDung NVARCHAR(255) NOT NULL,
    id_NV NVARCHAR(10) NOT NULL,
    id_SBH NVARCHAR(10) NOT NULL
)
GO