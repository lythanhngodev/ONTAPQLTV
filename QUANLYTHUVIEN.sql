﻿USE [master]
GO
/****** Object:  Database [QUANLYTHUVIEN1]    Script Date: 06/27/2018 13:50:05 ******/
CREATE DATABASE [QUANLYTHUVIEN1]
GO
USE [QUANLYTHUVIEN1]
GO

CREATE TABLE [dbo].[PHANLOAI](
	[maloai] [char](10) NOT NULL,
	[tenloai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PHANLOAI] ([maloai], [tenloai]) VALUES (N'          ', N'')
INSERT [dbo].[PHANLOAI] ([maloai], [tenloai]) VALUES (N'GT        ', N'Giáo trình')
INSERT [dbo].[PHANLOAI] ([maloai], [tenloai]) VALUES (N'KD        ', N'Kinh dị')
INSERT [dbo].[PHANLOAI] ([maloai], [tenloai]) VALUES (N'LV        ', N'Luận văn tốt nghiệp')
INSERT [dbo].[PHANLOAI] ([maloai], [tenloai]) VALUES (N'TLTK      ', N'Tài liệu tham khảo')
INSERT [dbo].[PHANLOAI] ([maloai], [tenloai]) VALUES (N'TT        ', N'Trinh thám')
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 06/27/2018 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[manhanvien] [char](10) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[diachi] [nvarchar](100) NULL,
	[tendangnhap] [nvarchar](50) NULL,
	[matkhau] [char](16) NULL,
	[quyenhan] [nvarchar](20) NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [nvarchar](3) NULL,
	[trangthai] [char](3) NULL,
 CONSTRAINT [pk_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[manhanvien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NHANVIEN] ([manhanvien], [hoten], [diachi], [tendangnhap], [matkhau], [quyenhan], [ngaysinh], [gioitinh], [trangthai]) VALUES (N'ABC       ', N'Ngô Thanh Lý', N'Vl', N'admin', N'12345', N'Thủ Thư', CAST(0x893C0B00 AS Date), N'Nam', N'OFF')
INSERT [dbo].[NHANVIEN] ([manhanvien], [hoten], [diachi], [tendangnhap], [matkhau], [quyenhan], [ngaysinh], [gioitinh], [trangthai]) VALUES (N'NV001     ', N'Nguyễn Văn A', N'Vĩnh Long', N'nguyenvana', N'NV001           ', N'Admin', CAST(0x5B950A00 AS Date), N'Nam', N'OFF')
INSERT [dbo].[NHANVIEN] ([manhanvien], [hoten], [diachi], [tendangnhap], [matkhau], [quyenhan], [ngaysinh], [gioitinh], [trangthai]) VALUES (N'NV002     ', N'Nguyễn Văn B', N'Trà Vinh', N'nguyenvanb      ', N'NV002           ', N'Thủ thư', CAST(0x5B950A00 AS Date), N'Nam', N'OFF')
INSERT [dbo].[NHANVIEN] ([manhanvien], [hoten], [diachi], [tendangnhap], [matkhau], [quyenhan], [ngaysinh], [gioitinh], [trangthai]) VALUES (N'NV003     ', N'Trần Thị A', N'Cần Thơ', N'tranthia        ', N'NV003           ', N'Thủ thư', CAST(0x5B950A00 AS Date), N'Nữ', N'OFF')
INSERT [dbo].[NHANVIEN] ([manhanvien], [hoten], [diachi], [tendangnhap], [matkhau], [quyenhan], [ngaysinh], [gioitinh], [trangthai]) VALUES (N'NV004     ', N'Lê Thị B', N'Vĩnh Long', N'lethib          ', N'NV004           ', N'Thủ thư', CAST(0x5B950A00 AS Date), N'Nữ', N'OFF')
INSERT [dbo].[NHANVIEN] ([manhanvien], [hoten], [diachi], [tendangnhap], [matkhau], [quyenhan], [ngaysinh], [gioitinh], [trangthai]) VALUES (N'NV005     ', N'Trần Văn A', N'Vĩnh Long', N'tranvana        ', N'NV005           ', N'Thủ thư', CAST(0xC3150B00 AS Date), N'Nam', N'OFF')
INSERT [dbo].[NHANVIEN] ([manhanvien], [hoten], [diachi], [tendangnhap], [matkhau], [quyenhan], [ngaysinh], [gioitinh], [trangthai]) VALUES (N'NV006     ', N'Lưu Vinh Huy', N'Trà Vinh', N'Lưu Vinh Huy', N'NV006           ', N'Thủ thư', CAST(0x521E0B00 AS Date), N'Nam', N'OFF')
/****** Object:  Table [dbo].[KHOA]    Script Date: 06/27/2018 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHOA](
	[makhoa] [char](10) NOT NULL,
	[tenkhoa] [nvarchar](50) NULL,
	[diachi] [nvarchar](100) NULL,
 CONSTRAINT [pk_KHOA] PRIMARY KEY CLUSTERED 
(
	[makhoa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KHOA] ([makhoa], [tenkhoa], [diachi]) VALUES (N'CTP       ', N'Công Nghệ Thực Phẩm', N'Tầng 4 - khu C')
INSERT [dbo].[KHOA] ([makhoa], [tenkhoa], [diachi]) VALUES (N'CTT       ', N'Công Nghệ Thông tin', N'Tầng 6 - khu C')
INSERT [dbo].[KHOA] ([makhoa], [tenkhoa], [diachi]) VALUES (N'DDT       ', N'Điện- Điện tử', N'Tầng 1 - khu A')
/****** Object:  Table [dbo].[DOCGIA]    Script Date: 06/27/2018 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOCGIA](
	[madocgia] [char](10) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [nvarchar](10) NULL,
	[makhoa] [char](10) NULL,
	[diachi] [nvarchar](100) NULL,
	[ngaylapthe] [date] NULL,
	[matkhau] [char](16) NULL,
	[trangthai] [char](3) NULL,
 CONSTRAINT [pk_DOCGIA] PRIMARY KEY CLUSTERED 
(
	[madocgia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DOCGIA] ([madocgia], [hoten], [ngaysinh], [gioitinh], [makhoa], [diachi], [ngaylapthe], [matkhau], [trangthai]) VALUES (N'12312414  ', N'BBBBBB', CAST(0x521E0B00 AS Date), N'Nam', N'CTP       ', N'Bến Tre', CAST(0x5B950A00 AS Date), N'12312414        ', N'OFF')
INSERT [dbo].[DOCGIA] ([madocgia], [hoten], [ngaysinh], [gioitinh], [makhoa], [diachi], [ngaylapthe], [matkhau], [trangthai]) VALUES (N'14004002  ', N'Dương Ngọc Lan Anh', CAST(0x5B950A00 AS Date), N'Nữ', N'CTT       ', N'Tiền Giang', CAST(0x5B950A00 AS Date), N'14004002        ', N'OFF')
INSERT [dbo].[DOCGIA] ([madocgia], [hoten], [ngaysinh], [gioitinh], [makhoa], [diachi], [ngaylapthe], [matkhau], [trangthai]) VALUES (N'14004028  ', N'Nguyễn Hoàng Khải', CAST(0x5B950A00 AS Date), N'Nam', N'CTT       ', N'Vĩnh Long', CAST(0x5B950A00 AS Date), N'14004028        ', N'OFF')
INSERT [dbo].[DOCGIA] ([madocgia], [hoten], [ngaysinh], [gioitinh], [makhoa], [diachi], [ngaylapthe], [matkhau], [trangthai]) VALUES (N'14004029  ', N'Trần Đắc Khải', CAST(0xA91F0B00 AS Date), N'Nam', N'CTT       ', N'Vĩnh Long', CAST(0xA91F0B00 AS Date), N'14004029        ', N'ON ')
INSERT [dbo].[DOCGIA] ([madocgia], [hoten], [ngaysinh], [gioitinh], [makhoa], [diachi], [ngaylapthe], [matkhau], [trangthai]) VALUES (N'14004072  ', N'Nguyễn Thanh Sang', CAST(0x521E0B00 AS Date), N'Nam', N'CTT       ', N'Vĩnh Long', CAST(0x5B950A00 AS Date), N'14004072        ', N'OFF')
INSERT [dbo].[DOCGIA] ([madocgia], [hoten], [ngaysinh], [gioitinh], [makhoa], [diachi], [ngaylapthe], [matkhau], [trangthai]) VALUES (N'14004076  ', N'Nguyễn Đức Tài', CAST(0x5B950A00 AS Date), N'Nam', N'CTT       ', N'Tiền Giang', CAST(0x5B950A00 AS Date), N'14004076        ', N'OFF')
INSERT [dbo].[DOCGIA] ([madocgia], [hoten], [ngaysinh], [gioitinh], [makhoa], [diachi], [ngaylapthe], [matkhau], [trangthai]) VALUES (N'14004088  ', N'Huỳnh Thiên Thông', CAST(0x5B950A00 AS Date), N'Nam', N'CTT       ', N'VL', CAST(0x5B950A00 AS Date), N'14004088        ', N'OFF')
INSERT [dbo].[DOCGIA] ([madocgia], [hoten], [ngaysinh], [gioitinh], [makhoa], [diachi], [ngaylapthe], [matkhau], [trangthai]) VALUES (N'14004092  ', N'Lê Thị Cẩm Tiên', CAST(0x521E0B00 AS Date), N'Nữ', N'CTT       ', N'Vĩnh Long', CAST(0x893C0B00 AS Date), N'14004092        ', N'OFF')
INSERT [dbo].[DOCGIA] ([madocgia], [hoten], [ngaysinh], [gioitinh], [makhoa], [diachi], [ngaylapthe], [matkhau], [trangthai]) VALUES (N'14004093  ', N'Lê Thị Cẩm Tiên', CAST(0x931E0B00 AS Date), N'Nữ', N'CTT       ', N'Hà Nội', CAST(0x893C0B00 AS Date), N'14004093        ', N'OFF')
INSERT [dbo].[DOCGIA] ([madocgia], [hoten], [ngaysinh], [gioitinh], [makhoa], [diachi], [ngaylapthe], [matkhau], [trangthai]) VALUES (N'14004095  ', N'Nguyễn Tấn Toàn', CAST(0x911F0B00 AS Date), N'Nam', N'CTT       ', N'Vĩnh Long', CAST(0xE23C0B00 AS Date), N'14004095        ', N'OFF')
INSERT [dbo].[DOCGIA] ([madocgia], [hoten], [ngaysinh], [gioitinh], [makhoa], [diachi], [ngaylapthe], [matkhau], [trangthai]) VALUES (N'14004099  ', N'Trần Phan An Trường', CAST(0x5B950A00 AS Date), N'Nam', N'CTT       ', N'VL', CAST(0x5B950A00 AS Date), N'14004099        ', N'OFF')
INSERT [dbo].[DOCGIA] ([madocgia], [hoten], [ngaysinh], [gioitinh], [makhoa], [diachi], [ngaylapthe], [matkhau], [trangthai]) VALUES (N'14004112  ', N'Nguyễn Hoàng Huệ', CAST(0x5B950A00 AS Date), N'Nữ', N'CTT       ', N'VL', CAST(0x5B950A00 AS Date), N'14004112        ', N'OFF')
/****** Object:  Table [dbo].[SACH]    Script Date: 06/27/2018 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACH](
	[masach] [char](10) NOT NULL,
	[nhande] [nvarchar](100) NULL,
	[sotrang] [int] NULL,
	[soluong] [int] NULL,
	[namxb] [char](10) NULL,
	[lanxb] [int] NULL,
	[solanmuon] [int] NULL,
	[maloai] [char](10) NULL,
	[nxb] [char](10) NULL,
	[tacgia] [nvarchar](50) NULL,
	[ngaynhap] [char](10) NULL,
 CONSTRAINT [pk_SACH] PRIMARY KEY CLUSTERED 
(
	[masach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SACH] ([masach], [nhande], [sotrang], [soluong], [namxb], [lanxb], [solanmuon], [maloai], [nxb], [tacgia], [ngaynhap]) VALUES (N'AA        ', N'LT MAng', 156, 20, N'2014      ', 2, 0, N'TLTK      ', N'DA        ', N'DA', N'03/06/2017')
INSERT [dbo].[SACH] ([masach], [nhande], [sotrang], [soluong], [namxb], [lanxb], [solanmuon], [maloai], [nxb], [tacgia], [ngaynhap]) VALUES (N'S001      ', N'Lập trình Windows', 150, 10, N'2014      ', 1, 0, N'GT        ', N'DHSPKTVL  ', N'Lê Thị Hoàng Yến', N'2017-05-10')
INSERT [dbo].[SACH] ([masach], [nhande], [sotrang], [soluong], [namxb], [lanxb], [solanmuon], [maloai], [nxb], [tacgia], [ngaynhap]) VALUES (N'S003      ', N'Cấu trúc máy tính', 158, 5, N'2014      ', 1, 0, N'GT        ', N'DA        ', N'Da', N'25/05/2017')
INSERT [dbo].[SACH] ([masach], [nhande], [sotrang], [soluong], [namxb], [lanxb], [solanmuon], [maloai], [nxb], [tacgia], [ngaynhap]) VALUES (N'S004      ', N'Conan 90', 156, 50, N'2016      ', 1, 0, N'TT        ', N'Kim Ð?ng  ', N'AAAAAA', N'03/06/2017')
INSERT [dbo].[SACH] ([masach], [nhande], [sotrang], [soluong], [namxb], [lanxb], [solanmuon], [maloai], [nxb], [tacgia], [ngaynhap]) VALUES (N'S006      ', N'Conan', 156, 15, N'2014      ', 1, 0, N'TT        ', N'KD        ', N'gegv', N'25/05/2017')
INSERT [dbo].[SACH] ([masach], [nhande], [sotrang], [soluong], [namxb], [lanxb], [solanmuon], [maloai], [nxb], [tacgia], [ngaynhap]) VALUES (N'S007      ', N'Conan 91', 156, 10, N'2017      ', 1, 1, N'TT        ', N'KD        ', N'Gosho', N'31/05/2017')
/****** Object:  Table [dbo].[PHIEUMUON]    Script Date: 06/27/2018 13:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUMUON](
	[madocgia] [char](10) NOT NULL,
	[ngaymuon] [date] NULL,
	[masach] [char](10) NULL,
	[manhanvien] [char](10) NULL,
	[soluong] [int] NULL,
	[trangthai] [nvarchar](50) NULL,
 CONSTRAINT [pk_PHIEUMUON] PRIMARY KEY CLUSTERED 
(
	[madocgia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [fk_DOCGIA]    Script Date: 06/27/2018 13:50:06 ******/
ALTER TABLE [dbo].[DOCGIA]  WITH CHECK ADD  CONSTRAINT [fk_DOCGIA] FOREIGN KEY([makhoa])
REFERENCES [dbo].[KHOA] ([makhoa])
GO
ALTER TABLE [dbo].[DOCGIA] CHECK CONSTRAINT [fk_DOCGIA]
GO
/****** Object:  ForeignKey [fk_SACH]    Script Date: 06/27/2018 13:50:06 ******/
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [fk_SACH] FOREIGN KEY([maloai])
REFERENCES [dbo].[PHANLOAI] ([maloai])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [fk_SACH]
GO
/****** Object:  ForeignKey [fk_PHIEUMUON1]    Script Date: 06/27/2018 13:50:06 ******/
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [fk_PHIEUMUON1] FOREIGN KEY([masach])
REFERENCES [dbo].[DOCGIA] ([madocgia])
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [fk_PHIEUMUON1]
GO
/****** Object:  ForeignKey [fk_PHIEUMUON2]    Script Date: 06/27/2018 13:50:06 ******/
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [fk_PHIEUMUON2] FOREIGN KEY([masach])
REFERENCES [dbo].[SACH] ([masach])
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [fk_PHIEUMUON2]
GO
/****** Object:  ForeignKey [fk_PHIEUMUON3]    Script Date: 06/27/2018 13:50:06 ******/
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [fk_PHIEUMUON3] FOREIGN KEY([manhanvien])
REFERENCES [dbo].[NHANVIEN] ([manhanvien])
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [fk_PHIEUMUON3]
GO
