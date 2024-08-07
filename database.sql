USE [webShare]
GO
/****** Object:  Table [dbo].[ChuongTrinhGiamGia]    Script Date: 24/07/2024 3:53:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuongTrinhGiamGia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenChuongTrinh] [nvarchar](255) NULL,
	[moTa] [nvarchar](255) NULL,
	[ngayBatDau] [date] NULL,
	[ngayKetThuc] [date] NULL,
	[idNhaCungCap] [int] NULL,
	[isDel] [bit] NULL,
 CONSTRAINT [PK__ChuongTr__3213E83F3B55B68A] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuongTrinhYeuThich]    Script Date: 24/07/2024 3:53:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuongTrinhYeuThich](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idNguoiDung] [int] NULL,
	[idChuongTrinhGiamGia] [int] NULL,
	[ngayThem] [date] NULL,
	[isDel] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 24/07/2024 3:53:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idNguoiDung] [int] NULL,
	[idChuongTrinhGiamGia] [int] NULL,
	[diemDanhGia] [int] NULL,
	[ngayDanhGia] [date] NULL,
	[isDel] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuTimKiem]    Script Date: 24/07/2024 3:53:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuTimKiem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idNguoiDung] [int] NULL,
	[tuKhoa] [varchar](255) NULL,
	[ngayTimKiem] [date] NULL,
	[isDel] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaGiamGia]    Script Date: 24/07/2024 3:53:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaGiamGia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](255) NULL,
	[phanTramGiamGia] [int] NULL,
	[ngayHetHan] [date] NULL,
	[idChuongTrinhGiamGia] [int] NULL,
	[isDel] [bit] NULL,
 CONSTRAINT [PK__MaGiamGi__3213E83FF612C890] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 24/07/2024 3:53:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](255) NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](255) NULL,
	[soDienThoai] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[matKhau] [nvarchar](255) NULL,
	[quyen] [nvarchar](255) NULL,
	[isDel] [bit] NULL,
 CONSTRAINT [PK__NguoiDun__3213E83F577F4010] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 24/07/2024 3:53:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenNhaCungCap] [nvarchar](255) NULL,
	[diaChi] [nvarchar](255) NULL,
	[soDienThoai] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[isDel] [bit] NULL,
	[idNguoiDung] [int] NULL,
 CONSTRAINT [PK__NhaCungC__3213E83F8BDC83DF] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 24/07/2024 3:53:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idNguoiDung] [int] NOT NULL,
	[idSanPham] [int] NULL,
	[ngayDatHang] [date] NOT NULL,
	[diaChiGiaoHang] [nvarchar](255) NOT NULL,
	[tongTien] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanHoi]    Script Date: 24/07/2024 3:53:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanHoi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idNguoiDung] [int] NULL,
	[idChuongTrinhGiamGia] [int] NULL,
	[noiDung] [nvarchar](255) NULL,
	[ngayPhanHoi] [date] NULL,
	[isDel] [bit] NULL,
 CONSTRAINT [PK__PhanHoi__3213E83F6AF67199] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 24/07/2024 3:53:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenSanPham] [nvarchar](255) NOT NULL,
	[gia] [decimal](18, 2) NOT NULL,
	[idNhaCungCap] [int] NOT NULL,
	[idMaGiamGia] [int] NULL,
	[isDel] [bit] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 24/07/2024 3:53:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[noiDung] [nvarchar](max) NULL,
	[ngayGui] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao_NguoiDung]    Script Date: 24/07/2024 3:53:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao_NguoiDung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idThongBao] [int] NULL,
	[idNguoiDung] [int] NULL,
	[trangThai] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBaoDaXem]    Script Date: 24/07/2024 3:53:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBaoDaXem](
	[idThongBao] [int] NOT NULL,
	[idNguoiDung] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idThongBao] ASC,
	[idNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChuongTrinhGiamGia] ON 

INSERT [dbo].[ChuongTrinhGiamGia] ([id], [tenChuongTrinh], [moTa], [ngayBatDau], [ngayKetThuc], [idNhaCungCap], [isDel]) VALUES (1, N'Giảm giá mùa hè', N'Chương trình giảm giá đặc biệt mùa hè', CAST(N'2024-06-01' AS Date), CAST(N'2024-08-31' AS Date), 1, 0)
INSERT [dbo].[ChuongTrinhGiamGia] ([id], [tenChuongTrinh], [moTa], [ngayBatDau], [ngayKetThuc], [idNhaCungCap], [isDel]) VALUES (2, N'Giảm giá mùa thu', N'Chương trình giảm giá đặc biệt mùa thu', CAST(N'2024-09-01' AS Date), CAST(N'2024-11-30' AS Date), 2, 0)
INSERT [dbo].[ChuongTrinhGiamGia] ([id], [tenChuongTrinh], [moTa], [ngayBatDau], [ngayKetThuc], [idNhaCungCap], [isDel]) VALUES (3, N'Giảm giá mùa đông', N'Chương trình giảm giá đặc biệt mùa đông', CAST(N'2024-12-01' AS Date), CAST(N'2024-12-31' AS Date), 3, 0)
INSERT [dbo].[ChuongTrinhGiamGia] ([id], [tenChuongTrinh], [moTa], [ngayBatDau], [ngayKetThuc], [idNhaCungCap], [isDel]) VALUES (7, N'CTN', N'123', CAST(N'2024-07-16' AS Date), CAST(N'2024-08-03' AS Date), 1, 0)
SET IDENTITY_INSERT [dbo].[ChuongTrinhGiamGia] OFF
GO
SET IDENTITY_INSERT [dbo].[ChuongTrinhYeuThich] ON 

INSERT [dbo].[ChuongTrinhYeuThich] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [ngayThem], [isDel]) VALUES (1, 4, 1, CAST(N'2024-07-01' AS Date), 1)
INSERT [dbo].[ChuongTrinhYeuThich] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [ngayThem], [isDel]) VALUES (2, 4, 2, CAST(N'2024-07-02' AS Date), 1)
INSERT [dbo].[ChuongTrinhYeuThich] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [ngayThem], [isDel]) VALUES (3, 4, 3, CAST(N'2024-07-03' AS Date), 1)
INSERT [dbo].[ChuongTrinhYeuThich] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [ngayThem], [isDel]) VALUES (4, 4, 1, CAST(N'2024-07-23' AS Date), 1)
INSERT [dbo].[ChuongTrinhYeuThich] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [ngayThem], [isDel]) VALUES (5, 4, 1, CAST(N'2024-07-23' AS Date), 1)
INSERT [dbo].[ChuongTrinhYeuThich] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [ngayThem], [isDel]) VALUES (6, 4, 1, CAST(N'2024-07-24' AS Date), 1)
INSERT [dbo].[ChuongTrinhYeuThich] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [ngayThem], [isDel]) VALUES (7, 4, 3, CAST(N'2024-07-24' AS Date), 1)
INSERT [dbo].[ChuongTrinhYeuThich] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [ngayThem], [isDel]) VALUES (8, 4, 3, CAST(N'2024-07-24' AS Date), 0)
SET IDENTITY_INSERT [dbo].[ChuongTrinhYeuThich] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhGia] ON 

INSERT [dbo].[DanhGia] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [diemDanhGia], [ngayDanhGia], [isDel]) VALUES (1, 4, 1, 5, CAST(N'2024-07-01' AS Date), 0)
INSERT [dbo].[DanhGia] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [diemDanhGia], [ngayDanhGia], [isDel]) VALUES (2, 4, 2, 4, CAST(N'2024-07-02' AS Date), 0)
INSERT [dbo].[DanhGia] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [diemDanhGia], [ngayDanhGia], [isDel]) VALUES (3, 4, 3, 3, CAST(N'2024-07-03' AS Date), 0)
INSERT [dbo].[DanhGia] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [diemDanhGia], [ngayDanhGia], [isDel]) VALUES (4, 4, 2, 1, CAST(N'2024-07-23' AS Date), 0)
INSERT [dbo].[DanhGia] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [diemDanhGia], [ngayDanhGia], [isDel]) VALUES (5, 4, 1, 5, CAST(N'2024-07-24' AS Date), 0)
SET IDENTITY_INSERT [dbo].[DanhGia] OFF
GO
SET IDENTITY_INSERT [dbo].[LichSuTimKiem] ON 

INSERT [dbo].[LichSuTimKiem] ([id], [idNguoiDung], [tuKhoa], [ngayTimKiem], [isDel]) VALUES (1, 4, N'gi?m giá mùa hè', CAST(N'2024-07-01' AS Date), 0)
INSERT [dbo].[LichSuTimKiem] ([id], [idNguoiDung], [tuKhoa], [ngayTimKiem], [isDel]) VALUES (2, 4, N'gi?m giá mùa thu', CAST(N'2024-07-02' AS Date), 0)
INSERT [dbo].[LichSuTimKiem] ([id], [idNguoiDung], [tuKhoa], [ngayTimKiem], [isDel]) VALUES (3, 4, N'gi?m giá mùa dông', CAST(N'2024-07-03' AS Date), 0)
SET IDENTITY_INSERT [dbo].[LichSuTimKiem] OFF
GO
SET IDENTITY_INSERT [dbo].[MaGiamGia] ON 

INSERT [dbo].[MaGiamGia] ([id], [ma], [phanTramGiamGia], [ngayHetHan], [idChuongTrinhGiamGia], [isDel]) VALUES (1, N'SUMMER2024', 10, CAST(N'2024-08-31' AS Date), 1, 0)
INSERT [dbo].[MaGiamGia] ([id], [ma], [phanTramGiamGia], [ngayHetHan], [idChuongTrinhGiamGia], [isDel]) VALUES (2, N'AUTUMN2024', 15, CAST(N'2024-11-30' AS Date), 2, 0)
INSERT [dbo].[MaGiamGia] ([id], [ma], [phanTramGiamGia], [ngayHetHan], [idChuongTrinhGiamGia], [isDel]) VALUES (3, N'WINTER2024', 20, CAST(N'2024-12-31' AS Date), 3, 0)
INSERT [dbo].[MaGiamGia] ([id], [ma], [phanTramGiamGia], [ngayHetHan], [idChuongTrinhGiamGia], [isDel]) VALUES (4, N'MGG moi', 20, CAST(N'2024-07-17' AS Date), 1, 0)
INSERT [dbo].[MaGiamGia] ([id], [ma], [phanTramGiamGia], [ngayHetHan], [idChuongTrinhGiamGia], [isDel]) VALUES (5, N'CTN', 30, CAST(N'2024-07-30' AS Date), 7, 0)
INSERT [dbo].[MaGiamGia] ([id], [ma], [phanTramGiamGia], [ngayHetHan], [idChuongTrinhGiamGia], [isDel]) VALUES (6, N'1', 1, CAST(N'2024-07-15' AS Date), 1, 1)
INSERT [dbo].[MaGiamGia] ([id], [ma], [phanTramGiamGia], [ngayHetHan], [idChuongTrinhGiamGia], [isDel]) VALUES (8, N'acaa', 11, CAST(N'2024-08-01' AS Date), 1, 0)
INSERT [dbo].[MaGiamGia] ([id], [ma], [phanTramGiamGia], [ngayHetHan], [idChuongTrinhGiamGia], [isDel]) VALUES (9, N'cscss', 11, CAST(N'2024-07-25' AS Date), 1, 0)
INSERT [dbo].[MaGiamGia] ([id], [ma], [phanTramGiamGia], [ngayHetHan], [idChuongTrinhGiamGia], [isDel]) VALUES (10, N'KM01', 100, CAST(N'2024-07-17' AS Date), 1, 0)
INSERT [dbo].[MaGiamGia] ([id], [ma], [phanTramGiamGia], [ngayHetHan], [idChuongTrinhGiamGia], [isDel]) VALUES (11, N'MGG01', 40, CAST(N'2024-07-31' AS Date), 7, 0)
SET IDENTITY_INSERT [dbo].[MaGiamGia] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([id], [hoTen], [ngaySinh], [diaChi], [soDienThoai], [email], [matKhau], [quyen], [isDel]) VALUES (1, N'Shopee', CAST(N'1980-01-01' AS Date), N'123 Đường A, Quận 1, TP HCM', N'0901234567', N'ncc1@gmail.com', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'nhacungcap', 0)
INSERT [dbo].[NguoiDung] ([id], [hoTen], [ngaySinh], [diaChi], [soDienThoai], [email], [matKhau], [quyen], [isDel]) VALUES (2, N'Tiki', CAST(N'1985-02-02' AS Date), N'456 Đường B, Quận 2, TP HCM', N'0902345678', N'ncc2@gmail.com', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'nhacungcap', 0)
INSERT [dbo].[NguoiDung] ([id], [hoTen], [ngaySinh], [diaChi], [soDienThoai], [email], [matKhau], [quyen], [isDel]) VALUES (3, N'Lazada', CAST(N'1990-03-03' AS Date), N'789 Đường C, Quận 3, TP HCM', N'0903456789', N'ncc3@gmail.com', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'nhacungcap', 0)
INSERT [dbo].[NguoiDung] ([id], [hoTen], [ngaySinh], [diaChi], [soDienThoai], [email], [matKhau], [quyen], [isDel]) VALUES (4, N'Khách hàng 1', CAST(N'1995-04-04' AS Date), N'123 Đường D, Quận 4, TP HCM', N'0904567890', N'kh@gmail.com', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'khachhang', 0)
INSERT [dbo].[NguoiDung] ([id], [hoTen], [ngaySinh], [diaChi], [soDienThoai], [email], [matKhau], [quyen], [isDel]) VALUES (5, N'Admin 1', CAST(N'1975-05-05' AS Date), N'123 Đường E, Quận 5, TP HCM', N'0905678901', N'admin@gmail.com', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'admin', 0)
INSERT [dbo].[NguoiDung] ([id], [hoTen], [ngaySinh], [diaChi], [soDienThoai], [email], [matKhau], [quyen], [isDel]) VALUES (15, N'ng', CAST(N'2024-07-28' AS Date), N'ng', N'3', N'hoahuit11@gmail.com', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'nhacungcap', 0)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([id], [tenNhaCungCap], [diaChi], [soDienThoai], [email], [isDel], [idNguoiDung]) VALUES (1, N'Shopee', N'123 Đường A, Quận 1, TP HCM', N'0901234567', N'nccA@example.com', 0, 1)
INSERT [dbo].[NhaCungCap] ([id], [tenNhaCungCap], [diaChi], [soDienThoai], [email], [isDel], [idNguoiDung]) VALUES (2, N'Tiki', N'456 Đường B, Quận 2, TP HCM', N'0902345678', N'nccB@example.com', 0, 2)
INSERT [dbo].[NhaCungCap] ([id], [tenNhaCungCap], [diaChi], [soDienThoai], [email], [isDel], [idNguoiDung]) VALUES (3, N'Lazada', N'789 Đường C, Quận 3, TP HCM', N'0903456789', N'nccC@example.com', 0, 3)
INSERT [dbo].[NhaCungCap] ([id], [tenNhaCungCap], [diaChi], [soDienThoai], [email], [isDel], [idNguoiDung]) VALUES (10, N'ng', N'ng', N'3', N'hoahuit11@gmail.com', 0, 15)
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [idNguoiDung], [idSanPham], [ngayDatHang], [diaChiGiaoHang], [tongTien]) VALUES (2, 4, 1, CAST(N'2024-07-23' AS Date), N'HCM', CAST(900000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([id], [idNguoiDung], [idSanPham], [ngayDatHang], [diaChiGiaoHang], [tongTien]) VALUES (3, 4, 1, CAST(N'2024-07-23' AS Date), N'HCM', CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([id], [idNguoiDung], [idSanPham], [ngayDatHang], [diaChiGiaoHang], [tongTien]) VALUES (4, 4, 1, CAST(N'2024-07-23' AS Date), N'H033', CAST(900000.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([id], [idNguoiDung], [idSanPham], [ngayDatHang], [diaChiGiaoHang], [tongTien]) VALUES (5, 4, 6, CAST(N'2024-07-23' AS Date), N'HN', CAST(988.79 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([id], [idNguoiDung], [idSanPham], [ngayDatHang], [diaChiGiaoHang], [tongTien]) VALUES (6, 4, 1, CAST(N'2024-07-24' AS Date), N'HCm', CAST(700000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanHoi] ON 

INSERT [dbo].[PhanHoi] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [noiDung], [ngayPhanHoi], [isDel]) VALUES (1, 4, 1, N'Chương trình rất tốt', CAST(N'2024-07-01' AS Date), 0)
INSERT [dbo].[PhanHoi] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [noiDung], [ngayPhanHoi], [isDel]) VALUES (2, 4, 2, N'Giảm giá hấp dẫn', CAST(N'2024-07-02' AS Date), 0)
INSERT [dbo].[PhanHoi] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [noiDung], [ngayPhanHoi], [isDel]) VALUES (3, 4, 3, N'Chất lượng dịch vụ tốt', CAST(N'2024-07-03' AS Date), 0)
INSERT [dbo].[PhanHoi] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [noiDung], [ngayPhanHoi], [isDel]) VALUES (4, 4, 2, N'ko ok lắm', CAST(N'2024-07-23' AS Date), 0)
INSERT [dbo].[PhanHoi] ([id], [idNguoiDung], [idChuongTrinhGiamGia], [noiDung], [ngayPhanHoi], [isDel]) VALUES (5, 4, 1, N'KM tốt', CAST(N'2024-07-24' AS Date), 0)
SET IDENTITY_INSERT [dbo].[PhanHoi] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([id], [tenSanPham], [gia], [idNhaCungCap], [idMaGiamGia], [isDel]) VALUES (1, N'Sản phẩm A', CAST(1000000.00 AS Decimal(18, 2)), 1, 1, 0)
INSERT [dbo].[SanPham] ([id], [tenSanPham], [gia], [idNhaCungCap], [idMaGiamGia], [isDel]) VALUES (2, N'Sản phẩm B', CAST(2000000.00 AS Decimal(18, 2)), 2, 2, 0)
INSERT [dbo].[SanPham] ([id], [tenSanPham], [gia], [idNhaCungCap], [idMaGiamGia], [isDel]) VALUES (3, N'Sản phẩm C', CAST(3000000.00 AS Decimal(18, 2)), 3, 3, 0)
INSERT [dbo].[SanPham] ([id], [tenSanPham], [gia], [idNhaCungCap], [idMaGiamGia], [isDel]) VALUES (4, N'ok', CAST(100.00 AS Decimal(18, 2)), 1, NULL, 0)
INSERT [dbo].[SanPham] ([id], [tenSanPham], [gia], [idNhaCungCap], [idMaGiamGia], [isDel]) VALUES (5, N'Cocacola', CAST(100.00 AS Decimal(18, 2)), 2, NULL, 0)
INSERT [dbo].[SanPham] ([id], [tenSanPham], [gia], [idNhaCungCap], [idMaGiamGia], [isDel]) VALUES (6, N'aaa', CAST(1111.00 AS Decimal(18, 2)), 1, NULL, 0)
INSERT [dbo].[SanPham] ([id], [tenSanPham], [gia], [idNhaCungCap], [idMaGiamGia], [isDel]) VALUES (7, N'Giày', CAST(100.00 AS Decimal(18, 2)), 1, NULL, 0)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongBao] ON 

INSERT [dbo].[ThongBao] ([id], [noiDung], [ngayGui]) VALUES (1, N'Thông báo 1', CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ThongBao] ([id], [noiDung], [ngayGui]) VALUES (2, N'Thông báo 2', CAST(N'2024-07-02' AS Date))
INSERT [dbo].[ThongBao] ([id], [noiDung], [ngayGui]) VALUES (3, N'Thông báo 3', CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ThongBao] ([id], [noiDung], [ngayGui]) VALUES (4, N'Giảm giá mùa hè - Mã giảm giá: 1 - Giảm giá: 1%', CAST(N'2024-07-23' AS Date))
INSERT [dbo].[ThongBao] ([id], [noiDung], [ngayGui]) VALUES (6, N'Nhà cung cấp đã tạo mã giảm giá mới: cscss, Giảm 11%.', CAST(N'2024-07-23' AS Date))
INSERT [dbo].[ThongBao] ([id], [noiDung], [ngayGui]) VALUES (7, N'Nhà cung cấp đã tạo mã giảm giá mới: KM01, Giảm 100%.', CAST(N'2024-07-23' AS Date))
INSERT [dbo].[ThongBao] ([id], [noiDung], [ngayGui]) VALUES (8, N'Nhà cung cấp đã tạo mã giảm giá mới: MGG01, Giảm 40%.', CAST(N'2024-07-24' AS Date))
SET IDENTITY_INSERT [dbo].[ThongBao] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongBao_NguoiDung] ON 

INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (1, 1, 4, N'chuaDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (2, 2, 4, N'daDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (3, 3, 4, N'daDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (4, 6, 5, N'chuaDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (5, 6, 4, N'daDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (6, 6, 1, N'chuaDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (7, 6, 2, N'chuaDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (8, 6, 3, N'chuaDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (9, 7, 5, N'chuaDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (10, 7, 4, N'daDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (11, 7, 1, N'chuaDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (12, 7, 2, N'chuaDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (13, 7, 3, N'chuaDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (14, 8, 5, N'chuaDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (15, 8, 4, N'chuaDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (16, 8, 1, N'chuaDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (17, 8, 2, N'chuaDoc')
INSERT [dbo].[ThongBao_NguoiDung] ([id], [idThongBao], [idNguoiDung], [trangThai]) VALUES (18, 8, 3, N'chuaDoc')
SET IDENTITY_INSERT [dbo].[ThongBao_NguoiDung] OFF
GO
INSERT [dbo].[ThongBaoDaXem] ([idThongBao], [idNguoiDung]) VALUES (2, 4)
INSERT [dbo].[ThongBaoDaXem] ([idThongBao], [idNguoiDung]) VALUES (3, 4)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__MaGiamGi__3213C8B6665626A9]    Script Date: 24/07/2024 3:53:27 CH ******/
ALTER TABLE [dbo].[MaGiamGia] ADD  CONSTRAINT [UQ__MaGiamGi__3213C8B6665626A9] UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NguoiDun__AB6E61647B0B9B8D]    Script Date: 24/07/2024 3:53:27 CH ******/
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [UQ__NguoiDun__AB6E61647B0B9B8D] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGia] ADD  CONSTRAINT [DF__ChuongTri__isDel__48CFD27E]  DEFAULT ((0)) FOR [isDel]
GO
ALTER TABLE [dbo].[ChuongTrinhYeuThich] ADD  DEFAULT ((0)) FOR [isDel]
GO
ALTER TABLE [dbo].[DanhGia] ADD  DEFAULT ((0)) FOR [isDel]
GO
ALTER TABLE [dbo].[LichSuTimKiem] ADD  DEFAULT ((0)) FOR [isDel]
GO
ALTER TABLE [dbo].[MaGiamGia] ADD  CONSTRAINT [DF__MaGiamGia__isDel__4CA06362]  DEFAULT ((0)) FOR [isDel]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [DF__NguoiDung__isDel__4D94879B]  DEFAULT ((0)) FOR [isDel]
GO
ALTER TABLE [dbo].[NhaCungCap] ADD  CONSTRAINT [DF__NhaCungCa__isDel__4E88ABD4]  DEFAULT ((0)) FOR [isDel]
GO
ALTER TABLE [dbo].[PhanHoi] ADD  CONSTRAINT [DF__PhanHoi__isDel__4F7CD00D]  DEFAULT ((0)) FOR [isDel]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [isDel]
GO
ALTER TABLE [dbo].[ThongBao_NguoiDung] ADD  DEFAULT ('chuaDoc') FOR [trangThai]
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGia]  WITH CHECK ADD  CONSTRAINT [FK__ChuongTri__idNha__5165187F] FOREIGN KEY([idNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([id])
GO
ALTER TABLE [dbo].[ChuongTrinhGiamGia] CHECK CONSTRAINT [FK__ChuongTri__idNha__5165187F]
GO
ALTER TABLE [dbo].[ChuongTrinhYeuThich]  WITH CHECK ADD  CONSTRAINT [FK__ChuongTri__idChu__52593CB8] FOREIGN KEY([idChuongTrinhGiamGia])
REFERENCES [dbo].[ChuongTrinhGiamGia] ([id])
GO
ALTER TABLE [dbo].[ChuongTrinhYeuThich] CHECK CONSTRAINT [FK__ChuongTri__idChu__52593CB8]
GO
ALTER TABLE [dbo].[ChuongTrinhYeuThich]  WITH CHECK ADD  CONSTRAINT [FK__ChuongTri__idNgu__534D60F1] FOREIGN KEY([idNguoiDung])
REFERENCES [dbo].[NguoiDung] ([id])
GO
ALTER TABLE [dbo].[ChuongTrinhYeuThich] CHECK CONSTRAINT [FK__ChuongTri__idNgu__534D60F1]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK__DanhGia__idChuon__5441852A] FOREIGN KEY([idChuongTrinhGiamGia])
REFERENCES [dbo].[ChuongTrinhGiamGia] ([id])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK__DanhGia__idChuon__5441852A]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK__DanhGia__idNguoi__5535A963] FOREIGN KEY([idNguoiDung])
REFERENCES [dbo].[NguoiDung] ([id])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK__DanhGia__idNguoi__5535A963]
GO
ALTER TABLE [dbo].[LichSuTimKiem]  WITH CHECK ADD  CONSTRAINT [FK__LichSuTim__idNgu__5629CD9C] FOREIGN KEY([idNguoiDung])
REFERENCES [dbo].[NguoiDung] ([id])
GO
ALTER TABLE [dbo].[LichSuTimKiem] CHECK CONSTRAINT [FK__LichSuTim__idNgu__5629CD9C]
GO
ALTER TABLE [dbo].[MaGiamGia]  WITH CHECK ADD  CONSTRAINT [FK__MaGiamGia__idChu__571DF1D5] FOREIGN KEY([idChuongTrinhGiamGia])
REFERENCES [dbo].[ChuongTrinhGiamGia] ([id])
GO
ALTER TABLE [dbo].[MaGiamGia] CHECK CONSTRAINT [FK__MaGiamGia__idChu__571DF1D5]
GO
ALTER TABLE [dbo].[NhaCungCap]  WITH CHECK ADD  CONSTRAINT [FK_NhaCungCap_NguoiDung] FOREIGN KEY([idNguoiDung])
REFERENCES [dbo].[NguoiDung] ([id])
GO
ALTER TABLE [dbo].[NhaCungCap] CHECK CONSTRAINT [FK_NhaCungCap_NguoiDung]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([idNguoiDung])
REFERENCES [dbo].[NguoiDung] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([idSanPham])
REFERENCES [dbo].[SanPham] ([id])
GO
ALTER TABLE [dbo].[PhanHoi]  WITH CHECK ADD  CONSTRAINT [FK__PhanHoi__idChuon__5812160E] FOREIGN KEY([idChuongTrinhGiamGia])
REFERENCES [dbo].[ChuongTrinhGiamGia] ([id])
GO
ALTER TABLE [dbo].[PhanHoi] CHECK CONSTRAINT [FK__PhanHoi__idChuon__5812160E]
GO
ALTER TABLE [dbo].[PhanHoi]  WITH CHECK ADD  CONSTRAINT [FK__PhanHoi__idNguoi__59063A47] FOREIGN KEY([idNguoiDung])
REFERENCES [dbo].[NguoiDung] ([id])
GO
ALTER TABLE [dbo].[PhanHoi] CHECK CONSTRAINT [FK__PhanHoi__idNguoi__59063A47]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_MaGiamGia] FOREIGN KEY([idMaGiamGia])
REFERENCES [dbo].[MaGiamGia] ([id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_MaGiamGia]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([idNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[ThongBao_NguoiDung]  WITH CHECK ADD FOREIGN KEY([idNguoiDung])
REFERENCES [dbo].[NguoiDung] ([id])
GO
ALTER TABLE [dbo].[ThongBao_NguoiDung]  WITH CHECK ADD FOREIGN KEY([idThongBao])
REFERENCES [dbo].[ThongBao] ([id])
GO
ALTER TABLE [dbo].[ThongBaoDaXem]  WITH CHECK ADD FOREIGN KEY([idNguoiDung])
REFERENCES [dbo].[NguoiDung] ([id])
GO
ALTER TABLE [dbo].[ThongBaoDaXem]  WITH CHECK ADD FOREIGN KEY([idThongBao])
REFERENCES [dbo].[ThongBao] ([id])
GO
