USE HONDA
GO

--Tạo proc thêm, xoá, sửa nhân viên
--Tạo proc thêm, xoá, sửa nhà sản xuất
--Tạo proc thêm, xoá, sửa loại hàng
--Tạo proc thêm, xoá, sửa dòng xe
--Tạo proc thêm, xoá, sửa 
--Tạo proc thêm, xoá, sửa khách hàng
--Tạo proc thêm, xoá, sửa sản phẩm
--Tạo proc thêm, xoá, sửa hoá đơn + hoá đơn chi tiết
--Tạo proc thêm, xoá, sửa 
DROP PROC IF EXISTS usp_updateNhanVien
GO

CREATE PROC usp_updateNhanVien
(@sourceTable NhanVien readonly)
AS
BEGIN
	MERGE NhanVien as Target
	USING @sourceTable as Source
	ON Source.id_NV = Target.id_NV
	WHEN NOT MATCHED BY Target 
	THEN INSERT (id_NV, HoNV, TenNV, NgaySinh, GioiTinh, DiaChi, SDT, Email, Luong, Hinh, VaiTro, matKhau, GhiChu) 
	VALUES (Source.id_NV, Source.HoNV, Source.TenNV, Source.NgaySinh, Source.GioiTinh, Source.DiaChi, Source.SDT, Source.Email, Source.Luong, Source.Hinh, Source.VaiTro, Source.matKhau, Source.GhiChu)

	WHEN MATCHED
	THEN UPDATE SET 
		HoNV = Source.HoNV, 
		TenNV = Source.TenNV, 
		NgaySinh = CONVERT(DATETIME2, Source.NgaySinh, 102),
		GioiTinh = Source.GioiTinh,
		DiaChi = Source.DiaChi,
		SDT = Source.SDT, 
		Email = Source.Email,
		Luong = Source.Luong,
		Hinh = Source.Hinh, 
		VaiTro = Source.VaiTro,
		matKhau = Source.matKhau,
		GhiChu = Source.GhiChu

	WHEN NOT MATCHED BY Source
	THEN DELETE;
END
GO

select * from NhanVien