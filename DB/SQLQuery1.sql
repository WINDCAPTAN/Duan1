USE [master]
GO
/****** Object:  Database [DuAn1]    Script Date: 6/17/2024 1:59:43 PM ******/
CREATE DATABASE [DuAn1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DuAn1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DuAn1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DuAn1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DuAn1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DuAn1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DuAn1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DuAn1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DuAn1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DuAn1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DuAn1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DuAn1] SET ARITHABORT OFF 
GO
ALTER DATABASE [DuAn1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DuAn1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DuAn1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DuAn1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DuAn1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DuAn1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DuAn1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DuAn1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DuAn1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DuAn1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DuAn1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DuAn1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DuAn1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DuAn1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DuAn1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DuAn1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DuAn1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DuAn1] SET RECOVERY FULL 
GO
ALTER DATABASE [DuAn1] SET  MULTI_USER 
GO
ALTER DATABASE [DuAn1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DuAn1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DuAn1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DuAn1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DuAn1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DuAn1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DuAn1] SET QUERY_STORE = OFF
GO
USE [DuAn1]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 6/17/2024 1:59:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Ngaytao] [datetime] NOT NULL,
	[NgaySua] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChitietSP]    Script Date: 6/17/2024 1:59:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietSP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdNsx] [int] NULL,
	[IdMauSac] [int] NULL,
	[IdDMuc] [int] NULL,
	[IdKC] [int] NULL,
	[IdCL] [int] NULL,
	[IdTH] [int] NULL,
	[MoTa] [nvarchar](50) NULL,
	[SoLuongTon] [int] NULL,
	[GiaNhap] [decimal](20, 0) NULL,
	[GiaBan] [decimal](20, 0) NULL,
	[QrCode] [nvarchar](max) NULL,
	[IdSP] [int] NULL,
	[idkm] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucSP]    Script Date: 6/17/2024 1:59:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Ngaytao] [datetime] NOT NULL,
	[NgaySua] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/17/2024 1:59:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdKH] [int] NULL,
	[IdNV] [int] NULL,
	[Ma] [varchar](20) NULL,
	[NgayThanhToan] [date] NULL,
	[TinhTrang] [bit] NULL,
	[Ghichu] [varchar](255) NULL,
	[TongTien] [decimal](18, 0) NULL,
	[Ngaytao] [datetime] NOT NULL,
	[NgaySua] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 6/17/2024 1:59:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[IdHD] [int] NOT NULL,
	[IdCTSP] [int] NOT NULL,
	[Soluong] [int] NOT NULL,
	[Dongia] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHD] ASC,
	[IdCTSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/17/2024 1:59:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](30) NOT NULL,
	[Gioitinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[Email] [varchar](max) NOT NULL,
	[Sdt] [varchar](30) NULL,
	[Diemthuong] [int] NULL,
	[Ngaytao] [datetime] NOT NULL,
	[NgaySua] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 6/17/2024 1:59:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[HinhthucKM] [nvarchar](50) NOT NULL,
	[Giatrigiam] [decimal](18, 0) NULL,
	[Trangthai] [bit] NULL,
	[Ngaytao] [datetime] NOT NULL,
	[NgaySua] [datetime] NULL,
	[SOLUONG] [int] NULL,
	[MaCode] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KichCo]    Script Date: 6/17/2024 1:59:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KichCo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Ngaytao] [datetime] NOT NULL,
	[NgaySua] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 6/17/2024 1:59:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Ngaytao] [datetime] NOT NULL,
	[NgaySua] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSX]    Script Date: 6/17/2024 1:59:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSX](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Ngaytao] [datetime] NOT NULL,
	[NgaySua] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/17/2024 1:59:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[Ngaytao] [datetime] NOT NULL,
	[NgaySua] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 6/17/2024 1:59:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Ngaytao] [datetime] NOT NULL,
	[NgaySua] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/17/2024 1:59:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](30) NOT NULL,
	[NgaySinh] [date] NULL,
	[Gioitinh] [bit] NULL,
	[Sdt] [varchar](30) NULL,
	[IdCV] [int] NULL,
	[TaiKhoan] [varchar](max) NULL,
	[MatKhau] [varchar](max) NULL,
	[Email] [varchar](max) NOT NULL,
	[TrangThai] [bit] NULL,
	[Ngaytao] [datetime] NOT NULL,
	[NgaySua] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChatLieu] ON 
GO
INSERT [dbo].[ChatLieu] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (1, N'da', CAST(N'2024-05-10T19:27:07.083' AS DateTime), CAST(N'2024-05-10T19:27:07.083' AS DateTime))
GO
INSERT [dbo].[ChatLieu] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (2, N'vai', CAST(N'2024-05-10T19:27:13.520' AS DateTime), CAST(N'2024-05-10T19:27:13.520' AS DateTime))
GO
INSERT [dbo].[ChatLieu] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (3, N'cotton', CAST(N'2024-05-10T19:27:19.740' AS DateTime), CAST(N'2024-05-10T19:27:19.740' AS DateTime))
GO
INSERT [dbo].[ChatLieu] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (4, N'1', CAST(N'2024-05-27T20:36:39.557' AS DateTime), CAST(N'2024-05-27T20:36:39.557' AS DateTime))
GO
INSERT [dbo].[ChatLieu] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (5, N'3', CAST(N'2024-05-27T20:38:23.240' AS DateTime), CAST(N'2024-05-27T20:38:23.240' AS DateTime))
GO
INSERT [dbo].[ChatLieu] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (6, N'2', CAST(N'2024-06-15T16:31:14.640' AS DateTime), CAST(N'2024-06-15T16:31:14.640' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ChatLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[ChitietSP] ON 
GO
INSERT [dbo].[ChitietSP] ([Id], [IdNsx], [IdMauSac], [IdDMuc], [IdKC], [IdCL], [IdTH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [QrCode], [IdSP], [idkm]) VALUES (1, 1, 1, NULL, 1, 1, 4, NULL, 1, CAST(10000 AS Decimal(20, 0)), CAST(20000 AS Decimal(20, 0)), NULL, 1, NULL)
GO
INSERT [dbo].[ChitietSP] ([Id], [IdNsx], [IdMauSac], [IdDMuc], [IdKC], [IdCL], [IdTH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [QrCode], [IdSP], [idkm]) VALUES (2, 2, 2, NULL, 2, 2, 2, NULL, 0, CAST(10000 AS Decimal(20, 0)), CAST(20000 AS Decimal(20, 0)), NULL, 2, NULL)
GO
INSERT [dbo].[ChitietSP] ([Id], [IdNsx], [IdMauSac], [IdDMuc], [IdKC], [IdCL], [IdTH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [QrCode], [IdSP], [idkm]) VALUES (3, 3, 3, NULL, 3, 3, 3, NULL, 79, CAST(10000 AS Decimal(20, 0)), CAST(20000 AS Decimal(20, 0)), NULL, 3, NULL)
GO
INSERT [dbo].[ChitietSP] ([Id], [IdNsx], [IdMauSac], [IdDMuc], [IdKC], [IdCL], [IdTH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [QrCode], [IdSP], [idkm]) VALUES (4, 1, 1, NULL, 1, 1, 3, NULL, 82, CAST(10000 AS Decimal(20, 0)), CAST(20000 AS Decimal(20, 0)), NULL, 3, NULL)
GO
INSERT [dbo].[ChitietSP] ([Id], [IdNsx], [IdMauSac], [IdDMuc], [IdKC], [IdCL], [IdTH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [QrCode], [IdSP], [idkm]) VALUES (5, 3, 3, NULL, 4, 3, 4, NULL, 8, CAST(10000 AS Decimal(20, 0)), CAST(30000 AS Decimal(20, 0)), NULL, 1, NULL)
GO
INSERT [dbo].[ChitietSP] ([Id], [IdNsx], [IdMauSac], [IdDMuc], [IdKC], [IdCL], [IdTH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [QrCode], [IdSP], [idkm]) VALUES (6, 1, 4, NULL, 1, 1, 1, NULL, 8, CAST(100000 AS Decimal(20, 0)), CAST(200000 AS Decimal(20, 0)), NULL, 6, NULL)
GO
INSERT [dbo].[ChitietSP] ([Id], [IdNsx], [IdMauSac], [IdDMuc], [IdKC], [IdCL], [IdTH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [QrCode], [IdSP], [idkm]) VALUES (7, 2, 1, NULL, 2, 1, 1, NULL, 100, CAST(10000 AS Decimal(20, 0)), CAST(100000 AS Decimal(20, 0)), NULL, 3, NULL)
GO
INSERT [dbo].[ChitietSP] ([Id], [IdNsx], [IdMauSac], [IdDMuc], [IdKC], [IdCL], [IdTH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan], [QrCode], [IdSP], [idkm]) VALUES (8, 2, 1, NULL, 2, 1, 3, NULL, 100, CAST(10000 AS Decimal(20, 0)), CAST(100000 AS Decimal(20, 0)), NULL, 3, NULL)
GO
SET IDENTITY_INSERT [dbo].[ChitietSP] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (1, 1, 1, N'HD-489340', CAST(N'2024-05-23' AS Date), 1, NULL, CAST(40000 AS Decimal(18, 0)), CAST(N'2024-05-12T03:04:12.973' AS DateTime), CAST(N'2024-05-12T03:04:12.973' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (5, 1, 1, N'HD-447333', CAST(N'2024-06-01' AS Date), 1, NULL, CAST(40000 AS Decimal(18, 0)), CAST(N'2024-05-18T23:35:22.237' AS DateTime), CAST(N'2024-05-18T23:35:22.237' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (6, 1, 1, N'HD-136887', CAST(N'2024-06-01' AS Date), 1, NULL, CAST(120000 AS Decimal(18, 0)), CAST(N'2024-05-18T23:41:29.490' AS DateTime), CAST(N'2024-05-18T23:41:29.490' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (7, 1, 1, N'HD-911455', CAST(N'2024-05-23' AS Date), 1, NULL, CAST(80000 AS Decimal(18, 0)), CAST(N'2024-05-23T18:16:50.880' AS DateTime), CAST(N'2024-05-23T18:16:50.880' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (9, 7, 1, N'HD-916823', CAST(N'2024-06-14' AS Date), 1, NULL, CAST(170000 AS Decimal(18, 0)), CAST(N'2024-06-14T21:31:26.183' AS DateTime), CAST(N'2024-06-14T21:31:26.183' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (11, 1, 1, N'HD-790726', CAST(N'2024-06-14' AS Date), 1, NULL, CAST(20000 AS Decimal(18, 0)), CAST(N'2024-06-14T21:49:32.887' AS DateTime), CAST(N'2024-06-14T21:49:32.887' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (12, 1, 1, N'HD-387544', NULL, 0, NULL, CAST(160000 AS Decimal(18, 0)), CAST(N'2024-06-14T21:54:12.853' AS DateTime), CAST(N'2024-06-14T21:54:12.853' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (13, 8, 1, N'HD-303900', CAST(N'2024-06-15' AS Date), 1, NULL, CAST(396000 AS Decimal(18, 0)), CAST(N'2024-06-14T21:54:52.433' AS DateTime), CAST(N'2024-06-14T21:54:52.433' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (15, 9, 2, N'HD-540058', CAST(N'2024-06-15' AS Date), 1, NULL, CAST(230000 AS Decimal(18, 0)), CAST(N'2024-06-15T16:33:26.003' AS DateTime), CAST(N'2024-06-15T16:33:26.003' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (16, 1, 2, N'HD-239855', NULL, 0, NULL, NULL, CAST(N'2024-06-15T16:41:04.900' AS DateTime), CAST(N'2024-06-15T16:41:04.900' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (17, 1, 2, N'HD-328649', NULL, 0, NULL, NULL, CAST(N'2024-06-15T16:47:25.563' AS DateTime), CAST(N'2024-06-15T16:47:25.563' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (18, 1, 2, N'HD-650316', NULL, 0, NULL, NULL, CAST(N'2024-06-15T16:47:29.890' AS DateTime), CAST(N'2024-06-15T16:47:29.890' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (19, 1, 2, N'HD-584531', NULL, 0, NULL, NULL, CAST(N'2024-06-15T16:47:31.437' AS DateTime), CAST(N'2024-06-15T16:47:31.437' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (20, 1, 2, N'HD-577592', NULL, 0, NULL, NULL, CAST(N'2024-06-15T16:47:32.283' AS DateTime), CAST(N'2024-06-15T16:47:32.283' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (21, 1, 2, N'HD-479122', NULL, 0, NULL, NULL, CAST(N'2024-06-15T16:47:33.043' AS DateTime), CAST(N'2024-06-15T16:47:33.043' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (22, 1, 2, N'HD-487240', NULL, 0, NULL, NULL, CAST(N'2024-06-15T16:47:33.820' AS DateTime), CAST(N'2024-06-15T16:47:33.820' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (23, 1, 2, N'HD-635623', NULL, 0, NULL, NULL, CAST(N'2024-06-15T16:47:34.617' AS DateTime), CAST(N'2024-06-15T16:47:34.617' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (24, 1, 2, N'HD-306826', NULL, 0, NULL, NULL, CAST(N'2024-06-15T16:47:35.477' AS DateTime), CAST(N'2024-06-15T16:47:35.477' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayThanhToan], [TinhTrang], [Ghichu], [TongTien], [Ngaytao], [NgaySua]) VALUES (25, 1, 2, N'HD-948181', NULL, 0, NULL, NULL, CAST(N'2024-06-15T16:47:36.273' AS DateTime), CAST(N'2024-06-15T16:47:36.273' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (1, 3, 2, CAST(20000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (5, 2, 2, CAST(20000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (6, 3, 6, CAST(20000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (7, 1, 2, CAST(20000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (7, 3, 2, CAST(20000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (9, 1, 8, CAST(20000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (9, 3, 6, CAST(20000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (9, 5, 2, CAST(30000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (11, 4, 2, CAST(20000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (12, 2, 3, CAST(20000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (12, 3, 5, CAST(20000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (13, 4, 2, CAST(20000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (13, 6, 2, CAST(200000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (15, 1, 3, CAST(20000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (15, 2, 5, CAST(20000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHD], [IdCTSP], [Soluong], [Dongia]) VALUES (15, 4, 4, CAST(20000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 
GO
INSERT [dbo].[KhachHang] ([Id], [Ten], [Gioitinh], [NgaySinh], [Email], [Sdt], [Diemthuong], [Ngaytao], [NgaySua]) VALUES (1, N'Khách lẻ', 1, CAST(N'2024-05-08' AS Date), N'', N'0', NULL, CAST(N'2024-05-10T19:30:07.700' AS DateTime), CAST(N'2024-05-10T19:30:07.700' AS DateTime))
GO
INSERT [dbo].[KhachHang] ([Id], [Ten], [Gioitinh], [NgaySinh], [Email], [Sdt], [Diemthuong], [Ngaytao], [NgaySua]) VALUES (2, N'Dũng', 1, CAST(N'2004-12-20' AS Date), N'dung@123.com', N'0123654789', NULL, CAST(N'2024-05-10T19:30:39.587' AS DateTime), CAST(N'2024-05-10T19:30:39.587' AS DateTime))
GO
INSERT [dbo].[KhachHang] ([Id], [Ten], [Gioitinh], [NgaySinh], [Email], [Sdt], [Diemthuong], [Ngaytao], [NgaySua]) VALUES (3, N'Thịnh', 1, CAST(N'2004-01-15' AS Date), N'thinh@123.com', N'0123654788', NULL, CAST(N'2024-05-10T19:30:51.893' AS DateTime), CAST(N'2024-05-10T19:30:51.893' AS DateTime))
GO
INSERT [dbo].[KhachHang] ([Id], [Ten], [Gioitinh], [NgaySinh], [Email], [Sdt], [Diemthuong], [Ngaytao], [NgaySua]) VALUES (7, N'Phong', 1, CAST(N'2004-06-22' AS Date), N'phong@fpt.edu.vn', N'0369852147', NULL, CAST(N'2024-06-14T21:32:32.687' AS DateTime), CAST(N'2024-06-14T21:32:32.687' AS DateTime))
GO
INSERT [dbo].[KhachHang] ([Id], [Ten], [Gioitinh], [NgaySinh], [Email], [Sdt], [Diemthuong], [Ngaytao], [NgaySua]) VALUES (8, N'Dung', 1, CAST(N'2004-01-28' AS Date), N'dung@fpt.com', N'0321456985', NULL, CAST(N'2024-06-15T15:39:37.683' AS DateTime), CAST(N'2024-06-15T15:39:37.683' AS DateTime))
GO
INSERT [dbo].[KhachHang] ([Id], [Ten], [Gioitinh], [NgaySinh], [Email], [Sdt], [Diemthuong], [Ngaytao], [NgaySua]) VALUES (9, N'huyennk', 1, CAST(N'2025-12-12' AS Date), N'dfg@gmail.com', N'0988887234', NULL, CAST(N'2024-06-15T16:35:53.513' AS DateTime), CAST(N'2024-06-15T16:35:53.513' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] ON 
GO
INSERT [dbo].[KhuyenMai] ([Id], [Ten], [HinhthucKM], [Giatrigiam], [Trangthai], [Ngaytao], [NgaySua], [SOLUONG], [MaCode]) VALUES (1, N'Mùa hè đến', N'%', CAST(10 AS Decimal(18, 0)), 0, CAST(N'2024-05-10T19:29:20.190' AS DateTime), CAST(N'2024-05-10T19:29:20.190' AS DateTime), 7, N'KM363938')
GO
INSERT [dbo].[KhuyenMai] ([Id], [Ten], [HinhthucKM], [Giatrigiam], [Trangthai], [Ngaytao], [NgaySua], [SOLUONG], [MaCode]) VALUES (2, N'Chào hè', N'VND', CAST(10000 AS Decimal(18, 0)), 0, CAST(N'2024-05-10T19:29:40.227' AS DateTime), CAST(N'2024-05-10T19:29:40.227' AS DateTime), 19, N'KM114795')
GO
INSERT [dbo].[KhuyenMai] ([Id], [Ten], [HinhthucKM], [Giatrigiam], [Trangthai], [Ngaytao], [NgaySua], [SOLUONG], [MaCode]) VALUES (3, N'ABC', N'%', CAST(50 AS Decimal(18, 0)), 0, CAST(N'2024-06-14T21:30:11.290' AS DateTime), CAST(N'2024-06-14T21:30:11.290' AS DateTime), 18, N'KM232579')
GO
INSERT [dbo].[KhuyenMai] ([Id], [Ten], [HinhthucKM], [Giatrigiam], [Trangthai], [Ngaytao], [NgaySua], [SOLUONG], [MaCode]) VALUES (4, N'He vui', N'VND', CAST(1000000 AS Decimal(18, 0)), 0, CAST(N'2024-06-14T21:51:35.200' AS DateTime), CAST(N'2024-06-14T21:51:35.200' AS DateTime), 2, N'KM261056')
GO
INSERT [dbo].[KhuyenMai] ([Id], [Ten], [HinhthucKM], [Giatrigiam], [Trangthai], [Ngaytao], [NgaySua], [SOLUONG], [MaCode]) VALUES (5, N'lkhuyen mai 2', N'%', CAST(20 AS Decimal(18, 0)), 0, CAST(N'2024-06-15T16:33:12.397' AS DateTime), CAST(N'2024-06-15T16:33:12.397' AS DateTime), 100, N'KM248147')
GO
INSERT [dbo].[KhuyenMai] ([Id], [Ten], [HinhthucKM], [Giatrigiam], [Trangthai], [Ngaytao], [NgaySua], [SOLUONG], [MaCode]) VALUES (6, N'nhung', N'%', CAST(20 AS Decimal(18, 0)), 0, CAST(N'2024-06-15T16:46:46.723' AS DateTime), CAST(N'2024-06-15T16:46:46.723' AS DateTime), 50, N'KM474341')
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] OFF
GO
SET IDENTITY_INSERT [dbo].[KichCo] ON 
GO
INSERT [dbo].[KichCo] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (1, N'M', CAST(N'2024-05-10T19:27:23.287' AS DateTime), CAST(N'2024-05-10T19:27:23.287' AS DateTime))
GO
INSERT [dbo].[KichCo] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (2, N'L', CAST(N'2024-05-10T19:27:26.053' AS DateTime), CAST(N'2024-05-10T19:27:26.053' AS DateTime))
GO
INSERT [dbo].[KichCo] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (3, N'XL', CAST(N'2024-05-10T19:27:30.957' AS DateTime), CAST(N'2024-05-10T19:27:30.957' AS DateTime))
GO
INSERT [dbo].[KichCo] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (4, N'2XL', CAST(N'2024-05-10T19:27:35.167' AS DateTime), CAST(N'2024-05-10T19:27:35.167' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[KichCo] OFF
GO
SET IDENTITY_INSERT [dbo].[MauSac] ON 
GO
INSERT [dbo].[MauSac] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (1, N'Đen', CAST(N'2024-05-10T19:27:57.133' AS DateTime), CAST(N'2024-05-10T19:27:57.133' AS DateTime))
GO
INSERT [dbo].[MauSac] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (2, N'Trắng', CAST(N'2024-05-10T19:28:00.560' AS DateTime), CAST(N'2024-05-10T19:28:00.560' AS DateTime))
GO
INSERT [dbo].[MauSac] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (3, N'Đỏ', CAST(N'2024-05-10T19:28:03.950' AS DateTime), CAST(N'2024-05-10T19:28:03.950' AS DateTime))
GO
INSERT [dbo].[MauSac] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (4, N'Hồng', CAST(N'2024-06-14T21:28:12.750' AS DateTime), CAST(N'2024-06-14T21:28:12.750' AS DateTime))
GO
INSERT [dbo].[MauSac] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (5, N'Vàng', CAST(N'2024-06-15T16:31:36.743' AS DateTime), CAST(N'2024-06-15T16:31:36.743' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[MauSac] OFF
GO
SET IDENTITY_INSERT [dbo].[NSX] ON 
GO
INSERT [dbo].[NSX] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (1, N'Trung quốc', CAST(N'2024-05-10T19:28:12.007' AS DateTime), CAST(N'2024-05-10T19:28:12.007' AS DateTime))
GO
INSERT [dbo].[NSX] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (2, N'Việt Nam', CAST(N'2024-05-10T19:28:17.310' AS DateTime), CAST(N'2024-05-10T19:28:17.310' AS DateTime))
GO
INSERT [dbo].[NSX] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (3, N'Mỹ', CAST(N'2024-05-10T19:28:20.383' AS DateTime), CAST(N'2024-05-10T19:28:20.383' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[NSX] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 
GO
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [Ngaytao], [NgaySua]) VALUES (1, N'Ao 1', CAST(N'2024-05-10T19:26:40.130' AS DateTime), CAST(N'2024-06-14T21:27:42.500' AS DateTime))
GO
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [Ngaytao], [NgaySua]) VALUES (2, N'áo 2', CAST(N'2024-05-10T19:26:44.260' AS DateTime), CAST(N'2024-05-10T19:26:44.260' AS DateTime))
GO
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [Ngaytao], [NgaySua]) VALUES (3, N'áo 4', CAST(N'2024-05-10T19:26:47.500' AS DateTime), CAST(N'2024-06-13T18:14:47.827' AS DateTime))
GO
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [Ngaytao], [NgaySua]) VALUES (5, N'áo phông 1', CAST(N'2024-06-13T18:04:07.747' AS DateTime), CAST(N'2024-06-13T18:04:07.747' AS DateTime))
GO
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [Ngaytao], [NgaySua]) VALUES (6, N'ao 5 ', CAST(N'2024-06-14T21:27:01.633' AS DateTime), CAST(N'2024-06-14T21:27:11.943' AS DateTime))
GO
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [Ngaytao], [NgaySua]) VALUES (7, N'áo 5', CAST(N'2024-06-15T16:30:42.677' AS DateTime), CAST(N'2024-06-15T16:30:42.677' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ThuongHieu] ON 
GO
INSERT [dbo].[ThuongHieu] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (1, N'Dior', CAST(N'2024-05-10T19:27:42.350' AS DateTime), CAST(N'2024-05-10T19:27:42.350' AS DateTime))
GO
INSERT [dbo].[ThuongHieu] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (2, N'LV', CAST(N'2024-05-10T19:27:47.957' AS DateTime), CAST(N'2024-05-10T19:27:47.957' AS DateTime))
GO
INSERT [dbo].[ThuongHieu] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (3, N'LV', CAST(N'2024-05-10T19:27:53.163' AS DateTime), CAST(N'2024-05-10T19:27:53.163' AS DateTime))
GO
INSERT [dbo].[ThuongHieu] ([Id], [Ten], [Ngaytao], [NgaySua]) VALUES (4, N'AB', CAST(N'2024-05-27T20:36:46.260' AS DateTime), CAST(N'2024-05-27T20:36:46.260' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ThuongHieu] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [Ten], [NgaySinh], [Gioitinh], [Sdt], [IdCV], [TaiKhoan], [MatKhau], [Email], [TrangThai], [Ngaytao], [NgaySua]) VALUES (1, N'hung', CAST(N'2000-02-20' AS Date), 1, N'0369852147', 1, N'hung', N'1', N'hung@fpt.com', 0, CAST(N'2024-05-10T19:32:12.440' AS DateTime), CAST(N'2024-05-10T19:32:12.440' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [Ten], [NgaySinh], [Gioitinh], [Sdt], [IdCV], [TaiKhoan], [MatKhau], [Email], [TrangThai], [Ngaytao], [NgaySua]) VALUES (2, N'Phong', CAST(N'2004-06-22' AS Date), 1, N'0396753870', 1, N'phong', N'1', N'phong@fpt.edu.vn', 1, CAST(N'2024-06-14T21:38:01.567' AS DateTime), CAST(N'2024-06-14T21:38:01.567' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [Ten], [NgaySinh], [Gioitinh], [Sdt], [IdCV], [TaiKhoan], [MatKhau], [Email], [TrangThai], [Ngaytao], [NgaySua]) VALUES (3, N'Trung Anh', CAST(N'2004-03-17' AS Date), 1, N'0132654789', 1, N'ta', N'1', N'ta@fpt.edu.vn', 1, CAST(N'2024-06-15T15:36:44.640' AS DateTime), CAST(N'2024-06-15T15:36:44.640' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HoaDon__3214CC9E17609C10]    Script Date: 6/17/2024 1:59:43 PM ******/
ALTER TABLE [dbo].[HoaDon] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[ChitietSP] ADD  DEFAULT (NULL) FOR [MoTa]
GO
ALTER TABLE [dbo].[ChitietSP] ADD  DEFAULT ((0)) FOR [GiaNhap]
GO
ALTER TABLE [dbo].[ChitietSP] ADD  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[ChitietSP] ADD  DEFAULT (NULL) FOR [QrCode]
GO
ALTER TABLE [dbo].[DanhMucSP] ADD  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[DanhMucSP] ADD  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgayThanhToan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [Diemthuong]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  DEFAULT ((0)) FOR [Giatrigiam]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  DEFAULT ((0)) FOR [Trangthai]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[KhuyenMai] ADD  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[KichCo] ADD  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[KichCo] ADD  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[NSX] ADD  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[NSX] ADD  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[ThuongHieu] ADD  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[ThuongHieu] ADD  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [TaiKhoan]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [MatKhau]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [Ngaytao]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [NgaySua]
GO
ALTER TABLE [dbo].[ChitietSP]  WITH CHECK ADD FOREIGN KEY([IdCL])
REFERENCES [dbo].[ChatLieu] ([Id])
GO
ALTER TABLE [dbo].[ChitietSP]  WITH CHECK ADD FOREIGN KEY([IdDMuc])
REFERENCES [dbo].[DanhMucSP] ([Id])
GO
ALTER TABLE [dbo].[ChitietSP]  WITH CHECK ADD FOREIGN KEY([IdKC])
REFERENCES [dbo].[KichCo] ([Id])
GO
ALTER TABLE [dbo].[ChitietSP]  WITH CHECK ADD FOREIGN KEY([IdMauSac])
REFERENCES [dbo].[MauSac] ([Id])
GO
ALTER TABLE [dbo].[ChitietSP]  WITH CHECK ADD FOREIGN KEY([IdNsx])
REFERENCES [dbo].[NSX] ([Id])
GO
ALTER TABLE [dbo].[ChitietSP]  WITH CHECK ADD FOREIGN KEY([IdTH])
REFERENCES [dbo].[ThuongHieu] ([Id])
GO
ALTER TABLE [dbo].[ChitietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_KhuyenMai] FOREIGN KEY([idkm])
REFERENCES [dbo].[KhuyenMai] ([Id])
GO
ALTER TABLE [dbo].[ChitietSP] CHECK CONSTRAINT [FK_ChiTietSP_KhuyenMai]
GO
ALTER TABLE [dbo].[ChitietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_SanPham_IdSP] FOREIGN KEY([IdSP])
REFERENCES [dbo].[SanPham] ([ID])
GO
ALTER TABLE [dbo].[ChitietSP] CHECK CONSTRAINT [FK_ChiTietSP_SanPham_IdSP]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IdKH])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IdNV])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([IdCTSP])
REFERENCES [dbo].[ChitietSP] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([IdHD])
REFERENCES [dbo].[HoaDon] ([Id])
GO
USE [master]
GO
ALTER DATABASE [DuAn1] SET  READ_WRITE 
GO
