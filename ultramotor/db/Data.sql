USE [HONDA]
GO
/****** Object:  Table [dbo].[ChiTietBaoDuong]    Script Date: 11/26/2021 7:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietBaoDuong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[thoiGian] [date] NOT NULL,
	[noiDung] [nvarchar](255) NOT NULL,
	[id_NV] [nvarchar](10) NOT NULL,
	[id_SBH] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietBaoHanh]    Script Date: 11/26/2021 7:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietBaoHanh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[thoiGian] [date] NOT NULL,
	[noiDung] [nvarchar](255) NOT NULL,
	[id_NV] [nvarchar](10) NOT NULL,
	[id_SBH] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 11/26/2021 7:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[id_CTHD] [int] IDENTITY(1,1) NOT NULL,
	[donGia] [float] NOT NULL,
	[idDV] [nvarchar](10) NOT NULL,
	[SKU] [nvarchar](20) NULL,
	[idHD] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_CTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietNhapKho]    Script Date: 11/26/2021 7:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietNhapKho](
	[id_CTNK] [int] IDENTITY(1,1) NOT NULL,
	[soLuong] [int] NOT NULL,
	[giaNhap] [float] NOT NULL,
	[SKU] [nvarchar](20) NOT NULL,
	[id_PN] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_CTNK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 11/26/2021 7:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[idDV] [nvarchar](10) NOT NULL,
	[tenDV] [nvarchar](255) NOT NULL,
	[donGia] [float] NOT NULL,
	[id_NV] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongSanPham]    Script Date: 11/26/2021 7:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongSanPham](
	[id_DongSP] [varchar](20) NOT NULL,
	[tenDongSP] [nvarchar](100) NOT NULL,
	[id_LH] [varchar](20) NOT NULL,
	[id_NSX] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_DongSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/26/2021 7:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[idHD] [nvarchar](15) NOT NULL,
	[thoiGian] [date] NOT NULL,
	[loaiThanhToan] [nvarchar](50) NOT NULL,
	[trangThai] [nvarchar](10) NOT NULL,
	[id_NV] [nvarchar](10) NOT NULL,
	[idKH] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/26/2021 7:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[idKH] [nvarchar](10) NOT NULL,
	[HoKH] [nvarchar](20) NOT NULL,
	[TenKH] [nvarchar](20) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [datetime2](7) NOT NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SDT] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[ThanhVien] [bit] NULL,
	[GhiChu] [nvarchar](255) NULL,
	[id_NV] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 11/26/2021 7:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[id_LH] [varchar](20) NOT NULL,
	[TenLoaiHang] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_LH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/26/2021 7:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[id_NV] [nvarchar](10) NOT NULL,
	[HoNV] [nvarchar](20) NOT NULL,
	[TenNV] [nvarchar](20) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[SDT] [nvarchar](10) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Luong] [float] NOT NULL,
	[Hinh] [nvarchar](50) NOT NULL,
	[VaiTro] [nvarchar](20) NOT NULL,
	[matKhau] [nvarchar](255) NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 11/26/2021 7:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[id_NSX] [varchar](20) NOT NULL,
	[TenNSX] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_NSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapKho]    Script Date: 11/26/2021 7:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapKho](
	[id_PN] [nvarchar](10) NOT NULL,
	[ngayNhap] [date] NOT NULL,
	[id_NV] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_PN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/26/2021 7:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[SKU] [nvarchar](20) NOT NULL,
	[tenSP] [nvarchar](100) NOT NULL,
	[hinh] [nvarchar](20) NULL,
	[mauSac] [nvarchar](20) NOT NULL,
	[phanKhoi] [nvarchar](20) NOT NULL,
	[doiXe] [int] NOT NULL,
	[thoiGianBH] [int] NULL,
	[DiaChiSX] [nvarchar](255) NOT NULL,
	[giaTien] [float] NOT NULL,
	[moTa] [nvarchar](255) NULL,
	[id_DongSP] [varchar](20) NOT NULL,
	[id_NV] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SKU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoBaoHanh]    Script Date: 11/26/2021 7:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoBaoHanh](
	[id_SBH] [nvarchar](10) NOT NULL,
	[id_CTHD] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_SBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietBaoDuong] ON 

INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (1, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV01', N'SBH01')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (2, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV02', N'SBH02')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (3, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV03', N'SBH03')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (4, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV04', N'SBH04')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (5, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV05', N'SBH05')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (6, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV06', N'SBH06')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (7, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV07', N'SBH07')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (8, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV08', N'SBH08')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (9, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV09', N'SBH09')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (10, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV10', N'SBH10')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (11, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV11', N'SBH11')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (12, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV12', N'SBH12')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (13, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV13', N'SBH13')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (14, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV14', N'SBH14')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (15, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV15', N'SBH15')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (16, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV16', N'SBH16')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (17, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV17', N'SBH17')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (18, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV18', N'SBH18')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (19, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV19', N'SBH19')
INSERT [dbo].[ChiTietBaoDuong] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (20, CAST(N'2021-01-01' AS Date), N'Bảo dưỡng toàn bộ, Vệ sinh kim phun', N'NV20', N'SBH20')
SET IDENTITY_INSERT [dbo].[ChiTietBaoDuong] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietBaoHanh] ON 

INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (1, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV01', N'SBH01')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (2, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV02', N'SBH02')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (3, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV03', N'SBH03')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (4, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV04', N'SBH04')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (5, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV05', N'SBH05')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (6, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV06', N'SBH06')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (7, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV07', N'SBH07')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (8, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV08', N'SBH08')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (9, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV09', N'SBH09')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (10, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV10', N'SBH10')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (11, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV11', N'SBH11')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (12, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV12', N'SBH12')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (13, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV13', N'SBH13')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (14, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV14', N'SBH14')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (15, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV15', N'SBH15')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (16, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV16', N'SBH16')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (17, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV17', N'SBH17')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (18, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV18', N'SBH18')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (19, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV19', N'SBH19')
INSERT [dbo].[ChiTietBaoHanh] ([id], [thoiGian], [noiDung], [id_NV], [id_SBH]) VALUES (20, CAST(N'2021-01-01' AS Date), N'Thay nhớt', N'NV20', N'SBH20')
SET IDENTITY_INSERT [dbo].[ChiTietBaoHanh] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (1, 50000000, N'DV01', N'SK01', N'HD01')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (2, 50000000, N'DV02', N'SK02', N'HD02')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (3, 50000000, N'DV03', N'SK03', N'HD03')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (4, 90000000, N'DV04', N'SK04', N'HD04')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (5, 90000000, N'DV05', N'SK05', N'HD05')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (6, 90000000, N'DV06', N'SK06', N'HD06')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (7, 60000000, N'DV07', N'SK07', N'HD07')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (8, 60000000, N'DV08', N'SK08', N'HD08')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (9, 60000000, N'DV09', N'SK09', N'HD09')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (10, 40000000, N'DV10', N'SK10', N'HD10')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (11, 40000000, N'DV11', N'SK11', N'HD11')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (12, 40000000, N'DV12', N'SK12', N'HD12')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (13, 70000000, N'DV13', N'SK13', N'HD13')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (14, 70000000, N'DV14', N'SK14', N'HD14')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (15, 70000000, N'DV15', N'SK15', N'HD15')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (16, 50000000, N'DV16', N'SK16', N'HD16')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (17, 50000000, N'DV17', N'SK17', N'HD17')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (18, 50000000, N'DV18', N'SK18', N'HD18')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (19, 20000000, N'DV19', N'SK19', N'HD19')
INSERT [dbo].[ChiTietHoaDon] ([id_CTHD], [donGia], [idDV], [SKU], [idHD]) VALUES (20, 20000000, N'DV20', N'SK20', N'HD20')
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietNhapKho] ON 

INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (1, 100, 5000000000, N'SK01', N'PN01')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (2, 100, 5000000000, N'SK02', N'PN02')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (3, 100, 5000000000, N'SK03', N'PN03')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (4, 100, 9000000000, N'SK04', N'PN04')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (5, 100, 9000000000, N'SK05', N'PN05')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (6, 100, 9000000000, N'SK06', N'PN06')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (7, 100, 6000000000, N'SK07', N'PN07')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (8, 100, 6000000000, N'SK08', N'PN08')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (9, 100, 6000000000, N'SK09', N'PN09')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (10, 100, 4000000000, N'SK10', N'PN10')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (11, 100, 4000000000, N'SK11', N'PN11')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (12, 100, 4000000000, N'SK12', N'PN12')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (13, 100, 7000000000, N'SK13', N'PN13')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (14, 100, 7000000000, N'SK14', N'PN14')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (15, 100, 7000000000, N'SK15', N'PN15')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (16, 100, 5000000000, N'SK16', N'PN16')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (17, 100, 5000000000, N'SK17', N'PN17')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (18, 100, 5000000000, N'SK18', N'PN18')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (19, 100, 2000000000, N'SK19', N'PN19')
INSERT [dbo].[ChiTietNhapKho] ([id_CTNK], [soLuong], [giaNhap], [SKU], [id_PN]) VALUES (20, 100, 2000000000, N'SK20', N'PN20')
SET IDENTITY_INSERT [dbo].[ChiTietNhapKho] OFF
GO
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV01', N'Mua bán xe', 100, N'NV01')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV02', N'Mua bán xe', 100, N'NV02')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV03', N'Mua bán xe', 100, N'NV03')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV04', N'Mua bán xe', 100, N'NV04')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV05', N'Mua bán xe', 100, N'NV05')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV06', N'Mua bán xe', 100, N'NV06')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV07', N'Mua bán xe', 100, N'NV07')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV08', N'Mua bán xe', 100, N'NV08')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV09', N'Mua bán xe', 100, N'NV09')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV10', N'Mua bán xe', 100, N'NV10')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV11', N'Mua bán xe', 100, N'NV11')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV12', N'Mua bán xe', 100, N'NV12')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV13', N'Mua bán xe', 100, N'NV13')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV14', N'Mua bán xe', 100, N'NV14')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV15', N'Mua bán xe', 100, N'NV15')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV16', N'Mua bán xe', 100, N'NV16')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV17', N'Mua bán xe', 100, N'NV17')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV18', N'Mua bán xe', 100, N'NV18')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV19', N'Mua bán xe', 100, N'NV19')
INSERT [dbo].[DichVu] ([idDV], [tenDV], [donGia], [id_NV]) VALUES (N'DV20', N'Mua bán xe', 100, N'NV20')
GO
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP01', N'Air Blade', N'LH01', N'NSX01')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP02', N'SH 150i', N'LH01', N'NSX01')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP03', N'SH Mode', N'LH01', N'NSX01')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP04', N'Lead', N'LH01', N'NSX01')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP05', N'PCX', N'LH01', N'NSX01')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP06', N'Winner', N'LH02', N'NSX01')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP07', N'Wave Alpha', N'LH03', N'NSX01')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP08', N'Future', N'LH03', N'NSX01')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP09', N'Wave RSX', N'LH03', N'NSX01')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP10', N'Blade', N'LH03', N'NSX01')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP11', N'Grande', N'LH01', N'NSX02')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP12', N'Nozza', N'LH01', N'NSX02')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP13', N'Janus', N'LH01', N'NSX02')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP14', N'Exciter', N'LH02', N'NSX02')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP15', N'Sirius', N'LH03', N'NSX02')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP16', N'Jupiter', N'LH03', N'NSX02')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP17', N'Impulse', N'LH01', N'NSX03')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP18', N'Hayate', N'LH01', N'NSX03')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP19', N'Raider', N'LH02', N'NSX03')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP20', N'Revo', N'LH03', N'NSX03')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP21', N'Viva', N'LH03', N'NSX03')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP22', N'Venus', N'LH01', N'NSX04')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP23', N'Angela', N'LH03', N'NSX04')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP24', N'Liberty', N'LH01', N'NSX05')
INSERT [dbo].[DongSanPham] ([id_DongSP], [tenDongSP], [id_LH], [id_NSX]) VALUES (N'DSP25', N'Vespa', N'LH01', N'NSX05')
GO
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD01', CAST(N'2021-01-23' AS Date), N'Trực tiếp', N'Đã TT', N'NV01', N'KH01')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD02', CAST(N'2021-02-12' AS Date), N'Trực tiếp', N'Đã TT', N'NV02', N'KH02')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD03', CAST(N'2021-02-11' AS Date), N'Trực tiếp', N'Đã TT', N'NV03', N'KH03')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD04', CAST(N'2021-04-01' AS Date), N'Trực tiếp', N'Đã TT', N'NV04', N'KH04')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD05', CAST(N'2021-05-05' AS Date), N'Trực tiếp', N'Đã TT', N'NV05', N'KH05')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD06', CAST(N'2021-01-19' AS Date), N'Trực tiếp', N'Đã TT', N'NV06', N'KH06')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD07', CAST(N'2021-07-16' AS Date), N'Trực tiếp', N'Đã TT', N'NV07', N'KH07')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD08', CAST(N'2021-04-14' AS Date), N'Trực tiếp', N'Đã TT', N'NV08', N'KH08')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD09', CAST(N'2021-11-15' AS Date), N'Trực tiếp', N'Đã TT', N'NV09', N'KH09')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD10', CAST(N'2021-12-17' AS Date), N'Trực tiếp', N'Đã TT', N'NV10', N'KH10')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD11', CAST(N'2021-12-30' AS Date), N'Trực tiếp', N'Đã TT', N'NV11', N'KH11')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD12', CAST(N'2021-12-21' AS Date), N'Trực tiếp', N'Đã TT', N'NV12', N'KH12')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD13', CAST(N'2021-09-24' AS Date), N'Trực tiếp', N'Đã TT', N'NV13', N'KH13')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD14', CAST(N'2021-04-26' AS Date), N'Trực tiếp', N'Đã TT', N'NV14', N'KH14')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD15', CAST(N'2021-04-29' AS Date), N'Trực tiếp', N'Đã TT', N'NV15', N'KH15')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD16', CAST(N'2021-04-11' AS Date), N'Trực tiếp', N'Đã TT', N'NV16', N'KH16')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD17', CAST(N'2021-02-28' AS Date), N'Trực tiếp', N'Đã TT', N'NV17', N'KH17')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD18', CAST(N'2021-02-24' AS Date), N'Trực tiếp', N'Đã TT', N'NV18', N'KH18')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD19', CAST(N'2021-04-12' AS Date), N'Trực tiếp', N'Đã TT', N'NV19', N'KH19')
INSERT [dbo].[HoaDon] ([idHD], [thoiGian], [loaiThanhToan], [trangThai], [id_NV], [idKH]) VALUES (N'HD20', CAST(N'2021-01-11' AS Date), N'Trực tiếp', N'Đã TT', N'NV20', N'KH20')
GO
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH01', N'Nguyễn', N'Thanh Duy', 1, CAST(N'1991-11-09T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903112343', N'thanhduy1@gmail.com', 1, N'Không có gì', N'NV01')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH02', N'Trần', N'Tuấn Hải', 1, CAST(N'1993-12-29T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903435112', N'tuanhai2@gmail.com', 1, N'Không có gì', N'NV02')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH03', N'Phùng', N'Xuân Nghị', 1, CAST(N'1996-05-18T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903436512', N'xuannghi123@gmail.com', 1, N'Không có gì', N'NV03')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH04', N'Lê', N'Anh Hải', 1, CAST(N'1998-04-30T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903097933', N'anhhai22@gmail.com', 1, N'Không có gì', N'NV04')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH05', N'Phan', N'Tuấn Anh', 1, CAST(N'1999-10-31T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903009988', N'tuananh124@gmail.com', 1, N'Không có gì', N'NV05')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH06', N'Trần', N'Văn Đạt', 1, CAST(N'1994-08-09T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903321132', N'vandat234@gmail.com', 1, N'Không có gì', N'NV06')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH07', N'Trương', N'Thành Đạt', 1, CAST(N'1991-05-19T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903326532', N'thanhdat909@gmail.com', 1, N'Không có gì', N'NV07')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH08', N'Võ', N'Văn Tài', 1, CAST(N'1993-06-28T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903774331', N'vantai123@gmail.com', 1, N'Không có gì', N'NV08')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH09', N'Dương', N'Văn Kiệt', 1, CAST(N'1992-12-22T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903312311', N'vankiet54@gmail.com', 1, N'Không có gì', N'NV09')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH10', N'Trương', N'Vô Định', 1, CAST(N'1992-11-23T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903443112', N'vodinh23@gmail.com', 1, N'Không có gì', N'NV10')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH11', N'Châu', N'Hoàng Nhâm', 1, CAST(N'1997-12-11T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903310099', N'hoangnham@gmail.com', 1, N'Không có gì', N'NV11')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH12', N'Nguyễn', N'Tuấn Anh', 1, CAST(N'1995-07-15T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903125564', N'tuananh786@gmail.com', 1, N'Không có gì', N'NV12')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH13', N'Vũ', N'Phúc Lợi', 1, CAST(N'1993-02-27T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903311100', N'phucloi34@gmail.com', 1, N'Không có gì', N'NV13')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH14', N'Võ', N'Trọng Phúc', 1, CAST(N'1996-11-15T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903546543', N'trongphuc23@gmail.com', 1, N'Không có gì', N'NV14')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH15', N'Trần', N'Phát Tài', 1, CAST(N'1994-12-18T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903843465', N'phattai333@gmail.com', 1, N'Không có gì', N'NV15')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH16', N'Bùi', N'Văn Đạt', 1, CAST(N'1992-05-23T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903907821', N'vandat0909@gmail.com', 1, N'Không có gì', N'NV16')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH17', N'Lê', N'Thành Thuận', 1, CAST(N'1994-08-27T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903832543', N'thanhthuan43@gmail.com', 1, N'Không có gì', N'NV17')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH18', N'Trần', N'Văn Thuận', 1, CAST(N'1991-10-28T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903311233', N'vanthuan849@gmail.com', 1, N'Không có gì', N'NV18')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH19', N'Phan', N'Văn Hữu', 1, CAST(N'1992-09-19T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903445645', N'vanhuu78943@gmail.com', 1, N'Không có gì', N'NV19')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH20', N'Nguyễn', N'Gia Huy', 1, CAST(N'1995-05-16T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903090788', N'giahuy6478@gmail.com', 1, N'Không có gì', N'NV20')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH21', N'Võ', N'Vĩnh Hảo', 1, CAST(N'1997-04-13T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903854906', N'vinhhao312@gmail.com', 1, N'Không có gì', N'NV21')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH22', N'Lê', N'Thái Vũ', 1, CAST(N'1998-12-11T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903765878', N'thaivu432@gmail.com', 1, N'Không có gì', N'NV22')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH23', N'Huỳnh', N'Tuấn Phương', 1, CAST(N'1998-11-10T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903654678', N'tuanphuong213@gmail.com', 1, N'Không có gì', N'NV23')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH24', N'Nguyễn', N'Tấn Lộc', 1, CAST(N'1997-10-04T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903543531', N'tanloc4332@gmail.com', 1, N'Không có gì', N'NV24')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH25', N'Trần', N'Công Lý', 1, CAST(N'1995-04-05T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903887987', N'congly433@gmail.com', 1, N'Không có gì', N'NV25')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH26', N'Lê', N'Hiếu Nghĩa', 1, CAST(N'1995-07-19T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903854382', N'hieunghia3423@gmail.com', 1, N'Không có gì', N'NV26')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH27', N'Nguyễn', N'Hoàng Kỳ', 1, CAST(N'1993-09-22T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903864096', N'hoangky32@gmail.com', 1, N'Không có gì', N'NV27')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH28', N'Trần', N'Thế Phong', 1, CAST(N'1991-10-21T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903004973', N'thephong3432@gmail.com', 1, N'Không có gì', N'NV28')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH29', N'Hoàng', N'Tuấn Đức', 1, CAST(N'1991-12-30T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903412389', N'tuanduc321@gmail.com', 1, N'Không có gì', N'NV29')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH30', N'Vũ', N'Quốc Thịnh', 1, CAST(N'1993-05-23T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903455839', N'quocthinh3123@gmail.com', 1, N'Không có gì', N'NV30')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH31', N'Võ', N'Duy Toàn', 1, CAST(N'1996-03-28T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903438980', N'duytoan321@gmail.com', 1, N'Không có gì', N'NV31')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH32', N'Đinh', N'Phúc Trường', 1, CAST(N'1997-01-10T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903312159', N'phuctruong321@gmail.com', 1, N'Không có gì', N'NV32')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH33', N'Lâm', N'Tuấn Khải', 1, CAST(N'1996-08-15T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903990890', N'tuankhai312@gmail.com', 1, N'Không có gì', N'NV33')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH34', N'Ngô', N'Gia Khánh', 1, CAST(N'1994-10-19T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903493290', N'giakhanh321@gmail.com', 1, N'Không có gì', N'NV34')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH35', N'Trần', N'Bảo Lộc', 1, CAST(N'1993-12-16T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903429891', N'baoloc8749@gmail.com', 1, N'Không có gì', N'NV35')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH36', N'Nguyễn', N'Khánh Tân', 1, CAST(N'1996-11-14T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903493802', N'khanhtan3283@gmail.com', 1, N'Không có gì', N'NV36')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH37', N'Lê', N'Minh Quyết', 1, CAST(N'1998-05-10T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903890811', N'minhquyet439@gmail.com', 1, N'Không có gì', N'NV37')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH38', N'Bùi', N'Duy An', 1, CAST(N'1999-07-02T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903875123', N'duyan378@gmail.com', 1, N'Không có gì', N'NV38')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH39', N'Trần', N'Hoàng Lợi', 1, CAST(N'1998-12-05T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903843211', N'hoangloi43229@gmail.com', 1, N'Không có gì', N'NV39')
INSERT [dbo].[KhachHang] ([idKH], [HoKH], [TenKH], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ThanhVien], [GhiChu], [id_NV]) VALUES (N'KH40', N'Nguyễn', N'Nhật Đức', 1, CAST(N'1991-09-10T00:00:00.0000000' AS DateTime2), N'TPHCM', N'0903436781', N'nhatduc312@gmail.com', 1, N'Không có gì', N'NV40')
GO
INSERT [dbo].[LoaiHang] ([id_LH], [TenLoaiHang]) VALUES (N'LH01', N'Xe ga')
INSERT [dbo].[LoaiHang] ([id_LH], [TenLoaiHang]) VALUES (N'LH02', N'Xe côn')
INSERT [dbo].[LoaiHang] ([id_LH], [TenLoaiHang]) VALUES (N'LH03', N'Xe số')
GO
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV01', N'Nguyễn', N'Duy Anh', CAST(N'1999-12-11' AS Date), 1, N'TPHCM', N'0902346712', N'duyanh@gmail.com', 7000000, N'01.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV02', N'Nguyễn', N'Trung Dĩ', CAST(N'1999-10-30' AS Date), 1, N'TPHCM', N'0902125687', N'trungdi@gmail.com', 8000000, N'02.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV03', N'Lâm', N'Khánh Duy', CAST(N'1999-07-26' AS Date), 1, N'TPHCM', N'0902459811', N'khanhduy@gmail.com', 9000000, N'03.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV04', N'Lê', N'Nhật Duy', CAST(N'1999-05-21' AS Date), 1, N'TPHCM', N'0902334512', N'nhatduy@gmail.com', 9000000, N'04.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV05', N'Nguyễn', N'Hoàng Duy', CAST(N'1999-06-29' AS Date), 1, N'TPHCM', N'0902125433', N'hoangduy@gmail.com', 8000000, N'05.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV06', N'Phan', N'Hoàng Đức', CAST(N'1999-11-10' AS Date), 1, N'TPHCM', N'0902445566', N'hoangduc@gmail.com', 7000000, N'06.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV07', N'Bùi', N'Tấn Đạt', CAST(N'1999-01-03' AS Date), 1, N'TPHCM', N'0902125454', N'tandat@gmail.com', 6000000, N'07.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV08', N'Võ', N'Văn Đạt', CAST(N'1999-02-18' AS Date), 1, N'TPHCM', N'0902334333', N'vandat@gmail.com', 6000000, N'08.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV09', N'Bùi', N'Thành Đạt', CAST(N'1999-12-05' AS Date), 1, N'TPHCM', N'0902998723', N'thanhdat@gmail.com', 7000000, N'09.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV10', N'Võ', N'Chung Đạt', CAST(N'1999-05-19' AS Date), 1, N'TPHCM', N'0902001932', N'chungdat@gmail.com', 8000000, N'10.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV11', N'Trần', N'Văn Hậu', CAST(N'1999-11-30' AS Date), 1, N'TPHCM', N'0902434355', N'vanhau@gmail.com', 9000000, N'11.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV12', N'Nguyễn', N'Thành Lộc', CAST(N'1999-04-15' AS Date), 1, N'TPHCM', N'0902321132', N'thanhloc@gmail.com', 9000000, N'12.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV13', N'Nguyễn', N'Trọng Nghĩa', CAST(N'1999-10-09' AS Date), 1, N'TPHCM', N'0902124354', N'trongnghia@gmail.com', 8000000, N'13.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV14', N'Phùng', N'Thanh Phong', CAST(N'1999-02-23' AS Date), 1, N'TPHCM', N'0902992212', N'thanhphong@gmail.com', 7000000, N'14.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV15', N'Nguyễn', N'Hồng Phúc', CAST(N'1999-09-18' AS Date), 1, N'TPHCM', N'0902003476', N'hongphuc@gmail.com', 6000000, N'15.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV16', N'Nguyễn', N'Phú Qúy', CAST(N'1999-03-07' AS Date), 1, N'TPHCM', N'0902124543', N'phuquy@gmail.com', 9000000, N'16.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV17', N'ĐoàN', N'Thanh Tân', CAST(N'1999-12-10' AS Date), 1, N'TPHCM', N'0902989476', N'thanhtan@gmail.com', 8000000, N'17.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV18', N'Lê', N'Hoàng Thành', CAST(N'1999-11-21' AS Date), 1, N'TPHCM', N'0902559923', N'hoangthanh@gmail.com', 7000000, N'18.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV19', N'Trần', N'Quốc Triệu', CAST(N'1999-05-21' AS Date), 1, N'TPHCM', N'0902224455', N'quoctrieu@gmail.com', 7000000, N'19.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV20', N'Nguyễn', N'Hoàng Tú', CAST(N'1999-12-07' AS Date), 1, N'TPHCM', N'0902431243', N'hoangtu@gmail.com', 6000000, N'20.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV21', N'Đặng', N'Hoàng An', CAST(N'1999-10-14' AS Date), 1, N'TPHCM', N'0902543212', N'hoangan@gmail.com', 7000000, N'21.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV22', N'Trương', N'Gia Bảo', CAST(N'1999-02-11' AS Date), 1, N'TPHCM', N'0902231243', N'giabao@gmail.com', 6000000, N'22.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV23', N'Nguyễn', N'Thanh Hà', CAST(N'1999-10-01' AS Date), 1, N'TPHCM', N'0902098784', N'thanhha@gmail.com', 9000000, N'23.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV24', N'Phạm', N'Hoàng Đức', CAST(N'1999-04-30' AS Date), 1, N'TPHCM', N'0902214354', N'hoangduc@gmail.com', 9000000, N'24.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV25', N'Nguyễn', N'Quốc Hiếu', CAST(N'1999-01-01' AS Date), 1, N'TPHCM', N'0902433322', N'quochieu@gmail.com', 7000000, N'25.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV26', N'Nguyễn', N'Nhất Huy', CAST(N'1999-05-11' AS Date), 1, N'TPHCM', N'0902998843', N'nhathuy@gmail.com', 8000000, N'26.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV27', N'Hà', N'Duy Khang', CAST(N'1999-07-16' AS Date), 1, N'TPHCM', N'0902431211', N'duykhang@gmail.com', 6000000, N'27.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV28', N'Trần', N'Trung Kiên', CAST(N'1999-12-25' AS Date), 1, N'TPHCM', N'0902325411', N'trungkien@gmail.com', 7000000, N'28.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV29', N'Phan', N'Quốc Kiệt', CAST(N'1999-11-20' AS Date), 1, N'TPHCM', N'0902989054', N'quockiet@gmail.com', 8000000, N'29.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV30', N'Trần', N'Thanh Liêm', CAST(N'1999-08-26' AS Date), 1, N'TPHCM', N'0902553421', N'thanhliem@gmail.com', 9000000, N'30.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV31', N'Chung', N'Tấn Lợi', CAST(N'1999-09-15' AS Date), 1, N'TPHCM', N'0902430909', N'tanloi@gmail.com', 6000000, N'31.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV32', N'Bùi', N'Nhật Anh', CAST(N'1999-05-25' AS Date), 1, N'TPHCM', N'0902430989', N'nhatanh@gmail.com', 9000000, N'32.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV33', N'Ngô', N'Hoàng Phong', CAST(N'1999-04-01' AS Date), 1, N'TPHCM', N'0902431205', N'hoangphong@gmail.com', 7000000, N'33.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV34', N'Nguyễn', N'Thiên Long', CAST(N'1999-11-22' AS Date), 1, N'TPHCM', N'0902774412', N'thienlong@gmail.com', 6000000, N'34.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV35', N'Lê', N'Tuấn Anh', CAST(N'1999-12-29' AS Date), 1, N'TPHCM', N'0902439090', N'tuananh@gmail.com', 8000000, N'35.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV36', N'Hoàng', N'Xuân Bảo', CAST(N'1999-06-26' AS Date), 1, N'TPHCM', N'0902431123', N'xuanbao@gmail.com', 9000000, N'36.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV37', N'Phạm', N'Minh Bảo', CAST(N'1999-09-18' AS Date), 1, N'TPHCM', N'0902439855', N'minhbao@gmail.com', 8000000, N'37.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV38', N'Nguyễn', N'Hoàng Nam', CAST(N'1999-12-22' AS Date), 1, N'TPHCM', N'0902120944', N'hoangnam@gmail.com', 9000000, N'38.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV39', N'Nguyễn', N'Minh Chiến', CAST(N'1999-01-13' AS Date), 1, N'TPHCM', N'0902430904', N'minhchien@gmail.com', 7000000, N'39.jpg', N'Nhanvien', N'123', N'Không có gì')
INSERT [dbo].[NhanVien] ([id_NV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [Luong], [Hinh], [VaiTro], [matKhau], [GhiChu]) VALUES (N'NV40', N'Phạm', N'Quốc Chính', CAST(N'1999-02-07' AS Date), 1, N'TPHCM', N'0902321211', N'quocchinh@gmail.com', 6000000, N'40.jpg', N'Nhanvien', N'123', N'Không có gì')
GO
INSERT [dbo].[NhaSanXuat] ([id_NSX], [TenNSX]) VALUES (N'NSX01', N'Honda')
INSERT [dbo].[NhaSanXuat] ([id_NSX], [TenNSX]) VALUES (N'NSX02', N'Yamaha')
INSERT [dbo].[NhaSanXuat] ([id_NSX], [TenNSX]) VALUES (N'NSX03', N'Suzuki')
INSERT [dbo].[NhaSanXuat] ([id_NSX], [TenNSX]) VALUES (N'NSX04', N'SYM')
INSERT [dbo].[NhaSanXuat] ([id_NSX], [TenNSX]) VALUES (N'NSX05', N'Piaggio')
GO
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN01', CAST(N'2021-01-01' AS Date), N'NV01')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN02', CAST(N'2021-01-01' AS Date), N'NV02')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN03', CAST(N'2021-01-01' AS Date), N'NV03')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN04', CAST(N'2021-01-01' AS Date), N'NV04')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN05', CAST(N'2021-01-01' AS Date), N'NV05')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN06', CAST(N'2021-01-01' AS Date), N'NV06')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN07', CAST(N'2021-01-01' AS Date), N'NV07')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN08', CAST(N'2021-01-01' AS Date), N'NV08')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN09', CAST(N'2021-01-01' AS Date), N'NV09')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN10', CAST(N'2021-01-01' AS Date), N'NV10')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN11', CAST(N'2021-01-01' AS Date), N'NV11')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN12', CAST(N'2021-01-01' AS Date), N'NV12')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN13', CAST(N'2021-01-01' AS Date), N'NV13')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN14', CAST(N'2021-01-01' AS Date), N'NV14')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN15', CAST(N'2021-01-01' AS Date), N'NV15')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN16', CAST(N'2021-01-01' AS Date), N'NV16')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN17', CAST(N'2021-01-01' AS Date), N'NV17')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN18', CAST(N'2021-01-01' AS Date), N'NV18')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN19', CAST(N'2021-01-01' AS Date), N'NV19')
INSERT [dbo].[PhieuNhapKho] ([id_PN], [ngayNhap], [id_NV]) VALUES (N'PN20', CAST(N'2021-01-01' AS Date), N'NV20')
GO
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK01', N'Honda Air Blade 2021', N'abden.jpg', N'Đen', N'150cc', 2021, 36, N'TPHCM', 5000000000, N'Honda Air Blade 150cc 2021 mang phong cách mạnh mẽ', N'DSP01', N'NV01')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK02', N'Honda Air Blade 2021', N'abdo.jpg', N'Đỏ', N'150cc', 2021, 36, N'TPHCM', 5000000000, N'Honda Air Blade 150cc 2021 mang phong cách mạnh mẽ', N'DSP01', N'NV01')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK03', N'Honda Air Blade 2021', N'abxam.jpg', N'Xám', N'150cc', 2021, 36, N'TPHCM', 5000000000, N'Honda Air Blade 150cc 2021 mang phong cách mạnh mẽ', N'DSP01', N'NV01')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK04', N'Honda SH 150i 2021', N'shden.jpg', N'Đen', N'150cc', 2021, 36, N'TPHCM', 9000000000, N'Honda SH mới được thiết kế dựa theo những xu hướng mới và hiện đại nhất', N'DSP02', N'NV02')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK05', N'Honda SH 150i 2021', N'shdo.jpg', N'Đỏ', N'150cc', 2021, 36, N'TPHCM', 9000000000, N'Honda SH mới được thiết kế dựa theo những xu hướng mới và hiện đại nhất', N'DSP02', N'NV02')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK06', N'Honda SH 150i 2021', N'shxam.jpg', N'Xám', N'150cc', 2021, 36, N'TPHCM', 9000000000, N'Honda SH mới được thiết kế dựa theo những xu hướng mới và hiện đại nhất', N'DSP02', N'NV02')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK07', N'Honda SH Mode 2021', N'shmodeden.jpg', N'Đen', N'125cc', 2021, 36, N'TPHCM', 6000000000, N'Honda SH Mode 2021 được định vị là dòng xe tay ga cao cấp dành cho nữ', N'DSP03', N'NV03')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK08', N'Honda SH Mode 2021', N'shmodedo.jpg', N'Đỏ', N'125cc', 2021, 36, N'TPHCM', 6000000000, N'Honda SH Mode 2021 được định vị là dòng xe tay ga cao cấp dành cho nữ', N'DSP03', N'NV03')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK09', N'Honda SH Mode 2021', N'shmodexam.jpg', N'Xám', N'125cc', 2021, 36, N'TPHCM', 6000000000, N'Honda SH Mode 2021 được định vị là dòng xe tay ga cao cấp dành cho nữ', N'DSP03', N'NV03')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK10', N'Honda Lead 2021', N'leadden.jpg', N'Đen', N'125cc', 2021, 36, N'TPHCM', 4000000000, N'Honda Lead 2021 là một trong những dòng xe được sử dụng phổ biến nhất hiện nay', N'DSP04', N'NV04')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK11', N'Honda Lead 2021', N'leaddo.jpg', N'Đỏ', N'125cc', 2021, 36, N'TPHCM', 4000000000, N'Honda Lead 2021 là một trong những dòng xe được sử dụng phổ biến nhất hiện nay', N'DSP04', N'NV04')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK12', N'Honda Lead 2021', N'leadtrang.jpg', N'Trắng', N'125cc', 2021, 36, N'TPHCM', 4000000000, N'Honda Lead 2021 là một trong những dòng xe được sử dụng phổ biến nhất hiện nay', N'DSP04', N'NV04')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK13', N'Honda PCX 2021', N'pcxden.jpg', N'Đen', N'150cc', 2021, 36, N'TPHCM', 7000000000, N'Honda PCX cải tiến mới, tích hợp công nghệ hiện đại', N'DSP05', N'NV05')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK14', N'Honda PCX 2021', N'pcxdo.jpg', N'Đỏ', N'150cc', 2021, 36, N'TPHCM', 7000000000, N'Honda PCX cải tiến mới, tích hợp công nghệ hiện đại', N'DSP05', N'NV05')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK15', N'Honda PCX 2021', N'pxctrang.jpg', N'Trắng', N'150cc', 2021, 36, N'TPHCM', 7000000000, N'Honda PCX cải tiến mới, tích hợp công nghệ hiện đại', N'DSP05', N'NV05')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK16', N'Honda Winner 2021', N'winden.jpg', N'Đen', N'150cc', 2021, 36, N'TPHCM', 5000000000, N'Honda Winner 150cc 2021 mang phong cách mạnh mẽ', N'DSP06', N'NV06')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK17', N'Honda Winner 2021', N'windo.jpg', N'Đỏ', N'150cc', 2021, 36, N'TPHCM', 5000000000, N'Honda Winner 150cc 2021 mang phong cách mạnh mẽ', N'DSP06', N'NV06')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK18', N'Honda Winner 2021', N'winxam.jpg', N'Xám', N'150cc', 2021, 36, N'TPHCM', 5000000000, N'Honda Winner 150cc 2021 mang phong cách mạnh mẽ', N'DSP06', N'NV06')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK19', N'Honda Wave Alpha 2021', N'alphaden.jpg', N'Đen', N'110cc', 2021, 36, N'TPHCM', 2000000000, N'Honda Wave Alpha 110cc phiên bản 2021 trẻ trung và cá tính', N'DSP07', N'NV07')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK20', N'Honda Wave Alpha 2021', N'alphado.jpg', N'Đỏ', N'110cc', 2021, 36, N'TPHCM', 2000000000, N'Honda Wave Alpha 110cc phiên bản 2021 trẻ trung và cá tính', N'DSP07', N'NV07')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK21', N'Honda Wave Alpha 2021', N'alphatrang.jpg', N'Trắng', N'110cc', 2021, 36, N'TPHCM', 2000000000, N'Honda Wave Alpha 110cc phiên bản 2021 trẻ trung và cá tính', N'DSP07', N'NV07')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK22', N'Honda Future 2021', N'fuden.jpg', N'Đen', N'125cc', 2021, 36, N'TPHCM', 4000000000, N'Honda Future 125 FI với thiết kế trẻ trung, lịch lãm ', N'DSP08', N'NV08')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK23', N'Honda Future 2021', N'fudo.jpg', N'Đỏ', N'125cc', 2021, 36, N'TPHCM', 4000000000, N'Honda Future 125 FI với thiết kế trẻ trung, lịch lãm ', N'DSP08', N'NV08')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK24', N'Honda Future 2021', N'futrang.jpg', N'Trắng', N'125cc', 2021, 36, N'TPHCM', 4000000000, N'Honda Future 125 FI với thiết kế trẻ trung, lịch lãm ', N'DSP08', N'NV08')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK25', N'Honda Wave RSX 2021', N'rsxden.jpg', N'Đen', N'110cc', 2021, 36, N'TPHCM', 2500000000, N'Honda Wave RSX Fi 110 mang diện mạo hoàn toàn mới, với thiết kế thể thao', N'DSP09', N'NV09')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK26', N'Honda Wave RSX 2021', N'rsxdo.jpg', N'Đỏ', N'110cc', 2021, 36, N'TPHCM', 2500000000, N'Honda Wave RSX Fi 110 mang diện mạo hoàn toàn mới, với thiết kế thể thao', N'DSP09', N'NV09')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK27', N'Honda Wave RSX 2021', N'rsxtrang.jpg', N'Trắng', N'110cc', 2021, 36, N'TPHCM', 2500000000, N'Honda Wave RSX Fi 110 mang diện mạo hoàn toàn mới, với thiết kế thể thao', N'DSP09', N'NV09')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK28', N'Honda Blade 2021', N'bladeden.jpg', N'Đen', N'110cc', 2021, 36, N'TPHCM', 2000000000, N'Honda Blade 110cc 2021 mang phong cách mạnh mẽ', N'DSP10', N'NV10')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK29', N'Honda Blade 2021', N'bladedo.jpg', N'Đỏ', N'110cc', 2021, 36, N'TPHCM', 2000000000, N'Honda Blade 110cc 2021 mang phong cách mạnh mẽ', N'DSP10', N'NV10')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK30', N'Honda Blade 2021', N'bladetrang.jpg', N'Trắng', N'110cc', 2021, 36, N'TPHCM', 2000000000, N'Honda Blade 110cc 2021 mang phong cách mạnh mẽ', N'DSP10', N'NV10')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK31', N'Yamaha Grande 2021', N'grandeden.jpg', N'Đen', N'125cc', 2021, 36, N'TPHCM', 4000000000, N'Yamaha Grande là mẫu xe tay ga có thiết kế thích hợp cho môi trường', N'DSP11', N'NV11')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK32', N'Yamaha Grande 2021', N'grandedo.jpg', N'Đỏ', N'125cc', 2021, 36, N'TPHCM', 4000000000, N'Yamaha Grande là mẫu xe tay ga có thiết kế thích hợp cho môi trường', N'DSP11', N'NV11')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK33', N'Yamaha Grande 2021', N'grandexam.jpg', N'Xám', N'125cc', 2021, 36, N'TPHCM', 4000000000, N'Yamaha Grande là mẫu xe tay ga có thiết kế thích hợp cho môi trường', N'DSP11', N'NV11')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK34', N'Yamaha Nozza 2021', N'nozzaden.jpg', N'Đen', N'125cc', 2021, 36, N'TPHCM', 3500000000, N'Yamaha Nozza là mẫu xe sở hữu sự kết hợp hoàn hảo giữa động cơ mạnh mẽ', N'DSP12', N'NV12')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK35', N'Yamaha Nozza 2021', N'nozzado.jpg', N'Đỏ', N'125cc', 2021, 36, N'TPHCM', 3500000000, N'Yamaha Nozza là mẫu xe sở hữu sự kết hợp hoàn hảo giữa động cơ mạnh mẽ', N'DSP12', N'NV12')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK36', N'Yamaha Nozza 2021', N'nozzatrang.jpg', N'Trắng', N'125cc', 2021, 36, N'TPHCM', 3500000000, N'Yamaha Nozza là mẫu xe sở hữu sự kết hợp hoàn hảo giữa động cơ mạnh mẽ', N'DSP12', N'NV12')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK37', N'Yamaha Janus 2021', N'janusden.jpg', N'Đen', N'125cc', 2021, 36, N'TPHCM', 3000000000, N'Yamaha Janus 2021 có thiết kế trẻ trung cùng khả năng vận hành mượt mà', N'DSP13', N'NV13')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK38', N'Yamaha Janus 2021', N'janusdo.jpg', N'Đỏ', N'125cc', 2021, 36, N'TPHCM', 3000000000, N'Yamaha Janus 2021 có thiết kế trẻ trung cùng khả năng vận hành mượt mà', N'DSP13', N'NV13')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK39', N'Yamaha Janus 2021', N'janusxam.jpg', N'Xám', N'125cc', 2021, 36, N'TPHCM', 3000000000, N'Yamaha Janus 2021 có thiết kế trẻ trung cùng khả năng vận hành mượt mà', N'DSP13', N'NV13')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK40', N'Yamaha Exciter 2021', N'exden.jpg', N'Đen', N'150cc', 2021, 36, N'TPHCM', 5500000000, N'Yamaha Exciter là mẫu xe côn tay được ưa chuộng nhất tại thị trường Việt Nam', N'DSP14', N'NV14')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK41', N'Yamaha Exciter 2021', N'exdo.jpg', N'Đỏ', N'150cc', 2021, 36, N'TPHCM', 5500000000, N'Yamaha Exciter là mẫu xe côn tay được ưa chuộng nhất tại thị trường Việt Nam', N'DSP14', N'NV14')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK42', N'Yamaha Exciter 2021', N'exxanh.jpg', N'Xanh', N'150cc', 2021, 36, N'TPHCM', 5500000000, N'Yamaha Exciter là mẫu xe côn tay được ưa chuộng nhất tại thị trường Việt Nam', N'DSP14', N'NV14')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK43', N'Yamaha Sirius RC 2021', N'siden.jpg', N'Đen', N'110cc', 2021, 36, N'TPHCM', 2000000000, N'Yamaha Sirius RC 2021 với động cơ 110cc, 4 thì, xy lanh đơn SOHC', N'DSP15', N'NV15')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK44', N'Yamaha Sirius RC 2021', N'sido.jpg', N'Đỏ', N'110cc', 2021, 36, N'TPHCM', 2000000000, N'Yamaha Sirius RC 2021 với động cơ 110cc, 4 thì, xy lanh đơn SOHC', N'DSP15', N'NV15')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK45', N'Yamaha Sirius RC 2021', N'sixam.jpg', N'Xám', N'110cc', 2021, 36, N'TPHCM', 2000000000, N'Yamaha Sirius RC 2021 với động cơ 110cc, 4 thì, xy lanh đơn SOHC', N'DSP15', N'NV15')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK46', N'Yamaha Jupiter FI 2021', N'juden.jpg', N'Đen', N'125cc', 2021, 36, N'TPHCM', 3000000000, N'Yamaha Jupiter FI GC thuộc mẫu xe số nam trang bị động cơ mạnh mẽ', N'DSP16', N'NV16')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK47', N'Yamaha Jupiter FI 2021', N'judo.jpg', N'Đỏ', N'125cc', 2021, 36, N'TPHCM', 3000000000, N'Yamaha Jupiter FI GC thuộc mẫu xe số nam trang bị động cơ mạnh mẽ', N'DSP16', N'NV16')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK48', N'Yamaha Jupiter FI 2021', N'juxanh.jpg', N'Xanh', N'125cc', 2021, 36, N'TPHCM', 3000000000, N'Yamaha Jupiter FI GC thuộc mẫu xe số nam trang bị động cơ mạnh mẽ', N'DSP16', N'NV16')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK49', N'Suzuki Impulse 2021', N'imden.jpg', N'Đen', N'125cc', 2021, 36, N'TPHCM', 3000000000, N'Suzuki Impulse là chiếc xe ga ấn tượng và phù hợp với nhu cầu sử dụng xe máy của số đông các nam thanh niên Việt', N'DSP17', N'NV17')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK50', N'Suzuki Impulse 2021', N'imtrang.jpg', N'Trắng', N'125cc', 2021, 36, N'TPHCM', 3000000000, N'Suzuki Impulse là chiếc xe ga ấn tượng và phù hợp với nhu cầu sử dụng xe máy của số đông các nam thanh niên Việt', N'DSP17', N'NV17')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK51', N'Suzuki Hayate 2021', N'imdo.jpg', N'Đỏ', N'125cc', 2021, 36, N'TPHCM', 3000000000, N'Suzuki Hayate là dòng xe tay ga thể thao được kì vọng sẽ mang lại khởi sắc cho Suzuki', N'DSP18', N'NV18')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK52', N'Suzuki Hayate 2021', N'imtrang.jpg', N'Trắng', N'125cc', 2021, 36, N'TPHCM', 3000000000, N'Suzuki Hayate là dòng xe tay ga thể thao được kì vọng sẽ mang lại khởi sắc cho Suzuki', N'DSP18', N'NV18')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK53', N'Suzuki Raider 2021', N'imden.jpg', N'Đen', N'150cc', 2021, 36, N'TPHCM', 5000000000, N'Suzuki Raider được phát triển trên nền tảng công nghệ tiên tiến của Suzuki', N'DSP19', N'NV19')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK54', N'Suzuki Raider 2021', N'imtrang.jpg', N'Trắng', N'150cc', 2021, 36, N'TPHCM', 5000000000, N'Suzuki Raider được phát triển trên nền tảng công nghệ tiên tiến của Suzuki', N'DSP19', N'NV19')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK55', N'Suzuki Revo 2021', N'revodo.jpg', N'Đỏ', N'110cc', 2021, 36, N'TPHCM', 2000000000, N'Suzuki Revo có cả phiên bản bánh căm và vành đúc', N'DSP20', N'NV20')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK56', N'Suzuki Revo 2021', N'revotrang.jpg', N'Trắng', N'110cc', 2021, 36, N'TPHCM', 2000000000, N'Suzuki Revo có cả phiên bản bánh căm và vành đúc', N'DSP20', N'NV20')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK57', N'Suzuki Viva 2021', N'vivado.jpg', N'Đỏ', N'110cc', 2021, 36, N'TPHCM', 2000000000, N'Suzuki Viva 115 Fi 2021 được ra mắt tại thị trường Việt Nam là một dòng xe mới nhất ', N'DSP21', N'NV21')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK58', N'Suzuki Viva 2021', N'vivaden.jpg', N'Đen', N'110cc', 2021, 36, N'TPHCM', 2000000000, N'Suzuki Viva 115 Fi 2021 được ra mắt tại thị trường Việt Nam là một dòng xe mới nhất ', N'DSP21', N'NV21')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK59', N'SYM Venus 2021', N'venusdo.jpg', N'Đỏ', N'125cc', 2021, 36, N'TPHCM', 3000000000, N'SYM Venus có phần thân xe hình giọt nước mềm mại', N'DSP22', N'NV22')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK60', N'SYM Venus 2021', N'venustrang.jpg', N'Trắng', N'125cc', 2021, 36, N'TPHCM', 3000000000, N'SYM Venus có phần thân xe hình giọt nước mềm mại', N'DSP22', N'NV22')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK61', N'SYM Angela 2021', N'anden.jpg', N'Đen', N'50cc', 2021, 36, N'TPHCM', 1000000000, N'SYM Angela 50 nổi bật là một sản phẩm xe số phổ thông với khả năng tiết', N'DSP23', N'NV23')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK62', N'SYM Angela 2021', N'antrang.jpg', N'Trắng', N'50cc', 2021, 36, N'TPHCM', 1000000000, N'SYM Angela 50 nổi bật là một sản phẩm xe số phổ thông với khả năng tiết', N'DSP23', N'NV23')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK63', N'Piaggio Liberty 2021', N'liden.jpg', N'Đen', N'125cc', 2021, 36, N'TPHCM', 6000000000, N'Piaggio Liberty S nổi bật với những điểm nhấn chi tiết ', N'DSP24', N'NV24')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK64', N'Paggio Liberty 2021', N'litrang.jpg', N'Trắng', N'125cc', 2021, 36, N'TPHCM', 6000000000, N'Piaggio Liberty S nổi bật với những điểm nhấn chi tiết ', N'DSP24', N'NV24')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK65', N'Piaggio Vespa 2021', N'vesdo.jpg', N'Đỏ', N'125cc', 2021, 36, N'TPHCM', 8000000000, N'Vespa là thương hiệu của dòng sản phẩm xe gắn máy yên thấp bánh nhỏ của hãng Piaggio', N'DSP25', N'NV25')
INSERT [dbo].[SanPham] ([SKU], [tenSP], [hinh], [mauSac], [phanKhoi], [doiXe], [thoiGianBH], [DiaChiSX], [giaTien], [moTa], [id_DongSP], [id_NV]) VALUES (N'SK66', N'Piaggio Vespa 2021', N'vestrang.jpg', N'Trắng', N'125cc', 2021, 36, N'TPHCM', 8000000000, N'Vespa là thương hiệu của dòng sản phẩm xe gắn máy yên thấp bánh nhỏ của hãng Piaggio', N'DSP25', N'NV25')
GO
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH01', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH02', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH03', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH04', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH05', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH06', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH07', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH08', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH09', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH10', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH11', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH12', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH13', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH14', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH15', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH16', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH17', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH18', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH19', 1)
INSERT [dbo].[SoBaoHanh] ([id_SBH], [id_CTHD]) VALUES (N'SBH20', 1)
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((0)) FOR [ThanhVien]
GO
ALTER TABLE [dbo].[PhieuNhapKho] ADD  DEFAULT (getdate()) FOR [ngayNhap]
GO
ALTER TABLE [dbo].[ChiTietBaoDuong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBaoDuong_NhanVien] FOREIGN KEY([id_NV])
REFERENCES [dbo].[NhanVien] ([id_NV])
GO
ALTER TABLE [dbo].[ChiTietBaoDuong] CHECK CONSTRAINT [FK_ChiTietBaoDuong_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietBaoDuong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBaoDuong_SoBaoHanh] FOREIGN KEY([id_SBH])
REFERENCES [dbo].[SoBaoHanh] ([id_SBH])
GO
ALTER TABLE [dbo].[ChiTietBaoDuong] CHECK CONSTRAINT [FK_ChiTietBaoDuong_SoBaoHanh]
GO
ALTER TABLE [dbo].[ChiTietBaoHanh]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBaoHanh_NhanVien] FOREIGN KEY([id_NV])
REFERENCES [dbo].[NhanVien] ([id_NV])
GO
ALTER TABLE [dbo].[ChiTietBaoHanh] CHECK CONSTRAINT [FK_ChiTietBaoHanh_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietBaoHanh]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBaoHanh_SoBaoHanh] FOREIGN KEY([id_SBH])
REFERENCES [dbo].[SoBaoHanh] ([id_SBH])
GO
ALTER TABLE [dbo].[ChiTietBaoHanh] CHECK CONSTRAINT [FK_ChiTietBaoHanh_SoBaoHanh]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_DichVu] FOREIGN KEY([idDV])
REFERENCES [dbo].[DichVu] ([idDV])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_DichVu]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([idHD])
REFERENCES [dbo].[HoaDon] ([idHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([SKU])
REFERENCES [dbo].[SanPham] ([SKU])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[ChiTietNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietNhapKho_SanPham] FOREIGN KEY([SKU])
REFERENCES [dbo].[SanPham] ([SKU])
GO
ALTER TABLE [dbo].[ChiTietNhapKho] CHECK CONSTRAINT [FK_ChiTietNhapKho_SanPham]
GO
ALTER TABLE [dbo].[ChiTietNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_ChiTieuNhapKho_PhieuNhapKho] FOREIGN KEY([id_PN])
REFERENCES [dbo].[PhieuNhapKho] ([id_PN])
GO
ALTER TABLE [dbo].[ChiTietNhapKho] CHECK CONSTRAINT [FK_ChiTieuNhapKho_PhieuNhapKho]
GO
ALTER TABLE [dbo].[DichVu]  WITH CHECK ADD  CONSTRAINT [FK_DichVu_NhanVien] FOREIGN KEY([id_NV])
REFERENCES [dbo].[NhanVien] ([id_NV])
GO
ALTER TABLE [dbo].[DichVu] CHECK CONSTRAINT [FK_DichVu_NhanVien]
GO
ALTER TABLE [dbo].[DongSanPham]  WITH CHECK ADD  CONSTRAINT [FK_LoaiHang_DongSanPham] FOREIGN KEY([id_LH])
REFERENCES [dbo].[LoaiHang] ([id_LH])
GO
ALTER TABLE [dbo].[DongSanPham] CHECK CONSTRAINT [FK_LoaiHang_DongSanPham]
GO
ALTER TABLE [dbo].[DongSanPham]  WITH CHECK ADD  CONSTRAINT [FK_NhaSanXuat_DongSanPham] FOREIGN KEY([id_NSX])
REFERENCES [dbo].[NhaSanXuat] ([id_NSX])
GO
ALTER TABLE [dbo].[DongSanPham] CHECK CONSTRAINT [FK_NhaSanXuat_DongSanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([idKH])
REFERENCES [dbo].[KhachHang] ([idKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([id_NV])
REFERENCES [dbo].[NhanVien] ([id_NV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [fk_NhanVien_KhachHang] FOREIGN KEY([id_NV])
REFERENCES [dbo].[NhanVien] ([id_NV])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [fk_NhanVien_KhachHang]
GO
ALTER TABLE [dbo].[PhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_PhieuNhapKho] FOREIGN KEY([id_NV])
REFERENCES [dbo].[NhanVien] ([id_NV])
GO
ALTER TABLE [dbo].[PhieuNhapKho] CHECK CONSTRAINT [FK_NhanVien_PhieuNhapKho]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Model] FOREIGN KEY([id_DongSP])
REFERENCES [dbo].[DongSanPham] ([id_DongSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Model]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhanVien] FOREIGN KEY([id_NV])
REFERENCES [dbo].[NhanVien] ([id_NV])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhanVien]
GO
ALTER TABLE [dbo].[SoBaoHanh]  WITH CHECK ADD  CONSTRAINT [FK_SoBaoHanh_ChiTietHoaDon] FOREIGN KEY([id_CTHD])
REFERENCES [dbo].[ChiTietHoaDon] ([id_CTHD])
GO
ALTER TABLE [dbo].[SoBaoHanh] CHECK CONSTRAINT [FK_SoBaoHanh_ChiTietHoaDon]
GO
