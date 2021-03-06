USE [master]
GO
/****** Object:  Database [BanTour]    Script Date: 10/07/2017 5:53:54 CH ******/
CREATE DATABASE [BanTour]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BanHang.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BanHang_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BanTour] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanTour].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanTour] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanTour] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanTour] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanTour] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanTour] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanTour] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BanTour] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BanTour] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanTour] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanTour] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanTour] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanTour] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanTour] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanTour] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanTour] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanTour] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BanTour] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanTour] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanTour] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanTour] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanTour] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanTour] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BanTour] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BanTour] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BanTour] SET  MULTI_USER 
GO
ALTER DATABASE [BanTour] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanTour] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BanTour] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BanTour] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BanTour]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 10/07/2017 5:53:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonHang](
	[IDDH] [int] IDENTITY(1,1) NOT NULL,
	[Gia] [varchar](50) NULL,
	[Email] [varchar](150) NULL,
	[HoTen] [nvarchar](150) NULL,
	[DienThoai] [varchar](12) NULL,
	[DiaChi] [nvarchar](300) NULL,
	[PhiVC] [varchar](50) NULL,
 CONSTRAINT [PK_DonHang_1] PRIMARY KEY CLUSTERED 
(
	[IDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 10/07/2017 5:53:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GioHang](
	[IDTour] [varchar](50) NOT NULL,
	[TenTour] [nvarchar](200) NULL,
	[NgayKH] [nvarchar](50) NULL,
	[ThoiGian] [nvarchar](50) NULL,
	[DiaDiem] [nvarchar](200) NULL,
	[Gia] [varchar](50) NULL,
	[URL] [varchar](200) NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[IDTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachSan]    Script Date: 10/07/2017 5:53:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachSan](
	[IDKhachsan] [varchar](10) NOT NULL,
	[TenKS] [nvarchar](50) NULL,
	[DanhGia] [varchar](10) NULL,
	[DiaDiem] [nvarchar](200) NULL,
	[MoTa] [ntext] NULL,
	[ChiTiet] [ntext] NULL,
	[Gia] [varchar](50) NULL,
	[URL] [varchar](200) NULL,
 CONSTRAINT [PK_KhachSan] PRIMARY KEY CLUSTERED 
(
	[IDKhachsan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 10/07/2017 5:53:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[idUser] [varchar](10) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Permission] [bit] NULL,
	[GioiTinh] [bit] NULL,
	[DienThoai] [varchar](20) NULL,
	[Email] [nchar](20) NULL,
	[HoTen] [nvarchar](200) NULL,
	[NgaySinh] [varchar](50) NULL,
	[URL] [nvarchar](50) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TourQT]    Script Date: 10/07/2017 5:53:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TourQT](
	[IDTour] [varchar](50) NOT NULL,
	[TenTour] [nvarchar](200) NULL,
	[NgayKH] [nvarchar](50) NULL,
	[ThoiGian] [nvarchar](50) NULL,
	[DiaDiem] [nvarchar](200) NULL,
	[Gia] [varchar](50) NULL,
	[MoTa] [nvarchar](300) NULL,
	[ChiTiet] [ntext] NULL,
	[urlQT] [nvarchar](200) NULL,
 CONSTRAINT [PK_TourQT_1] PRIMARY KEY CLUSTERED 
(
	[IDTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TourTN]    Script Date: 10/07/2017 5:53:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TourTN](
	[IDTour] [varchar](10) NOT NULL,
	[TenTour] [nvarchar](200) NULL,
	[NgayKH] [nvarchar](50) NULL,
	[ThoiGian] [nvarchar](50) NULL,
	[DiaDiem] [nvarchar](200) NULL,
	[Gia] [varchar](50) NULL,
	[MoTa] [nvarchar](300) NULL,
	[ChiTiet] [ntext] NULL,
	[urlTN] [nvarchar](200) NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[IDTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([IDDH], [Gia], [Email], [HoTen], [DienThoai], [DiaChi], [PhiVC]) VALUES (1, N'2.626.000', N'kienit238@gmail.com', N'Phạm Huỳnh Vũ Kiên', N'01688668503', N'Long An', NULL)
INSERT [dbo].[DonHang] ([IDDH], [Gia], [Email], [HoTen], [DienThoai], [DiaChi], [PhiVC]) VALUES (2, N'4.200.000', N'thi@gmail.com', N'Tây Thi', N'0168866xxxx', N'Trung Quốc', NULL)
INSERT [dbo].[DonHang] ([IDDH], [Gia], [Email], [HoTen], [DienThoai], [DiaChi], [PhiVC]) VALUES (3, N'8.900.000', N'phusai@gmail.com', N'Ngô Phù Sai', N'0168999222', N'Trung Quốc', NULL)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT1', N'Du Lịch Úc - Sydney - Canberra - Melbourne', N'Hàng ngày', N'7 ngày 6 đêm', N'Úc - Sydney - Canberra - Melbourne', N'62.150.000', N'Images/Trang chu/Quoc te/sydney.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT10', N'Hạ Long - Hà Nội - Đài Loan', N'Hàng ngày', N'5 ngày 4 đêm', N'Đài Loan', N'20.290.000', N'Images/Trang chu/Quoc te/img.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT11', N'Hạ Long - Thượng Hải - Hàng Châu - Vô Tích - Tô Châu - Bắc Kinh', N'Hàng ngày', N'7 ngày 6 đêm', N'Thượng Hải, Tô Châu, Hàng Châu, thủ đô Bắc Kinh', N'20.000.000', N'Images/Trang chu/Quoc te/du-lich-to-chau13.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT12', N'Tokyo - Núi Phú Sỹ - Kyoto - Osaka', N'Hàng ngày', N'7 ngày 6 đêm', N'Tokyo - Núi Phú Sỹ - Kyoto - Osaka', N'39.900.000', N'Images/Trang chu/Quoc te/nui-phu-sy.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT13', N'Hạ Long - Hà Nội - Seoul - Everland – Đảo Nami', N'Hàng ngày', N'5 ngày 4 đêm', N'Seoul, Everland, Hàn Quốc', N'13.900.000', N'Images/Trang chu/Quoc te/seoul.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT14', N'SEOUL – ĐẢO JEJU - NAMI', N'Hàng ngày', N'7 ngày 6 đêm', N'SEOUL – ĐẢO JEJU - NAMI', N'21.550.000', N'Images/Trang chu/Quoc te/jeju-korea.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT15', N'Hạ Long - Singapore - Malaysia', N'Hàng ngày', N'6 ngày 5 đêm', N'Singapore, Malaysia', N'22.500.000', N'Images/Trang chu/Quoc te/du-lich-singapore.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT16', N'Hạ Long - Pakxan - Viêng Chăn - Luông PhanDang - XiêngKhoang', N'Hàng ngày', N'6 ngày 5 đêm', N'Lào, Campuchia', N'10.200.000', N'Images/Trang chu/Quoc te/lao-1.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT17', N'Chương trình du lịch Malaysia', N'Hàng ngày', N'4 ngày 3 đêm', N'Kuala Lumpur', N'12.000.000', N'Images/Trang chu/Quoc te/malaysia1.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT18', N'Hạ Long - Hà Nội - BangKok - Pattaya', N'Hàng ngày', N'5 ngày 4 đêm', N'Bangkok, Pattaya', N'8.000.000', N'Images/Trang chu/Quoc te/thailan.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT19', N'Tour Hạ Long – Singapore – Malaysia', N'Hàng ngày', N'7 ngày 6 đêm', N'Singapore, Malaysia', N'15.790.000', N'Images/Trang chu/Quoc te/singapore.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT2', N'Du lịch bờ Đông Tây Hoa Kỳ', N'Hàng ngày', N'11 ngày 10 đêm', N'Đông Tây Hoa Kỳ', N'74.900.000', N'Images/Trang chu/Quoc te/uscapitoldome-0.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT20', N'Hạ Long - TP. Vinh - Lào', N'Hàng ngày', N'5 ngày 4 đêm', N'Viêng Chăn, Lào', N'4.800.000', N'Images/Trang chu/Quoc te/1446016785-du-lich-lao8.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT21', N'HÀ NỘI - BANGKOK - PATTAYA - HÀ NỘI', N'Hàng ngày', N'5 ngày 4 đêm', N'BANGKOK - PATTAYA, Thái Lan', N'6.500.000', N'Images/Trang chu/Quoc te/bangkok-grand-palace-4.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT3', N'Du lịch Pháp - Bỉ - Hà Lan - Đức', N'Hàng ngày', N'10 ngày 9 đêm', N'Pháp, Bỉ, Hà Lan, Đức', N'82.990.000', N'Images/Trang chu/Quoc te/eiffel-tower.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT4', N'Du lịch bờ Tây Hoa Kỳ', N'Hàng ngày', N'10 ngày 9 đêm', N'Hoa Kỳ', N'58.990.000', N'Images/Trang chu/Quoc te/las-vegas.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT5', N'Du lịch Pháp', N'Hàng ngày', N'6 ngày 5 đêm', N'Pháp', N'50.500.000', N'Images/Trang chu/Quoc te/072915-disneyland-paris-600.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT6', N'Du lịch Hồng Kông', N'Hàng ngày', N'4 ngày 3 đêm', N'Hồng Kông', N'13.990.000', N'Images/Trang chu/Quoc te/hk10.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT7', N'Hạ Long - Thượng Hải - Hàng Châu - Tô Châu', N'Hàng ngày', N'4 ngày 3 đêm', N'Thượng Hải, Hàng Châu, Tô Châu', N'12.500.000', N'Images/Trang chu/Quoc te/thuong-hai.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT8', N'Hạ Long – Hà Nội – Bắc Kinh – Thượng Hải', N'Hàng ngày', N'5 ngày 4 đêm', N'Bắc Kinh, Thượng Hải', N'16.000.000', N'Images/Trang chu/Quoc te/45-big.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'QT9', N'Hạ Long, Nam Ninh (Trung Quốc)', N'Hàng ngày', N'3 ngày 2 đêm', N'Nam Ninh Trung Quốc', N'2.680.000', N'Images/Trang chu/Quoc te/nam-ninh2.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN1', N'HẠ LONG – ĐẢO CÁT BÀ', N'Hàng ngày', N'2 ngày 1 đêm', N'HẠ LONG – ĐẢO CÁT BÀ', N'1.436.004', N'Images/Trang chu/Trong nuoc/du-lich-cat-ba.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN10', N'HẠ LONG – CÔNG VIÊN NƯỚC HỒ TÂY –AEON MALL Long Biên', N'Hàng ngày', N'01 ngày', N'CÔNG VIÊN NƯỚC HỒ TÂY –AEON MALL Long Biên', N'688.000', N'Images/Trang chu/Trong nuoc/aonmeo.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN11', N'Tour ghép Hạ Long - Tp.Hồ Chí Minh - Mũi Né', N'Hàng ngày', N'5 ngày 4 đêm', N'Sài Gòn, Mũi Né, Đại Nam', N'3.500.000', N'Images/Trang chu/Trong nuoc/cho-ben-thanh.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN12', N'Tour ghép đi tuần trăng mật Sapa', N'Hàng ngày', N'2 ngày 3 đêm', N'Sapa', N'2.500.000', N'Images/Trang chu/Trong nuoc/sapa-hillside.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN13', N'Tour tham quan Hạ Long - Sơn La - Điện Biên - Mộc Châu', N'Hàng ngày', N'4 ngày 3 đêm', N'Sơn La, Điện Biên, Mộc Châu', N'3.000.000', N'Images/Trang chu/Trong nuoc/du-lich-sapa-tu-tphcm-3ngay-ulyh-jpg.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN14', N'Tour ghép Hạ Long - Nha Trang - Đà Lạt', N'Hàng ngày', N'4 ngày 3 đêm', N'Nha Trang, Đà Lạt', N'3.500.000', N'Images/Trang chu/Trong nuoc/vinpearl-land-khu-vui-choi.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN15', N'Tour ghép Hạ Long - Đà Nẵng - Hội An', N'Hàng ngày', N'3 ngày 2 đêm', N'Đà Nẵng, Hội An', N'2.800.000', N'Images/Trang chu/Trong nuoc/17.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN16', N'Hạ Long - Sài Gòn - Mũi Né - Đại Nam', N'Hàng ngày', N'5 ngày 4 đêm', N'Sài Gòn, Mũi Né, khu du lịch Đại Nam', N'4.000.000', N'Images/Trang chu/Trong nuoc/4-grande.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN17', N'Hạ Long - Đồng Bằng Sông Cửu Long - Tp Hồ Chí Minh', N'Hàng ngày', N'5 ngày 4 đêm', N'Đồng Bằng Sông Cửu Long', N'3.000.000', N'Images/Trang chu/Trong nuoc/du-lich-mien-tay-5-600x450.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN18', N'Hạ Long – Tp.Hồ Chí Minh – Đảo Phú Quốc', N'Hàng ngày', N'4 ngày 3 đêm', N'Thành phố Hồ Chí Minh, đảo Phú Quốc', N'2.600.000', N'Images/Trang chu/Trong nuoc/du-lich-phu-quoc.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN19', N'Hạ Long - Tp.Hồ Chí Minh - Đà Lạt - Nha Trang', N'Hàng ngày', N'6 ngày 5 đêm', N'Tp. Hồ Chí Minh, Đà Lạt, Nha Trang', N'5.200.000', N'Images/Trang chu/Trong nuoc/cana.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN2', N'Hà Nội – Vân Đồn – Quan Lạn – Hạ Long', N'Hàng ngày', N'03 ngày/02 đêm', N'Hà Nội – Vân Đồn – Quan Lạn – Hạ Long', N'2.460.000', N'Images/Trang chu/Trong nuoc/du-lich-quan-lan.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN20', N'Hạ Long - Côn Đảo', N'Hàng ngày', N'4 ngày 3 đêm', N'Côn Đảo', N'2.400.000', N'Images/Trang chu/Trong nuoc/cn-con-dao-01.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN21', N'Hạ Long - Buôn Mê Thuột - Buôn Đôn - Thác Dray Nur', N'Hàng ngày', N'3 ngày 2 đêm', N'Tây Nguyên', N'2.000.000', N'Images/Trang chu/Trong nuoc/buon-ma-thuot-halongwave-01.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN22', N'Hạ Long - Hà Nội - Huế - Phong Nha - Nhật Lệ', N'Hàng ngày', N'4 ngày 5 đêm', N'Huế, Đà Nẵng', N'4.850.000', N'Images/Trang chu/Trong nuoc/19-big.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN23', N'Hạ Long - Huế - Đà Nẵng - Hội An', N'Hàng ngày', N'5 ngày 4 đêm', N'Cố đô Huế, Đà Nẵng, phố cổ Hội An', N'5.400.000', N'Images/Trang chu/Trong nuoc/17.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN24', N'Hạ Long - Nha Trang', N'Hàng ngày', N'4 ngày 3 đêm', N'Hạ Long, Nha Trang', N'7.900.000', N'Images/Trang chu/Trong nuoc/dulichkhanhhoa2.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN25', N'Hạ Long - Nha Trang- Đà Lạt', N'Hàng ngày', N'5 ngày 4 đêm', N'Hạ Long - Nha Trang- Đà Lạt', N'8.200.000', N'Images/Trang chu/Trong nuoc/langbiang2--1-.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN26', N'Hạ Long - Hà Nội - Đà Nẵng - Nha Trang - Đà Lạt', N'Hàng ngày', N'5 ngày 4 đêm', N'Đà Nẵng, Nha Trang, Đà Lạt', N'8.850.000', N'Images/Trang chu/Trong nuoc/45-dieu-khien-ban-yeu-dien-cuong-da-nang.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN27', N'Hạ Long - Yên Bái - Lào Cai - Điện Biên - Sơn La - Hạ Long', N'Hàng ngày', N'6 ngày', N'Yên Bái, Lào Cai, Sơn La', N'8.900.000', N'Images/Trang chu/Trong nuoc/mai-chau-7.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN28', N'Chương trinh Hoa Lư - Tam Cốc', N'Hàng ngày', N'1 ngày', N'Hoa Lư, Tam Cốc', N'550.000', N'Images/Trang chu/Trong nuoc/tours-530.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN29', N'Hà Nội - Hạ Long - Hà Nội (4 ngày 3 đêm đón sân bay)', N'Hàng ngày', N'4 ngày 3 đêm', N'Hoa Lư, Tam Cốc', N'550.000', N'Images/Trang chu/Trong nuoc/ab1.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN3', N'HẠ LONG - CÚC PHƯƠNG RESORT- RỪNG CÚC PHƯƠNG', N'Hàng ngày', N'02 ngày/01đêm', N'HẠ LONG - CÚC PHƯƠNG RESORT- RỪNG CÚC PHƯƠNG', N'1.398.000', N'Images/Trang chu/Trong nuoc/rung-quoc-phuong.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN30', N'Hạ Long - Yên Tử ', N'Hàng ngày', N'2 ngày 1 đêm', N'Hạ Long - Yên Tử', N'1.200.000', N'Images/Trang chu/Trong nuoc/bb7fdc11-dc4a-45bf-b915-c0afd63093a1.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN31', N'Hà Nội - Vịnh Hạ Long - Đảo Tuần Châu ', N'Hàng ngày', N'2 ngày 1 đêm', N'Vịnh Hạ Long, Đảo Tuần Châu', N'1.900.000', N'Images/Trang chu/Trong nuoc/du-lich-ha-long-124.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN32', N'Hạ Long - Hồ Chí Minh – Hà Nội', N'Hàng ngày', N'6 ngày 5 đêm', N'Hạ Long, Hà Nội, TP Hồ Chí Minh', N'9.400.000', N'Images/Trang chu/Trong nuoc/du-lich-ha-long-124.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN33', N'Quảng Ninh - Cửa Lò - Cửa Hội - Nghệ An', N'Hàng ngày', N'4 ngày 3 đêm', N'Cửa Lò, Quê Bác, Cửa Hội', N'3.450.000', N'Images/Trang chu/Trong nuoc/20120501-hapdancualo-bookin.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN34', N'Hạ Long - Tam Đảo', N'Hàng ngày', N'2 ngày 1 đêm', N'Tam đảo', N'1.450.000', N'Images/Trang chu/Trong nuoc/khu-du-lich-tam-dao.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN35', N'Du lịch tuần trăng mật Sapa', N'Hàng ngày', N'2 ngày 1 đêm', N'Sapa', N'2.450.000', N'Images/Trang chu/Trong nuoc/ham-rong-sapa.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN36', N'Du lịch Sơn La - Điện Biên - Lai Châu', N'Hàng ngày', N'5 ngày 4 đêm', N'Hòa Bình, Sơn La, Sapa', N'7.600.000', N'Images/Trang chu/Trong nuoc/1006052014033536.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN4', N'Hạ Long – Vân Đồn – Cô Tô - Hạ Long', N'Hàng ngày', N'02 ngày/01 đêm', N'Hạ Long – Vân Đồn – Cô Tô - Hạ Long', N'1.318.000', N'Images/Trang chu/Trong nuoc/tiec-nuong-coto.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN5', N'Làng Quê Yên Đức – Đền Chu Văn An – Công viên nước Hà Lan', N'Hàng ngày', N'01 ngày', N'Làng Quê Yên Đức – Đền CVA –CV nước Hà Lan', N'455.995', N'Images/Trang chu/Trong nuoc/du-lich-lang-que-yen-duc.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN6', N'HẠ LONG - HÀ NỘI - K9 ĐÁ CHÔNG – AO VUA', N'Hàng ngày', N'02 ngày 01 đêm', N'HÀ NỘI - K9 ĐÁ CHÔNG – AO VUA', N'1.196.000', N'Images/Trang chu/Trong nuoc/ao-vua.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN7', N'Hà Nội - Hạ Long - Tuần Châu – Hà Nội', N'Hàng ngày', N'3 ngày/02 đêm', N'Hà Nội - Hạ Long - Tuần Châu – Hà Nội', N'2.498.000', N'Images/Trang chu/Trong nuoc/cau-long-bien.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN8', N' HẠ LONG - LĂNG BÁC – VĂN MIẾU QUỐC TỬ', N'Hàng ngày', N'01 ngày', N'HẠ LONG - LĂNG BÁC – VĂN MIẾU QUỐC TỬ GIÁM', N'658.000', N'Images/Trang chu/Trong nuoc/van-mieu-quoc-tu-giam.jpg')
INSERT [dbo].[GioHang] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [URL]) VALUES (N'TN9', N'HẠ LONG - LÀNG GỐM BÁT TRÀNG - CÔNG VIÊN NƯỚC HỒ TÂ', N'Hàng ngày', N'02 ngày/01 đêm', N'LÀNG GỐM BÁT TRÀNG - CÔNG VIÊN NƯỚC HỒ TÂY', N'1.268.000', N'Images/Trang chu/Trong nuoc/lang-gom-bat-trang.jpg')
INSERT [dbo].[KhachSan] ([IDKhachsan], [TenKS], [DanhGia], [DiaDiem], [MoTa], [ChiTiet], [Gia], [URL]) VALUES (N'KS1', N'Fortuna Hotel Hanoi', N'5 sao', N'6B Láng Hạ, Quận Ba Đình, Hà Nội', N'Khách sạn làm hài lòng tất cả khách hàng là doanh nhân cũng như khách du lịch với tiêu chuẩn được mong đợi từ một khách sạn năm sao...', N'THÔNG TIN CHI TIẾT
Khách sạn làm hài lòng tất cả khách hàng là doanh nhân cũng như khách du lịch với tiêu chuẩn được mong đợi từ một khách sạn năm sao về sản phẩm và chất lượng dịch vụ quốc tế. Nằm trong khu kinh doanh sầm uất, Fortuna Hotel Hanoi có vị trí thuận tiện và là sự lựa chọn tuyệt vời cho các chuyến thăm của bạn đến Hà Nội. Với 350 phòng ngủ, 2 phòng tiệc lớn đa chức năng, 6 phòng họp, các lựa chọn ẩm thực phong phú, dịch vụ spa, y tế, phòng thể dục, hồ bơi, truyền hình cáp, phòng game. Fortuna Hotel Hanoi chắc chắn là một địa điểm hoàn hảo cho khách hàng doanh nhân và cả khách du lịch.', N'320.000', N'Images/Khach san/hanoi-fortuna-hotel.jpg')
INSERT [dbo].[KhachSan] ([IDKhachsan], [TenKS], [DanhGia], [DiaDiem], [MoTa], [ChiTiet], [Gia], [URL]) VALUES (N'KS2', N'Hanoi Pearl Hotel', N'5 sao', N'Số 6, Bảo Khánh, Hoàn Kiếm, Hà Nội', N'Khi đến thăm Hà Nội, bạn sẽ cảm thấy như đang ở nhà tại Hanoi Pearl Hotel, nơi có chất lượng tuyệt vời và dịch vụ chu đáo. Với...', N'Khi đến thăm Hà Nội, bạn sẽ cảm thấy như đang ở nhà tại Hanoi Pearl Hotel, nơi có chất lượng tuyệt vời và dịch vụ chu đáo. Với vị trí cách trung tâm thành phố 0.1 km và cách sân bay 25 km, khách sạn 3.5 sao này thu hút được rất nhiều du khách mỗi năm. Một số nơi cho bạn khám phá, Lăng Lê Thái Tổ, Nhà thờ chính tòa Hà Nội, Hồ Hoàn Kiếm là một trong những điểm du lịch thích hợp cho khách du lịch.

Tại Hanoi Pearl Hotel, dịch vụ hoàn hảo và thiết bị tối tân tạo nên một kì nghỉ khó quên. Vì sự thoải mái và tiện nghi của khách, khách sạn trang bị đầy đủ phục vụ ăn tại phòng, quán cà phê, Wi-Fi ở khu vực công cộng, dịch vụ du lịch, phòng gia đình.

Bước vào một trong 70 phòng khách, bạn như rũ bỏ một ngày dài căng thẳng với một loạt tiện nghi như tivi LCD/Plasma, vòi hoa sen, phòng có thể thông nhau, truyền hình cáp, bồn tắm tạo sóng. phòng thể dục của khách sạn là nơi lý tưởng để thư giãn và đổi gió sau một ngày bận rộn. Cơ sở vật chất tốt và vị trí hoàn hảo làm cho Hanoi Pearl Hotel trở thành nơi tuyệt vời để bạn tận hưởng kì nghỉ ở Hà Nội.', N'400.000', N'Images/Khach san/hanoi-pearl-hotel.jpg')
INSERT [dbo].[KhachSan] ([IDKhachsan], [TenKS], [DanhGia], [DiaDiem], [MoTa], [ChiTiet], [Gia], [URL]) VALUES (N'KS3', N'Sheraton Hanoi Hotel', N'5 sao', N'K5, Nghi Tam, Đường Xuân Diệu, Quận Tây Hồ, Hà Nội', N'Khi đến thăm Hà Nội, bạn sẽ cảm thấy như đang ở nhà tại Sheraton Hanoi Hotel, nơi có chất lượng tuyệt vời và dịch vụ chu đáo. Tọa...', N'Khi đến thăm Hà Nội, bạn sẽ cảm thấy như đang ở nhà tại Sheraton Hanoi Hotel, nơi có chất lượng tuyệt vời và dịch vụ chu đáo. Tọa lạc ở vị trí chỉ cách trung tâm thành phố 5km, khách hàng sẽ có được chỗ ở tốt để tận hưởng các điểm thú vị và hoạt động nổi tiếng ở đây. Mang dáng vẻ gần gũi và gần với Ho Tay, Phủ Tây Hồ, Chua Tran Quoc làm cho khách sạn này có một vẻ đẹp quyến rũ đặc biệt.

Sheraton Hanoi Hotel mang lại dịch vụ hoàn hảo, làm hài lòng cả những vị khách khó tính nhất với những tiện nghi sang trọng tuyệt vời. Những tính năng hàng đầu của khách sạn bao gồm tiện nghi cho người khuyết tật, đưa đón khách sạn/sân bay, dịch vụ phòng 24 giờ, tầng cao cấp, dịch vụ giặt là.

Thêm vào đó, tất cả những phòng khách đều được đặc biệt trang bị những tiện nghi như bồn tắm, góc ngồi nghỉ, két sắt, két an toàn cho Laptop, nước đóng chai miễn phí để làm hài lòng những vị khách khó tính nhất. Cho dù bạn là người thích vui vẻ hay chỉ là khách muốn thư giãn sau một ngày làm việc bận rộn, bạn sẽ thấy thoải mái khi sử dung các tiện nghi giải trí như tắm hơi, bể bơi ngoài trời, sân tennis, spa, phòng thể dục. Khi bạn tìm kiếm chỗ tạm trú thoải mái và tiện nghi ở Hà Nội, hãy bắt đầu cuộc hành trình đến Sheraton Hanoi Hotel.', N'360.000', N'Images/Khach san/sheraton.jpg')
INSERT [dbo].[KhachSan] ([IDKhachsan], [TenKS], [DanhGia], [DiaDiem], [MoTa], [ChiTiet], [Gia], [URL]) VALUES (N'KS4', N'Grand Plaza Hanoi Hotel', N'5 sao', N'117 Trần Duy Hưng, Quận Cầu Giấy, Hà Nội', N'Nằm ở vị trí thuận lợi thuộc Hà Nội, Grand Plaza Hanoi Hotel là một nơi nghỉ chân tuyệt vời để tiếp tục khám phá thành phố sôi động....
ĐẶT TOUR', N'THÔNG TIN CHI TIẾT
Nằm ở vị trí thuận lợi thuộc Hà Nội, Grand Plaza Hanoi Hotel là một nơi nghỉ chân tuyệt vời để tiếp tục khám phá thành phố sôi động. Khách sạn nằm cách trung tâm thành phố 7 km và dễ dàng tiếp cận các địa điểm khác trong thành phố . Một điểm không kém phần đặc biệt là vị trí khách sạn dễ dàng tiệp cận vô số địa điểm thú vị như Trung tâm Hội nghị Quốc gia Việt Nam, Chua Lang, Cầu Giấy.

Grand Plaza Hanoi Hotel mang lại dịch vụ hoàn hảo, làm hài lòng cả những vị khách khó tính nhất với những tiện nghi sang trọng tuyệt vời. Nói đến một số thiết bị trong khách sạn, có dịch vụ trông xe, nhà hàng, thiết bị phòng họp, tầng cao cấp, dịch vụ giặt là/giặt khô.

Khách có thể chọn 618 phòng có không khí yên bình và tuyệt vời. Cho dù bạn là người thích vui vẻ hay chỉ là khách muốn thư giãn sau một ngày làm việc bận rộn, bạn sẽ thấy thoải mái khi sử dung các tiện nghi giải trí như bể bơi trong nhà, tắm hơi, mát xa, spa, phòng tắm hơi. Dù bạn đến để thư giãn hay làm gì, Grand Plaza Hanoi Hotel luôn là sự lựa chọn hoàn hảo cho kì nghỉ của bạn ở Hà Nội.', N'420.000', N'Images/Khach san/grandplaza.jpg')
INSERT [dbo].[KhachSan] ([IDKhachsan], [TenKS], [DanhGia], [DiaDiem], [MoTa], [ChiTiet], [Gia], [URL]) VALUES (N'KS5', N'Hanoi Daewoo Hotel', N'5 sao', N'Số 360, Phố Kim Mã, Quận Ba Đình, Hà Nội', N'Khách sạn đẳng cấp này, nằm trên đường Kim Mã, cách sân bay quốc tế 40km. Du khách sẽ dễ dàng đi tham quan vô số các di tích...
ĐẶT TOUR', N'Khách sạn đẳng cấp này, nằm trên đường Kim Mã, cách sân bay quốc tế 40km. Du khách sẽ dễ dàng đi tham quan vô số các di tích lịch sử, văn hóa và du lịch hấp dẫn từ đây. Khách sạn cũng nằm trong khoảng cách đi bộ của nhà hàng, chợ, và khu công viên cũng như thành các triều đại xưa. Phòng khách sạn hiện đại mang phong cách phương Đông và cảm giác xác thực. Tại nhà hàng Cafe Promenade, bạn sẽ được phục vụ các món ăn địa phương và quốc tế trong một bầu không khí thoải mái. Hanoi Daewoo Hotel là hoàn hảo cho du khách muốn đặt một chỗ ở tại Hà Nội.', N'260.000', N'Images/Khach san/Daewoo.jpg')
INSERT [dbo].[KhachSan] ([IDKhachsan], [TenKS], [DanhGia], [DiaDiem], [MoTa], [ChiTiet], [Gia], [URL]) VALUES (N'KS6', N'Khách sạn Công Đoàn Hạ Long', N'3 sao', N'Đường Hạ Long, Bãi Cháy, Hạ Long', N'Khách sạn Công Đoàn Hạ Long trực thuộc công ty du lịch công đoàn Việt Nam trực thuộc Tổng Liên Đoàn Lao Động Việt Nam. Khách sạn được trang...', N'Khách sạn Công Đoàn Hạ Long trực thuộc công ty du lịch công đoàn Việt Nam trực thuộc Tổng Liên Đoàn Lao Động Việt Nam. Khách sạn được trang bị 60 phòng tiêu chuẩn chất lượng cao với nhà hàng, phòng họp phục vụ nhu cầu hội họp và các bữa tiệc sang trọng của quý khách', N'250.000', N'Images/Khach san/khach-san-cong-doan-ha-long.jpg')
INSERT [dbo].[KhachSan] ([IDKhachsan], [TenKS], [DanhGia], [DiaDiem], [MoTa], [ChiTiet], [Gia], [URL]) VALUES (N'KS7', N'Khách sạn BMC - Thăng Long', N'3 sao', N'Đường Hạ Long, P.Bãi Cháy, TP.Hạ Long
', N'', N'', N'600.000', N'Images/Khach san/bmc.jpg')
INSERT [dbo].[KhachSan] ([IDKhachsan], [TenKS], [DanhGia], [DiaDiem], [MoTa], [ChiTiet], [Gia], [URL]) VALUES (N'KS8', N'Khách sạn Novotel Hạ Long', N'4 sao', N'Đường Hạ Long, Phường Bãi Cháy, Hạ Long', N'Khách sạn Novotel Hạ Long Là một trong những khách sạn đẹp và sang trọng nhất tại Hạ Long. Khách sạn Novotel Ha Long được thiết kế sang...', N'Khách sạn Novotel Hạ Long

Là một trong những khách sạn đẹp và sang trọng nhất tại Hạ Long. Khách sạn Novotel Ha Long được thiết kế sang trọng, hiện đại pha lẫn nét Á Đông truyền thống. Khách sạn có 214 phòng khách rộng rãi, hầu hết có ban công hướng biển, nơi quý khách có thể thả mình ngắm nhìn cảnh biển lúc bình minh hay khi hoàng hôn buông xuống.

Vị trí:

Tọa lạc tại trung tâm khu du lịch Bãi Cháy, nhìn ra Vịnh Hạ Long. Cách Hà Nội (sân bay Nội Bài) 165 km (3 giờ đi taxi) .Đối diện Công viên Hoàng Gia ,Cách bến tàu du lịch Hạ Long 1km ,Cách nhà hát múa rối nước và biểu diễn ca múa nhạc dân tộc 100m', N'900.000', N'Images/Khach san/novotel.jpg')
INSERT [dbo].[NguoiDung] ([idUser], [Username], [Password], [Permission], [GioiTinh], [DienThoai], [Email], [HoTen], [NgaySinh], [URL]) VALUES (N'U1', N'admin', N'admin', 1, 1, NULL, N'admin@gmail.com     ', N'Ngô Phù Sai', NULL, N'Images/Avatar/av1.jpg')
INSERT [dbo].[NguoiDung] ([idUser], [Username], [Password], [Permission], [GioiTinh], [DienThoai], [Email], [HoTen], [NgaySinh], [URL]) VALUES (N'U2', N'Thi', N'password', 0, 0, N'0168xxxxxx', N'taythi@gmail.com    ', N'Tây Thi', N'1994-03-02', N'Images/Avatar/av4.jpg')
INSERT [dbo].[NguoiDung] ([idUser], [Username], [Password], [Permission], [GioiTinh], [DienThoai], [Email], [HoTen], [NgaySinh], [URL]) VALUES (N'U3', N'Kiên', N'123456', 0, 1, NULL, N'phvkien238@gmail.com', N'Phạm Huỳnh Vũ Kiên', N'1993-08-23', N'Images/Avatar/av3.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT1', N'Du Lịch Úc - Sydney - Canberra - Melbourne', N'Hàng ngày', N'7 ngày 6 đêm', N'Úc - Sydney - Canberra - Melbourne', N'62.150.000', N'Ngày 1: Hạ Long - Hà Nội - Sydney (nghỉ đêm trên máy bay) Chiều:11h00 Xe và Hướng dẫn viên của Công ty Cổ Phần Du...', N'Ngày 1: Hạ Long - Hà Nội - Sydney (nghỉ đêm trên máy bay)

Chiều:11h00 Xe và Hướng dẫn viên của Công ty Cổ Phần Du Lịch Quốc Tế Asian đón Quý khách tại điểm hẹn và đưa ra sân bay Nội Bài làm thủ tục cho Quý khách đáp chuyến bay VN 783 khởi hành đi Sydney (Transit tại TP.Hồ Chí Minh) Đoàn nghỉ đêm trên máy bay.

Ngày 2: Sydney (ăn sáng,trưa, tối)

Sáng: 09h20 Đoàn tới Sydney, xe đón đoàn về thành phố tham quan những cảnh đẹp như:  nhà hát Sydney Opera – biểu tượng của Sydney, cầu cảng Sydney, khu The Rocks – Mũi đá lịch sử và ngắm nhìn toàn cảnh thành phố. Quý khách thăm công viên thủy cung – Sydney Aquarium. Ăn trưa.

Chiều: Đoàn tham quan Sydney tower… và tự do tham quan, mua sắm. Ăn tối tại nhà hàng. Nghỉ đêm tại Sydney (Metro Hotel Sydney Central hoặc tương đương). hoặc Quý khách có thể tham quan và thử vận may tại Casino Star City.

Ngày 3: Sydney – Blue Mountain – Sydney (ăn sáng, trưa, tối)

Sáng: sau bữa sáng, Quý khách khởi hành đi tham quan vườn thú hoang dã Featherdale Wildlife Park – nơi bảo tồn những loại động vật quý hiếm của Australia. Quý khách có thể ngắm nhìn cậnh cảnh những chú Kangaroos, đà điểu sa mạc úc, gấu Túi Koala… Ăn trưa.

Chiều: đoàn tham quan khu bảo tồn thiên nhiên Blue Mountain – Di sản thế giới, nơi còn lưu giữ nguyên vẹn những nét hoang sơ từ thời thổ dân sinh sống. Tự do chụp hình núi Ba chị em (Three sisters). Xe đón đoàn trở về Sydney. Trên đường, đoàn dừng chân chụp ảnh khu liên hợp thể thao Olympic Sydney 2000. Ăn tối tại nhà hàng. Nghỉ đêm tại Sydney (Metro Hotel Sydney Central hoặc tương đương).

Ngày 4: Sydney – Canberra – Melbourne (ăn sáng, trưa, tối)

Sáng: sau bữa sáng tại khách sạn, xe đón quý khách khởi hành đi Canberra – thủ đô của Australia (400km – 4 tiếng đi ô tô). Sau bữa trưa, quý khách thăm những thắng cảnh đẹp của thủ đô như: New Parliament house – Nhà Quốc hội mới tọa lạc bên hồ Burley Griffin tuyệt đẹp, tháp phun nước Captain Cook, khu đặt trụ sở sứ quán các nước, Bảo tàng Chiến tranh… Xe đưa quý khách ra sân bay khởi hành đi Melbourne.

Chiều: xe đón đoàn về trung tâm thành phố Melbourne. Đoàn ăn tối và nhận phòng khách sạn nghỉ ngơi. Buổi tối: đoàn tự do mua sắm và tham quan thành phố. Nghỉ đêm tại Melbourne (khách sạn Mercue Hotel Welcome Melbourne hoặc tương đương). Hoặc quý khách có thể tham quan và thử vận may tại Casino lớn nhất Bán Cầu Nam – Crown Casino.

Ngày 5: Melbourne – Ballarat – Melbourne (ăn sáng, trưa, tối)

Sáng: sau bữa sáng, Quý khách khởi hành đi thăm thị trấn Ballarat. Quý khách tìm hiểu về nơi đã khám phá ra mỏ vàng năm 1851 qua sự tái hiện cảnh đào vàng trong thế kỷ 19. Ăn trưa tại nhà hàng. Khởi hành về Melbourne.

Chiều:  Quý khách tham quan thành phố: khu vực trung tâm kinh doanh và thương mại, Queen Victoria market, trung tâm tài chính trên đường Collins Street, Parliament House Victoria, trung tâm mỹ thuật Victoria Arts Centre, quảng trường liên bang Federation Square, vườn thực vật Botanic garden, khu người Việt sinh sống Footscray (nếu còn thời gian). Ăn tối và nghỉ đêm tại Melbourne.

Ngày 6: Melbourne - Đỉnh Dandenong – Đảo Philip (ăn sáng, trưa, tối)

Sáng: sau bữa sáng, Quý khách khởi hành đi thăm quan đỉnh Dandenong, trải nghiệm phong cảnh tuyệt đẹp trên tàu lửa hơi nước thế kỷ 19. Ăn trưa tại nhà hàng

Chiều: Khởi hành đi đảo Philip, sau bữa tối Quý khách tận mắt chiêm ngưỡng từng đàn chim cánh cụt nơi hòn đảo xinh đẹp tại cực Nam của nước Uc. Trở về Melbourne, nghỉ đêm tại khách sạn.

Ngày 7: Melbourne – Hà Nội (ăn sáng, trưa,tối trên máy bay)

Sáng: Ăn sáng tại khách sạn.Xe đưa Quý khách ra sân bay Melbourne làm thủ tục đáp chuyến bay VN 780 về Hà Nội lúc 11h25.

20:00 về đến Hà Nội, xe đón Quý khách về điểm hẹn ban đầu tại thành phố Hạ Long, kết thúc chương trình.', N'Images/Trang chu/Quoc te/sydney.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT10', N'Hạ Long - Hà Nội - Đài Loan', N'Hàng ngày', N'5 ngày 4 đêm', N'Đài Loan', N'20.290.000', N'Ngày thứ nhất: Hạ Long – Hà Nội – Đài Bắc Mua sắm tại Ximending Buổi sáng xe và hướng dẫn...', N'Ngày thứ nhất: Hạ Long – Hà Nội – Đài Bắc



Mua sắm tại Ximending


Buổi sáng xe và hướng dẫn viên của công ty Asian Travel sẽ đón du khách tại điểm hẹn để đưa đến sân bay quốc tế Nội Bài. Sau khi làm thủ tục xuất cảnh, mất khoảng 3 tiếng bay trên bầu trời, du khách sẽ đến sân bay Đài Loan. Làm thủ tục nhập cảnh xong, xe và hướng dẫn viên của công ty du lịch Đài Loan sẽ đón đoàn tại sân bay và đưa du khách thẳng đến điểm tham quan XIMENDING. Đây được xem là một thiên đường giành cho giới trẻ Đài Loan. Nơi đây tập trung các cửa hàng thời trang, điện ảnh, ăn uống, các buổi biểu diễn giao lưu của các thần tượng ca nhạc, điện ảnh…và không thiếu một dịch vụ nào dành cho các nam thanh nữ tú. Nơi đây luôn náo nhiệt và sôi động hơn vào mỗi dịp cuối tuần, đến nơi đây du khách sẽ thấy mình như trẻ lại hoặc có thể hiểu thêm về xu hướng của các bạn trẻ ngày nay. Du khách không nên bỏ lỡ cơ hội thưởng thức các món ăn tại nơi đây. Tối ngủ tại khách sạn 4 sao Lệ Hồ ( City Lake hotel ) ở thành phố Đài Bắc hoặc các khách sạn khác cùng đẳng cấp.

Ngày thứ hai: Đài Bắc – Đài Trung

Sau khi ăn sáng tại khách sạn, xe và hướng dẫn viên địa phương sẽ đưa các bạn đến tham quan Nhật Nguyệt Đàm gồm 1 hồ lớn và 1 hồ nhỏ liền nhau, là hồ nước thiên nhiên lớn nhất Đài Loan , từng là điểm nghĩ dưỡng ưng ý nhất của Tưởng Giới Thạch. Sau khi du ngoạn ngắm cảnh hồ bằng thuyền, du khách lên bờ và tiếp tục hành trình đi tham quan đền Văn Võ nằm ngay xung quanh hồ Nhật Nguyệt, là nơi thờ Quan Công (Võ Miếu) và Đức Khổng Tử (Văn Miếu). Văn Miếu nằm cao hơn so với Võ Miếu, thể hiện rõ tinh thần “trọng văn khinh võ” của người xưa. Tiếp tục du khách sẽ đến với trung tâm các mặt hàng đặc sản của các dân tộc thiểu số Đài Loan. Du khách ăn trưa tại nhà hàng địa phương rồi di chuyển đến thành phố Đài Trung, xe sẽ đưa du khách đến dạo chơi chợ đêm Phong Giáp – chợ đêm lớn nhất Đài Loan. Tại đây du khách có thể thưởng thức các món ăn ngon, mới lạ và tha hồ mua sắm.

Tối ngủ tại khách sạn 4 sao Hương Thành thành phố Đài Trung.


Hồ Nhật Nguyệt


Ngày thứ ba: Đài Trung – Đài Bắc

Ăn sáng tại khách sạn xong, chia tay thành phố Đài Trung đoàn khởi hành đi Đài Bắc, thăm quan công viên Yehliu - công viên địa chất với những khối kiến trúc đá do thiên nhiên tạo nên với rất nhiều hình thù ngộ nghĩnh đáng yêu nhưng cũng không kém phần tinh xảo khiến ta liên tưởng tới nhiều hình khối sinh động như tượng nữ thần Ai Cập hay những con thuyền.  Sau đó xe và hướng dẫn sẽ đưa du khách đến tham quan và mua sắm tại trung tâm chế tác đá quý cẩm thạch Lucky Stone.

Sau khi ăn trưa xong,  đoàn quay trở lại trung tâm thành phố  thăm quan tòa tháp 101 tầng - đã từng là tòa nhà cao nhất thế giới tại thời điểm nó được khánh thành năm 2004, với chiều cao 509m và bao gồm 101 tầng  (Chi phí lên tầng 89 của Tòa tháp tự túc). Sau đó du khách sẽ được đưa đến khu chợ quần áo Wufenbu và chợ đêm Nhiêu Hà, du khách có thể tha hồ lựa chọn cho mình những bộ quần áo phù hợp và các phụ kiện thời trang tại những địa điểm trên. Ăn tối tại nhà hàng địa phương.

Tối quay trở lại khách sạn 4 sao Lệ Hồ thành phố Đài Bắc và nghỉ đêm tại đây.


Ngày thứ tư: Đài Bắc

Sau khi ăn sáng, đoàn thăm quan Bảo tàng Cố Cung - nơi lưu giữ hơn 620.000 tác phẩm nghệ thuật quý giá trong bộ sưu tập của Hoàng gia Trung Quốc được mang sang Đài Loan cất giữ. Sau đó tham quan Trung Liệt Từ - nơi diễn ra nghi thức giao binh của các binh sĩ Đài Loan, và mua sắm tại cửa hàng miễn thuế, chợ đêm Sĩ Lâm.

Ngày thứ năm: Đài Bắc – Hà Nội


Khách tự do thăm quan và mua sắm cho đến giờ khởi hành ra sân bay. Sau đó xe đưa đoàn ra sân bay, làm thủ tục  lên máy bay về Hà Nội. Sau khoảng 3 tiếng, máy bay hạ cánh xuống sân bay Nội Bài. Xe đón và đưa du khách về Hạ Long, chia tay kết thúc chuyến đi tốt đẹp.', N'Images/Trang chu/Quoc te/img.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT11', N'Hạ Long - Thượng Hải - Hàng Châu - Vô Tích - Tô Châu - Bắc Kinh', N'Hàng ngày', N'7 ngày 6 đêm', N'Thượng Hải, Tô Châu, Hàng Châu, thủ đô Bắc Kinh', N'20.000.000', N'Ngày thứ nhất: Hạ long – Thượng Hải Xe và hướng dẫn viên đón du khách tại Công ty Cổ Phần Du Lịch Quốc Tế Asian...', N'Ngày thứ nhất: Hạ long – Thượng Hải

Xe và hướng dẫn viên đón du khách tại Công ty Cổ Phần Du Lịch Quốc Tế Asian đi sân bay Nội Bài,  đáp chuyến bay đi Thượng Hải. Đến Thượng Hải, xe và hướng dẫn viên sẽ đón đoàn đi tham quan Bến Thượng Hải, Tháp truyền hình Đông Phương Minh Châu,  tham quan cửa hàng thủy tinh và tự do mua sắm tại Phố Nam Kinh,con đường lớn tập chung nhiều các trung tâm thương mại, các của hàng đò hiệu lớn nhất thành phố Thượng Hải, ngay cạnh Bến sông Thượng Hải. Sau bữa tối, du khách sẽ đến khách sạn nhận phòng và nghỉ ngơi. Buổi tối, du khách có thể tự bỏ kinh phí tham gia chương trình đi tầu ngắm nhìn cảnh đêm lộng lẫy của thành phố Thượng Hải với những tòa nhà chọc trời.

Ngày thứ  hai: Thượng Hải – Hàng Châu

Sau khi ăn sáng, đoàn lên xe tham quan chùa Ngọc Phật - ngôi chùa lớn nhất và nổi tiếng nhất Thượng Hải với bức tượng ngọc phật quý giá gắn với nhiều điển tích kỳ lạ, tham quan khu thương mại Miếu Hoàng Thành. Sau đó, đoàn lên xe khởi hành đi thành phố Hàng Châu, thủ phủ của tỉnh Triết Giang nổi tiếng hiện đại và là trung tâm sản xuất hành dệt may xuất khẩu nổi tiếng Trung Quốc. Đến Hàng Châu, du khách sẽ lên du thuyền ngoạn cảnh Tây Hồ - nơi có nhiều cảnh đẹp nổi tiếng nhất và nhiều điển tích ở Hàng Châu. Sau bữa ăn tối, du khách sẽ lên xe đến khách sạn, làm thủ tục nhận phòng tại khách sạn.

Ngày thứ ba: Hàng Châu  - Vô Tích – Tô Châu

Sau bữa sáng tại khách sạn, du khách sẽ ghé thăm vườn trà Long Tĩnh, thưởng thức loại trà ngon nổi tiếng Trung Quốc chuyên được chế biến để dâng vua, tham quan cửa hàng gốm sứ, tham quan Miếu Nhạc Phi. Sau khi ăn trưa, đoàn lên xe khởi hành đi đến thành phố Vô Tích. Đến Vô Tích, du khách tham quan phim trường Tam Quốc Diễn Nghĩa - nơi tái hiện lại hình ảnh Trung Hoa thời Tam Quốc với nhà cửa, thành quách, chùa chiền, thuyền chiến, ngắm cảnh Thái Hồ. Sau đó quý khách khởi hành đi đến thành phố Tô Châu, thủ phủ của tỉnh Giang Tô. Du khách đên thành phố Giang Tô, ăn tối, nhận phòng tại khách sạn.


Hàn Sơn Tự Tô Châu

Ngày Thứ tư :Tô Châu – Bắc Kinh

Du khách ăn sáng tại khách sạn, và lên xe đi tham quan Hàn Sơn Tự - là một trong những ngôi chùa cổ của Trung Quốc với bức bích họa nổi tiếng "Hàn Sơn - Thập Đắc" được khắc trên đá của danh họa đời Thanh, Sư Tử Lâm - tuyệt tác kiến trúc lâm viên Tô Châu, tham quan xưởng sản xuất tơ lụa nổi tiếng của Tô Châu. Sau khi ăn trưa, du khách đáp chuyến tàu siêu tốc đi Bắc Kinh (tốc độ 300km/h – khoảng 5-6 tiếng đến Bắc Kinh – Ghế ngồi hạng 2). Đến Bắc Kinh, ăn tối với món vịt quay Bắc Kinh nổi tiếng, thưởng thức chương trình xiếc Bắc Kinh tại rạp xiếc. Buổi tối, du khách đến khách sạn nhận phòng và nghỉ ngơi.


Bát Đạt Lĩnh, Vạn Lý Trường Thành

Ngày thứ năm: Bắc Kinh

Sau khi ăn sáng tại khách sạn, du khách lên xe đi tham quan Vạn Lý Trường Thành - một trong những kỳ quan của thế giới, là công trình nhân tạo với mục đích phục vụ cho quân sự có một không hai trên thế giới được xây dựng từ thời Tần Thủy Hoàng, tham quan Thập Tam Lăng - Với tổng diện tích hơn 40 km2, Thập Tam Lăng nằm ở ngoại ô Bắc Kinh gồm 13 lăng mộ, là nơi an nghỉ của 13 vị vua nhà Minh cùng 23 hoàng hậu, một quý phi và 10 hoàng phi. Ghé thăm cửa hàng đá cẩm thạch và hiệu thuốc Bắc nổi tiếng Đồng Nhân Đường. Ăn tối, tự do mua sắm tại phố Vương Phủ Tỉnh, con đường mà du khách không thể bỏ qua, nơi đây là thiên đường mua sắm của người dân Bắc Kinh và du khách. Sau đó, trở về khách sạn nghỉ ngơi.

Ngày thứ sáu: Bắc Kinh

Sau bữa sáng tại khách sạn, du khách lên xe đi tham quan Tử Cấm Thành - là cung điện của các triều đại từ giữa nhà Minh đến cuối nhà Thanh Trung Quốc. Với diện tích 720.000 m2 gồm 800 cung và 9999 gian phòng và được UNESCO công nhận là Di sản thế giới, ghé tham quan mua sắm tại Chính Dương Môn, tham quan Quảng Trường Thiên An Môn, ghé thăm cửa hàng ngọc trai, tiếp tục đi tham quan Di Hòa Viên - Cung Điện Mùa Hè của Từ Hy Thái Hậu, tham quan bên ngoài Sân vận động tổ chim - nơi biểu diễn Lễ khai mạc và bế mạc Olympic 2008. Du khách ăn tối và trở về khách sạn nghỉ ngơi.



Công viên Thiên Đàn Bắc Kinh

Ngày thứ bảy: Bắc Kinh – Nội Bài – Hạ Long, kết thúc chương trình tham quan.

Ăn sáng tại khách sạn. Du khách đi tham quan Công viên Thiên Đàn, đây là nơi tế trời của các vị Hoàng Đế thời phong kiến Trung Hoa nằm giữa trung tâm thành phố. Sau khi ăn trưa, xe và hướng dẫn viên địa phương đưa đoàn ra sân bay, đáp chuyến bay về  sân bay Nội Bài. Du khách về đến sân bay Nội Bài, xe Công ty Cổ Phần Du Lịch Quốc Tế Asian sẽ đón du khách về thành phố Hạ Long, kết thúc chuyến tham quan tại Trung Quốc.', N'Images/Trang chu/Quoc te/du-lich-to-chau13.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT12', N'Tokyo - Núi Phú Sỹ - Kyoto - Osaka', N'Hàng ngày', N'7 ngày 6 đêm', N'Tokyo - Núi Phú Sỹ - Kyoto - Osaka', N'39.900.000', N'Ngày 1 : Tokyo (Trưa , tối) 17h00: Xe và HDV Công ty Cổ Phần Du Lịch Quốc Tế Asian đón Qúy khách tại điểm hẹn...', N'Ngày 1 : Tokyo (Trưa , tối)

17h00: Xe và HDV Công ty Cổ Phần Du Lịch Quốc Tế Asian đón Qúy khách tại điểm hẹn ở TP. Hạ Long. Khởi hành đi sân bay Nội Bài, làm thủ tục xuất cảnh đi Nhật trên chuyến bay VN 954 của Hãng hàng không Việt Nam, cất cánh lúc 00:30. Quý khách nghỉ đêm và ăn nhẹ trên máy bay.

Ngày 2 : Tokyo (Trưa , tối)

06h30’: Xe và HDV địa phương đón đoàn tại sân bay Quốc tế Narita và đưa đoàn đi Tokyo – Thủ đô của Đất nước Mặt trời mọc Nhật Bản. Sau bữa  trưa tại nhà hàng, quý khách tham quan Đền thờ Asakussa Kannon – Ngôi đền thờ cổ nhất tại Tokyo, Cung điện Hoàng Đế.
Xe đưa quý khách tới thăm khu vui chơi giải trí và mua sắm lớn nhất Tokyo Ginza, Tháp truyền hình Tokyo Tower, đồi  Roppongi Hills - ngắm toàn cảnh Tokyo.

19h00: Quý khách ăn tối tại nhà hang, nghỉ đêm tại khách sạn Tokyo Metropolitan hoặc tương đương.

Ngày 3 : Tokyo - Disneyland (Ăn sáng , tối)

07h30: Quý khách ăn sáng tại khách sạn.

 Xe đưa đoàn đi thăm quan và vui chơi cả ngày tại Công viên nổi tiếng tại Tokyo - Disneyland. Đoàn tự do khám phá các trò chơi trong công viên. Ăn trưa trong Công viên.

Tiếp tục tham gia các trò chơi trong công viên.

Ăn tối  tại nhà hàng, nghỉ đêm tại khách sạn Tokyo Crowne Plaza Metropolitan hoặc tương đương.

Ngày 4 : Tokyo - Hakone - Lake Kawaguchi (Ăn sáng ,Trưa , tối)

07h30: Quý khách ăn sáng tại khách sạn.  Đoàn khởi hành đi Hankone và dừng chân mua hàng tại trung tâm hàng hiệu giảm giá Gotemba Outlet Shopping Mall. Đoàn ăn trưa và đi tới khu du lịch Hakone - Quý khách có cơ hội được tới thung lũng Owakudani luộc trứng và khi trứng chín, vỏ quả trứng sẽ chuyển sang màu đen – khi thưởng thức sẽ có một chút mùi sulphuric, đoàn thưởng ngoạn du thuyềnngắm cảnh hồ Ashi thuộc quần thể Ngũ hồ chân núi Phú Sĩ.

Tối đoàn thư giãn tắm nước suối khoáng thiên nhiên và thoả sức Sauna tại bồn nước suối khoáng nóng thiên nhiên trong quần thể khu du lịch Kawaguchiko Jiragon Hotel or similar.
Nghỉ đêm tại khách sạn Kawaguchiko Jiragon Hotel or similar.

Ngày 5 : Lake Kawaguchi - Núi Phú Sỹ - Hamamatsu - Toyohashi (Ăn sáng ,Trưa , tối)

07h30: Quý khách ăn sáng tại khách sạn.

Xe đón đoàn đi tham quan Núi Phú Sỹ (nếu thời tiết cho phép sẽ lên đến trạm số 5) – biểu tượng của đất nước Nhật Bản- là đỉnh núi lửa đang hoạt động và cao nhất Nhật Bản - cao 3776m và được bao phủ bởi 5 hồ bao quanh núi Phú sĩ.

Ăn trưa tại nhà hàng.

Sau đó, đoàn đáp chuyến tàu hoả Bullet Train từ nhà ga Hamamatsu đến Toyohashi.

Ăn tối và ngủ đêm tại khách sạn Hotel Nikko Toyohashi or similar.

Ngày 6 : Toyohashi - Tokyo - Osaka (Ăn sáng ,Trưa , tối)

07h30: Quý khách săn sáng tại khách sạn.

08h00:Xe và HDV địa phương đón đoàn và đưa đoàn tham quan Cố đô Kyoto với  Heian Shrine, “Chùa Thanh Thuỷ - Kiyomizu Dera” với lối kiến trúc độc đáo toàn bằng gỗ.

12h00: Quý khách ăn trưa tại nhà hàng.

Buổi chiều, quý khách tiếp tục tham quan, trung tâm thủ công mỹ nghệ Nijo - Kyoto và xem các người mẫu trình diễn chương trình Kimono show.

Thả bộ tham quan khu phố cổ Gion. Đoàn lên xe đi Osaka thăm quan và mua sắm tại khu phố Mỹ “American Village” trung tâm mua sắm sầm uất Shinsai – Baishi hay còn gọi là khu Nippon Bashi.

Dùng bữa tối và nhận phòng khách sạn Osaka Ramada or similar và tự do khám phá Osaka về đêm.

Ngày 7 : Osaka - Việt nam (Ăn sáng ,Trưa)

08h30: Quý khách bắt đầu hành trình tham quan thành phố Osaka với lâu đài Osaka (chụp ảnh lưu niệm bên ngoài), sau đó xe đưa đoàn ra sân bay Quốc tế Kansai. Quý khách tự do mua sắm tại các cửa hàng miễn thuế cho tới giờ lên máy bay về VN.

14h30: Xe đón đoàn tại sân bay. Đưa Quý khách về điểm hẹn ban đầu tại Hạ Long. Chia tay Quý khách. Kết thúc chương trình.', N'Images/Trang chu/Quoc te/nui-phu-sy.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT13', N'Hạ Long - Hà Nội - Seoul - Everland – Đảo Nami', N'Hàng ngày', N'5 ngày 4 đêm', N'Seoul, Everland, Hàn Quốc', N'13.900.000', N'Ngày 01: Hạ Long - Hà Nội – Seoul (Quý khách nghỉ đêm trên máy bay) Buổi chiều: Quý khách tập trung tại điểm hẹn,...', N'Ngày 01: Hạ Long -  Hà Nội – Seoul (Quý khách nghỉ đêm trên máy bay)

Buổi chiều: Quý khách tập trung tại điểm hẹn, xe và hướng dẫn viên Công ty Cổ Phần Du Lịch Quốc Tế Asian sẽ đón và đưa quý khách lên Hà Nội. Đoàn đến sân bay Nội Bài đáp chuyến bay OZ 734/ VN416 đi Seoul – Hàn Quốc lúc 22h50’+.

Quý khách nghỉ đêm trên máy bay.

Ngày 02: Seoul – City Tour (Ăn sáng, trưa, tối)

Sau 4 giờ bay, quý khách tới sân bay Quốc tế Incheon tại Thủ đô Seoul.

Trên đường về Seoul, đoàn được ngắm nhìn cây cầu Incheon – cây cầu dây văng dài nhất Hàn Quốc.

Quý khách ăn sáng món mì Woodong truyền thống Hàn Quốc.

Sau đó tham quan Cung điện hoàng gia Kyong-bok, bảo tàng dân gian quốc gia, Nhà Xanh – Phủ tổng thống.

Dùng bữa trưa với thực đơn Hàn Quốc.

Buổi chiều đoàn tham quan chợ Đông Đại Môn – khu chợ trung tâm sầm uất ở Seoul. Cùng khám phá cuộc sống nơi phố chợ Seoul hoặc tham quan sòng bài thuộc giới thượng lưu Seoul – Walker Hill Casino.

Thăm núi Namsan với những ổ khóa tình yêu (không bao gồm cáp treo lên tháp).

Đoàn  ăn tối với món thịt lợn nướng tẩm ướp gia vị Hàn.

Nghỉ đêm tại khách sạn .

Ngày 03: Seoul – Everland – Học làm kim chi (Ăn sáng, trưa, tối)

Sau bữa sáng, xe đưa đoàn đến khuôn viên giải trí của Everland – một trong những thiên đường giải trí lớn nhất ở Seoul – nơi quý khách có thể tự do tham quan, chụp ảnh, và tham gia các trò chơi.

Đoàn ăn trưa – thịt lợn nướng.

Sau bữa trưa, trên đường về Seoul, đoàn tham gia mặc đồ truyền thống Hàn Quốc – Hanbok, và tự tay học làm kim chi tại làng Hàn Quốc.

Buổi chiều quý khách tha hồ mua sắm tại cửa hàng Mỹ phẩm và Nhân sâm nổi tiếng Hàn Quốc, kiểm tra sức khỏe miễn phí bằng phương pháp hiện đại tại Trung tâm Tinh dầu thông đỏ.

Ăn tối với món gà hầm sâm truyền thống.

Nghỉ đêm tại khách sạn.

Ngày 04: Seoul – Đảo Nami – Sjb Boys Show (Ăn sáng, trưa, tối)

Sau bữa sáng, xe và HDV đưa đoàn đến đảo Nami, tham quan phim trường của bộ phim truyền hình nổi tiếng “Bản tình ca mùa đông”.

Ăn trưa với lẩu gà nướng.

Buổi chiều, quý khách mua nấm linh chi Hàn Quốc, với nhiều loại nấm từ nấm trang trại, nấm núi…, thuốc bổ trợ gan từ thảo dược thiên nhiên,

Đoàn ăn tối lẩu Shabu Hàn Quốc.

Thưởng thức chương trình nghệ thuật đặc sắc với show dancing Hiphop – SJB Boys show.

Nghỉ đêm tại khách sạn.

Ngày 05: Seoul - Hà Nội - Hạ Long (Ăn sáng, trưa)

Sau bữa sáng, đi tham quan làng dân tộc Hanok, thăm dòng suối Cheng Gye, chụp ảnh lưu niệm tại quảng trường Ghwanghwamun.

Đoàn ăn trưa với thực đơn Trung Quốc, thăm cửa hàng miễn thuế.

Sau bữa trưa Quý khách tiếp tục  mua sắm tại cửa hàng tổng hợp Cheng –Ha. Sau đó, xe đưa quý khách ra sân bay Incheon đáp chuyến bay OZ733/ VN415  trở về Việt Nam lúc 19:20.

Đến sân bay Nội Bài lúc 21:50, xe đón đoàn trở về trung tâm thành phố. Chia tay và kết thúc chương trình. ', N'Images/Trang chu/Quoc te/seoul.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT14', N'SEOUL – ĐẢO JEJU - NAMI', N'Hàng ngày', N'7 ngày 6 đêm', N'SEOUL – ĐẢO JEJU - NAMI', N'21.550.000', N'Ngày 01: Hà Nội – Seoul (Quý khách nghỉ đêm trên máy bay) 15h00 Quý khách tập trung tại điểm hẹn tại Hạ Long. Xe...', N'Ngày 01: Hà Nội – Seoul  (Quý khách nghỉ đêm trên máy bay)

15h00 Quý khách tập trung tại điểm hẹn tại Hạ Long. Xe và hướng dẫn viên Asian Travel đón đoàn và đưa ra sân bay Nội Bài, đáp chuyến bay OZ734 đi Seoul - Hàn Quốc lúc 22h50.

Quý khách nghỉ đêm trên máy bay.

Ngày 02: Seoul - Đảo Jeju (Ăn sáng, trưa, tối)

Sau 4 giờ bay, quý khách tới sân bay Quốc tế Incheon tại Thủ đô Seoul. Quý khách ăn sáng món mì Woodong truyền thống Hàn Quốc. Tham quan Cung điện hoàng gia Kyong-bok - Xây dựng lần đầu vào năm năm 1394 và được xây dựng lại vào năm 1867, đây là cung điện chính và lớn nhất của Ngũ Cung, bảo tàng dân gian quốc gia- bảo tàng hàng đầu của lịch sử, nghệ thuật Hàn Quốc, Nhà Xanh – Phủ tổng thống - nơi các Tổng thống đương nhiệm của Hàn Quốc làm việc và sinh sống.

Đoàn dạo bộ dưới dòng suối nhân tạo Cheng – Gye trong lòng thành phố - là một dòng suối dài 5, 8 km chảy qua khu trung tâm Thành phố Seoul, Hàn Quốc, đổ vào sông Jungnangcheon, cuối cùng hợp lưu với sông Hán., chụp ảnh lưu niệm tại quảng trường Gwanghwamun.

 Sau bữa trưa, quý khách đáp chuyến bay OZ8931 tới Jeju – hòn đảo du lịch nổi tiếng xinh đẹp của Hàn Quốc.

Quý khách đi tham quan khu bãi đá đầu rồng Yongduam Rock, con đường Kỳ bí (Mysterious Rd) . Đoàn  ăn tối tại nhà hàng Gobu với thực đơn Hàn Quốc, thăm khu phố mua sắm Tapdong .

Nghỉ đêm tại khách sạn .

Ngày 03: Đảo Jeju - The King show (Ăn sáng, trưa, tối)  

Sau bữa sáng, Quý khách thăm Công Viên Thiên đường Tình Yêu – Thế giới riêng tư của những cặp tình nhân hạnh phúc (Cấm trẻ em dưới 18 tuổi ), đỉnh núi Seongsan Sunrise Peak.

Ăn trưa BBQ Hàn Quốc tại Làng văn hoá Seongeup.

Buổi chiều, quý khách tham quan Thác nước Cheonjiyeon, Bãi cột đá Jusan Jelli.

Ăn tối tại nhà hàng và nghỉ đêm tại khách sạn.

Thưởng thức chương trình show diễn chuyển giới đặc sắc The King Show (http://theshowking.com)   

Ngày 04: Đảo Jeju – Seoul - Everland  - Làm Kimchi (Ăn sáng, trưa, tối)

Sau bữa sáng, xe đưa đoàn ra sân bay đáp máy bay về Seoul chuyến bay OZ8962.

Đến Seoul Quý khách ăn trưa tại nhà hàng với đặc sản thịt lợn nướng, sau đó tham quan Công viên Everland - một trong 10 công viên lớn nhất thế giới quý khách tự do tham gia các trò chơi trong khuôn viên công viên.

Buổi chiều, xe đưa đoàn trở về Seoul.

Trên đường về, đoàn tham gia lớp thực hành làm kim chi, và mặc thử đồ Hanbok – đồ truyền thống của Hàn Quốc.

Về lại Seoul, quý khách tha hồ mua sắm Mỹ phẩm và Nhân sâm nổi tiếng Hàn Quốc, Tinh dầu Thông đỏ. Mua sắm tại chợ đầu mối lớn nhất Seoul - Đông Đại Môn – Nơi được coi là kinh đô thời trang của Hàn Quốc.,

Ăn tối, nghỉ đêm tại Hàn Quốc.

Tự do khám phá Seoul về đêm.

Ngày 05: Seoul  - Đảo Nami (Ăn sáng, trưa, tối)

Sau bữa sáng đoàn khởi hành đi thăm quan Đảo Nami – hòn đảo mang vẻ đẹp bình yên nhờ phong cảnh thiên nhiên hữu tình, thơ mộng. Vào mùa thu, cả hòn đảo như chìm trong sắc vàng lấp lánh dưới ánh mặt trời và rất nổi tiếng bởi bối cảnh của bộ phim tình cảm Bản Tình Ca Mùa Đông

Ăn trưa tại trên đảo với món Gà nướng.

Trở về Seoul tham quan, tự do mua sắm tại các cửa hàng nấm linh chi và Thuốc bổ trợ gan từ thảo dược thiên nhiên.

Thăm quan làng dân tộc Hanok- bức tranh toàn cảnh về văn hóa dân gian Hàn Quốc được tái học một cách sinh động và đặc sắc, nơi thực hiện bộ phim nổi tiếng “ Nàng Dea Jang Geum”. Quý khách sẽ có dịp đắm mình trong không gian mà Nàng Dea Jang Geum từng sinh sống. Ăn tối tại nhà hàng với món lẩu Shabu đặc biệt.

Nghỉ đêm tại khách sạn

Ngày 06: Seoul – HÀ NỘI (Ăn sáng, ăn trưa trên máy bay)

Quý khách trả phòng sớm, xe và HDV đưa đoàn ra sân bay Incheon.

Quý khách tiếp tục  mua sắm tại cửa hàng tổng hợp Cheng Ha, ăn sáng.

Sau đó, xe đưa quý khách ra sân bay Incheon Airport đáp chuyến bay OZ727 (0945 1235)  trở về Việt Nam Đến sân bay Nội Bài, xe đón đoàn trở về Hạ Long. Chia tay và kết thúc chương trình.', N'Images/Trang chu/Quoc te/jeju-korea.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT15', N'Hạ Long - Singapore - Malaysia', N'Hàng ngày', N'6 ngày 5 đêm', N'Singapore, Malaysia', N'22.500.000', N'Ngày 01: Singpore thành phố năng động nhất Đông Nam Á (ăn tối) Buổi sáng 04h00, Quý khách cùng hướng dẫn...', N'Ngày 01: Singpore thành phố năng động nhất Đông Nam Á  (ăn tối)
    
Buổi sáng 04h00, Quý khách cùng hướng dẫn viên của Asian Travel khởi hành đi sân bay Nội Bài, đáp chuyến bay lúc 10h30 của Vietnam Airlines đi Singapore. Quý khách ăn trưa trên máy bay. Buổi chiều, sau hơn 3 giờ bay Quý khách có mặt tại sân bay quốc tế Changi. Xe và hướng dẫn viên địa phương đón và đưa Quý khách đi quan thành phố Singapore: Elizabeth Walk, Mount Faber, Công Viên Merlion, Nhà Hát Victori. Sau đó Quý khách về nhận phòng khách sạn tiêu chuẩn 3 sao, nghỉ ngơi và ăn tối.

Buổi tối: Sau bữa tối là thời gian tự do cho việc thăm quan, khám phá thành phố về đêm dưới ánh đèn lung linh huyền ảo. Quý khách nghỉ ngơi để chuẩn bị cho hành trình của ngày tiếp theo.

Ngày 02: Thiên đường giải trí  (ăn sáng, trưa, tối)      

Buổi sáng: Sau khi ăn sáng tại khách sạn, đoàn làm thủ tục trả phòng. Xe và hướng dẫn đón đoàn đưa đi thăm quan: Vườn thực vật Garden by the Bay – khu vườn cây nhân tạo với hệ thống siêu cây có khả năng tổng hợp năng lượng mặt trời và lọc sạch không khí, sau đó đoàn lên đỉnh núi Mount Faber – nơi có thể ngắm toàn cảnh đất nước Singapore xinh đẹp. Tiếp đó đoàn thăm quan cửa hàng vàng bạc đá quý và cửa hàng dầu gió, sản phẩm truyền thống nổi tiếng của Quốc đảo Sư tử. Bữa trưa thưởng thức món lẩu nướng tự chọn Korean BBQ. Tự do thăm quan mua sắm tại các siêu thị lớn: Bugis Juntion, Takasiamaya…    

Buổi chiều, quý khách sang đảo Sentosa. Đảo nghỉ dưỡng hàng đầu, thăm quan khu giải trí phức hợp Resort World, một phức hợp du lịch ấn tượng kết hợp hài hoà giữa công viên thiên nhiên, di sản văn hoá, khu ẩm thực, trung tâm mua sắm và khu vui chơi giải trí. Thăm quan Thuỷ Cung Cá Under Water World, để chiêm ngưỡng nhiều động vật đại dương được nuôi dưỡng trong bể nước khổng lồ. Đặc biệt quý khách tham gia vào buổi biểu diễn Dophin Lagoon show của những chú cá heo hồng thông minh và tinh nghịch. Quý khách cũng có thể thử vận may tại Casino.

 
Buổi tối, sau khi ăn xong tại đảo, đoàn xem biểu diễn nhạc nước đặc sắc Wonder full show. Marina Bay Sand với kỹ thuật, âm thanh và ánh sáng hiện đại. Kết thúc chương trình, đoàn về khách sạn nghỉ ngơi để chuẩn bị cho hành trình tham quan của ngày tiếp theo.

Ngày 03:  Singapore – Mallaca cổ kính   (ăn sáng, trưa, tối)

Buổi sáng, sau bữa ăn sáng Quý khách tự do tham quan, mua sắm tại Singapore. Sau đó Quý khách khởi hành đi Malacca. Thành phố lịc sử của Malaysia. Ăn trưa tại bang Joho.


Buổi chiều, đến Mallaca, Quý khách tham quan đồi Saint Paul, pháo đài A Famosa - được xây dựng năm 1511 bởi người Bồ Đào Nha và là biểu tượng của Malacca, Quảng trường Hà Lan - Cổ nhất Châu Á, được xây dựng từ 1641 đến 1660, khu phố Trung Hoa với ngôi đến Cheng Hoon Teng cổ nhất của người Trung Quốc tại Malaysia, được UNESCO công nhận là di sản văn hoá thế giới

Buổi tối, sau khi ăn xong tại nhà hàng, quý khách nhận phòng khách sạn (tiêu chuẩn 3 sao), tự do khám phá Mallaca về đêm.

Ngày 04: Genting - Khu du lịch phức hợp lớn nhất Malaysia   (ăn sáng, trưa, tối)

Buổi sáng, quý khách khởi hành đi Cao nguyên Genting, thành phố giải trí hàng đầu khu vực, toạ lạc trên cao nguyên Genting cao 2000 m so với mực nước biển. Nơi đây, người ta có thể tận hưởng những gì hiện đại nhất và gần gũi nhất với thiên nhiên. Với những cửa hàng tràn ngập các cửa hiệu hàng hoá, casino, các trò game hấp dẫn, chắc chắn rằng Quý khách sẽ không bao giờ buồn chán khi đến cao nguyên Genting. Trên đường đi, Quý khách tham quan thành phố mới Putrajaya – Thủ đô chính trị của Malaysia, là một thành phố hiện đại bậc nhất Đông Nam Á, quý khách tham quan và chụp ảnh tại nhà thờ hồi giáo Quốc gia Putrajaya, hồ nhân tạo Putrajaya và hệ thống 9 cây cầu tuyệt đẹp bắc qua hồ.

Buổi chiều, quý khách tự do tham gia các hoạt động vui chơi giải trí tại Công viên giải trí Theme Park. Công viên giải trí lớn nhất Malaysia. Thời gian còn lại là của Quý khách dành cho việc mua sắm và thỏa mãn với gu thẩm mỹ của mình tại tại hơn 70 cửa hàng tại Genting.
 
Buổi tối, sau bữa tối là thời gian tự do cho việc tham quan, khám phá Kuala Lumpur. Nghỉ đêm tại khách sạn (tiêu chuẩn 3sao).

Ngày 05:  Kuala Lumpur – Thiên đường mua sắm  (ăn sáng, trưa, tối)

Buổi sáng, quý khách khởi hành về Kula Lumpur. Trên đường đi Quý khách ghé tham quan Động Batu, Quý khách sẽ leo 272 bậc thang để lên thăm hang đá, thưởng thức những đặc sản của người Ấn Độ như teh tarik và roti canai. Quý khách tiếp tục mua sắm tại các trung tâm miễn thuế của Malaysia với các sản phẩm đặc thù như: sản phẩm thiếc, lụa Bantic, Socholate.

Buổi chiều, quý khách tham quan, mua sắm và chụp ảnh lưu niệm tại Tòa thấp đôi Petronas với Trung tâm mua sắm KLCC - Trung tâm mua sắm lớn nhất Malaysia. Trong trường hợp thuận lợi, Quý khách có thể lên tầng 42 của Petronas ngắm nhìn toàn cảnh thành phố từ trên cao.

Buổi tối, sau bữa tối, quý khách tự do mua sắm tại các trung tâm mua sắm. Nghỉ đêm tại Kuala Lumpur.

Ngày 06: Kuala Lumpur – Hà Nội - Hạ Long  (ăn sáng, trưa)

Buổi sáng sau bữa ăn sáng, Quý khách tham quan Cung điện Hoàng Gia, Quảng trường độc lập, Bảo tàng Quốc gia, Nhà thờ Hồi giáo Quốc gia. Thời gian còn lại dành cho Quý khách tự do tham quan, khám phá Thành phố và mua sắm.

Buổi chiều:

Quý khách nói lời tạm biệt Kuala Lumpur, đáp chuyến bay  về Hà Nội. Ăn tối trên máy bay. Sau hơn 3 giờ bay, Quý khách có mặt tại sân bay Nội Bài. Chương trình được khép lại khi Hướng dẫn viên và xe Asian Travel đưa Quý khách về đến Hạ Long. Kết thúc chương trình tour.', N'Images/Trang chu/Quoc te/du-lich-singapore.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT16', N'Hạ Long - Pakxan - Viêng Chăn - Luông PhanDang - XiêngKhoang', N'Hàng ngày', N'6 ngày 5 đêm', N'Lào, Campuchia', N'10.200.000', N'Ngày 1: Hà Nội – Pakxan (Ăn 3 bữa) Buổi sáng: xe và hướng dẫn viên công ty Du lịch Asian Travel đón khách tại điểm...', N'Ngày 1: Hà Nội – Pakxan (Ăn 3 bữa)

Buổi sáng: xe và hướng dẫn viên công ty Du lịch Asian Travel đón khách tại điểm hẹn khởi hành đi Lào. Ăn sáng tại nhà hàng trên đường.

Buổi chiều: đoàn ăn trưa tại nhà hàng Phố Châu Hương Sơn. Xuất cảnh qua tỉnh Bolikhamxay – Lào theo quốc lộ 8 qua cửa khẩu Quốc tế Cầu Treo.

Buổi tối: Đoàn nhận phòng và Ăn tối tại Khách sạn 2 sao thị xã Pakxan của BQP. Buổi tối đoàn có thể đi chợ đêm.

Ngày 2: Pakxan – Viêng Chăn (Ăn 3 bữa)

06h30 Ăn sáng và đoàn khởi hành đi Viêng Chăn – thủ đô Lào.

11h00 ăn trưa. 

Chiều: Tham quan điểm đầu tiên là Chùa Xí Mương – chùa linh thiêng nhất thủ đô Viêng Chăn. Điểm tiếp theo là Tượng đài Chiến thắng Patuxay – Khải Hoàn Môn của thủ đô Viêng Chăn, Thạt Luổng – biểu tượng của Phật giáo Tiểu thừa Lào, biểu tượng linh thiêng được in trên đồng tiền KIP của Lào. Ghé tham quan và mua bạc Lào tại cửa hàng bạc Chintana.18h00 ăn tối tại nhà hàng. Buổi tối đoàn có thể khám phá Viêng Chăn về đêm bằng xe TUKTUK- một dạng taxi 3 bánh ở Viêng Chăn. Ngồi bên bờ sông Mekong và nhấp nháp cốc bia Lào cùng với các món nướng cũng là một thú vui vào buổi tối ở Viêng Chăn.

Ngày 3: Viêng Chăn – Vang Viên (Ăn 3 bữa)

Ăn sáng tại khách sạn. Đoàn khởi hành đi thị trấn Vang Viêng, nơi được du khách châu Âu ưa thích khám phá. Đoàn dùng bữa trưa tại nhà hàng. Sau bữa trưa, đoàn tham quan Cầu Treo bắc ngang sông Nậm Song – cây cầu làm bằng tre và dây thừng rất tinh xảo, khám phá & chiêm ngưỡng dòng Suối Vang Viêng tự do đắm mình dòng suối mát lạnh,,, Khám phá vẻ đẹp hữu tình Vang Viêng bằng cách chèo kayak dọc theo sông Nậm Songcác trò chơi mạo hiểm như: trượt thác, thả thuyền trôi trên dòng sông, đi thuyền kyak khám phá các hang động đá vôi tại nơi đây… (chi phí tự túc). Ăn tối. Nghỉ đêm tại Vang Viêng.

Ngày 4: VANG VIÊNG – LUÔNGPHABANG (200km) (Ăn 3 bữa)

Ăn sáng. Quý khách khởi hành đi Luôngphabang cách khoảng 200 km về phía bắc. Đoàn dùng bữa trưa tại Luangphabang.Chiều: tự do nghỉ ngơi tại Luôngphabang. Ăn tối. Buổi tối đoàn có thể đi chợ đêm. Nghỉ đêm tại Luôngphabang.

Ngày 5: THAM QUAN CỐ ĐÔ LUÔNGPHABANG (Ăn 3 bữa)

Ăn sáng tại khách sạn. Xe sẽ đón đoàn tham quan và chinh phụcđỉnh Phousy và ngắm toàn cảnh cố đô Luôngphabang, thăm Cung điện Hoàng gia – cung điện của vua Phả – Ngừm (trừ ngày thứ 3). Ăn trưa. Chiều đoàn khởi hành đi tham quan chùa Vat Xiêng Thong. Sau đó đoàn tiếp tục tham quan Thác nước Quảng Sý. Ăn tối tại nhà hàng. Buổi tối đoàn tự do khám phá Luôngphabang về đêm, đặc biệt thưởng thức không khí chợ đêm tại Luôngphabang.

Ngày 6: LUÔNGPHABANG – XIÊNG KHOẢNG (Ăn 3 bữa)

Ăn sáng. Đoàn khởi hành về Xiêng Khoảng. Ăn trưa. Chiều trên đường về, đoàn ghé tham quan Cánh Đồng Chum 1, nơi tập trung những chiếc chum lớn nằm rải rác trên một cánh đồng rộng lớn. Theo các nhà nghiên cứu cho đến bây giờ vẫn chưa xác định được mục đích sử dụng nhữ chiếc chum lớn này: có thể dùng để đựng lúa gạo, hoặc đựng tro cốt,.. Ăn tối và nghỉ đêm tại Phonsavan.

Ngày 7: XIÊNG KHOẢNG – HÀ NỘI - HẠ LONG (Ăn 3 bữa)

Ăn sáng. Đoàn lên đường về Thanh Hóa. qua khẩu Nặm Cắn đường 7. Ăn trưa tại Mường Xén. Ăn tối tại Cẩm Thủy. 22h30 về tới Hạ Long . Hướng dẫn viên và lái xe chia tay đoàn. Kết thúc chương trình./.', N'Images/Trang chu/Quoc te/lao-1.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT17', N'Chương trình du lịch Malaysia', N'Hàng ngày', N'4 ngày 3 đêm', N'Kuala Lumpur', N'12.000.000', N'Malaysia không ồn ào như ở Thái Lan, cũng không hấp dẫn như vẻ đẹp hiện đại và hào nhoáng của Singapore nhưng Malaysia vẫn đầy quyến rũ bởi...', N'Malaysia không ồn ào như ở Thái Lan, cũng không hấp dẫn như vẻ đẹp hiện đại và hào nhoáng của Singapore nhưng Malaysia vẫn đầy quyến rũ bởi một vẻ đẹp huyền bí, cổ kính và cũng không kém phần hiện đại. Chương trình du lịch Malaysia-Kuala Lumpur – Getting 4 ngày 3 đêm do Công ty Du lịch As tổ chức, sẽ đồng hành cùng du khách đến với vương quốc Malaysia tuyệt đẹp và hòa mình cùng mùa lễ hội mua sắm, đến với thủ đô Kuala Lumpur nổi tiếng với tháp đôi Petronas cao nổi tiếng thế giới, cao nguyên Genting và khu giải trí Theme Park, thành phố thông minh Putrajaya.…', N'Images/Trang chu/Quoc te/malaysia1.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT18', N'Hạ Long - Hà Nội - BangKok - Pattaya', N'Hàng ngày', N'5 ngày 4 đêm', N'Bangkok, Pattaya', N'8.000.000', N'Ngày thứ nhất: Hạ Long – Hà Nội – Thái Lan (Pattaya) Xe và hướng dẫn viên của Công ty Cổ Phần Du Lịch Quốc Tế...', N'Ngày thứ nhất: Hạ Long – Hà Nội – Thái Lan (Pattaya)

Xe và hướng dẫn viên của Công ty Cổ Phần Du Lịch Quốc Tế Asian đón đoàn lên xe đi thẳng sân bay Nội Bài, đáp chuyến bay đi Thái Lan. Máy bay hạ cánh xuống sân bay quốc tế Suvarnabhumi của Thái Lan, xe và hướng dẫn viên địa phương đón đoàn và đưa đoàn đi ăn trưa. Sau bữa trưa, đoàn đi tham quan Trại Hổ và khởi hành đi xuống thành phố biển Pattaya nổi tiếng của Thái Lan. Du khách tới Pattaya nhận phòng tại khách sạn và đi ăn tối tại nhà hàng trong trung tâm thành phố. Buổi tối, du khách tự do tham quan thành phố Pattaya và thưởng thức cuộc sống của người dân nơi đây về đêm theo sự hướng dẫn của Hướng dẫn viên địa phương.

Ngày thứ hai: Khu du lịch nổi tiếng Pattaya

Sau khi ăn sáng tại khách sạn, quý khách ra biển, lên tàu cao tốc đi thăm đảo San Hô - hòn đảo lớn nhất Pattaya với diện tích khoảng 4 km2 gồm các bãi biển sạch và đẹp tuyệt vời. Trên đảo, du khách sẽ tự do tắm biển hoặc tham dự các trò chơi giải trí trên biển theo sự chỉ dẫn của Hướng dẫn viên địa phương như đi tàu có đáy bằng kính trong để quan sát các rặng san hô và thế giới dưới nước đầy màu sắc, lặn biển, lướt ván buồm, trượt ván, nhảy dù, bơi lội...Quý khách trở về thành phố và ăn trưa tại khách sạn. Buổi chiều, xe đưa đoàn thăm quan Trung tâm mỹ nghệ vàng bạc đá quý Hoàng Gia; đi thuyền tham quan Chợ nổi bốn phương; ăn tối tại nhà hàng trong thành phố. Sau bữa tối, đoàn thưởng thức chương trình biểu diễn tại khu du lịch theo sự bố trí của Hướng dẫn viên. Kết thúc chương trình, đoàn về khách sạn nghỉ ngơi.

Ngày thứ ba: Pattaya - Bangkok

Quý khách sau khi ăn sáng tại khách sạn, đoàn trả phòng và lên đường trở về Bangkok. Trên đường về Bangkok ghé thăm Vườn Bướm. Về đến Bangkok, đoàn tham quan Vườn thú thiên nhiên Khao Kheow – Khu bảo tồn động vật hoang dã, ăn trưa tại nhà hàng trong Vườn thú Khao kheow. Sau bữa trưa, đoàn tham quan Trung tâm thuộc da lớn nhất Bangkok và về nhận phòng khách sạn ở Bangkok, ăn tối với Lẩu Suki nổi tiếng của Thái lan tại nhà hàng trong khách sạn. Sau bữa tối, đoàn về phòng nghỉ ngơi hoặc tự do tham quan thành phố Bangkok về đêm theo sự hướng dẫn của Hướng dẫn viên.

Ngày thứ tư: Bangkok

Sau bữa sáng,  xe và Hướng dẫn viên đưa đoàn đến với điểm tham quan Cung điện Mùa hè – Vimannek; Nhà Quốc hội của Thái Lan; Trại rắn. Ăn trưa Buffet tại Baiyoke Sky (Tòa nhà 81 tầng). Thời gian còn lại quý khách tự do mua sắm tại các siêu thị nổi tiếng như Tokyu, Marboonkhoong, Platunium...; ăn tối tại nhà hàng trong thành phố,  sau đó về khách sạn nghỉ ngơi hoặc tự do tham quan thành phố về đêm.

Ngày thứ năm: Bangkok - Hà nội - Ha Long, kết thúc chuwong trình tham quan

Sau bữa sáng tại khách sạn, đoàn đi tham quan Chùa Phật Vàng – tượng Phật ngồi bằng vàng lớn nhất Thế giới cao 5m và nặng 5,5 tấn. Đoàn trả phòng khách sạn, trên đường đi, đoàn ghé thăm cửa hàng trưng bày sản phẩm Socola, sau đó đáp chuyến bay về Hà Nội. Máy bay hạ cánh xuống sân bay Nội Bài, Xe của Công ty Cổ Phần Du Lịch Quốc Tế Asian đón đoàn và đưa đoàn về Hạ Long, kết thúc chuyến tham quan du lịch khám phá bổ ích.', N'Images/Trang chu/Quoc te/thailan.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT19', N'Tour Hạ Long – Singapore – Malaysia', N'Hàng ngày', N'7 ngày 6 đêm', N'Singapore, Malaysia', N'15.790.000', N'Singapore và Malaysia - hai quốc gia được cả thế giới biết đến với ngành du lịch và giải trí rất hấp dẫn, là điểm đến thú vị với...', N'Singapore và Malaysia - hai quốc gia được cả thế giới biết đến với ngành du lịch và giải trí rất hấp dẫn, là điểm đến thú vị với nhiều địa danh du lịch và giải trí nổi tiếng như: Sentosa kì thú, vườn thú Safari hoang dã, phố Orchard – thiên đường mua sắm, phố cổ Malacca, cao nguyên Genting nổi tiếng…Đây là một chuyến du lịch chứa đựng nhiều điều thú vị và mới lạ đang chờ bạn khám phá. Một thành phố Singapore năng động với nhiều nét tương phản và màu sắc sinh động, luôn luôn tràn đầy sức sống, là hiện thân cho những gì tốt đẹp nhất của hai nền văn hoá Đông Tây. Một Malaysia huyền bí của phương Đông với nền văn hóa vừa quen, vừa lạ, vừa gần gũi, vừa có cái gì đó rất riêng của nơi đây từ lâu đã thu hút du khách khắp mọi nơi ghé thăm.

Không ầm ĩ với các chốn ăn chơi như ở Thái Lan, không hấp dẫn bởi vẻ đẹp hiện đại và hào nhoáng như Singapore nhưng Malaysia vẫn đầy quyến rũ bởi một vẻ đẹp huyền bí, cổ kính và cũng không kém phần hiện đại. Những thành phố lớn thì lung linh sang trọng với những tòa tháp bằng kính cao nhất nhì thế giới, khu vực ngoại ô thì những cánh đồng, những rừng cây bạt ngàn bên cạnh những ngôi nhà nhỏ theo phong cách truyền thống. Những khu khách sạn, nhà nghỉ sa hoa bên cạnh những bãi biển hoang sơ và thanh bình, đẹp mê hồn.

Ngoài ra việc di chuyển sang các nước khác trong khu vực dễ dàng cũng là một trong những lý do hấp dẫn du khách. Có rất nhiều cách để di chuyển từ Malaysia sang Singapore từ máy bay, tàu điện cho tới các loại xe buýt. Chỉ mất khoảng 5 tiếng đồng hồ (kể cả thời gian làm giấy tờ xuất nhập cảnh) là du khách đã có thể đặt chân tới một trong những đất nước hiện đại nhất Châu Á.', N'Images/Trang chu/Quoc te/singapore.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT2', N'Du lịch bờ Đông Tây Hoa Kỳ', N'Hàng ngày', N'11 ngày 10 đêm', N'Đông Tây Hoa Kỳ', N'74.900.000', N'NGÀY 1 : HÀ NỘI – SEOUL (Ăn/Nghỉ đêm trên MB) Chiều: Xe và hướng dẫn Công ty Cổ Phần Du Lịch Quốc Tế Asian...', N'NGÀY 1  : HÀ NỘI – SEOUL  (Ăn/Nghỉ đêm trên MB)
Chiều: Xe và hướng dẫn Công ty Cổ Phần Du Lịch Quốc Tế Asian đón đoàn tại Hạ Long. Khởi hành ra sân bay Nội Bài khởi hành đi New York (quá cảnh Seoul) . Chuyến bay KE680 23.35 – 05.50. Nghỉ đêm trên máy bay.

NGÀY 2  : SEOUL - NEW YORK  (Ăn trưa, chiều)
05h50 Đoàn đến phi trường Quốc tế Incheon – Một trong những sân bay nhộn nhịp nhất thế giới. Quý khách tự do mua sắm hàng miễn thuế, ăn trưa và làm thủ tục chuyển tiếp chuyến bay từ Seoul vượt Thái Bình Dương đi thành phố New York lúc 11h00. Quý khách nghỉ đêm trên máy bay.Vượt tuyến đổi múi giờ
11h30: (Giờ Hoa Kỳ). Máy bay đến New York. Đoàn làm thủ tục nhập cảnh, xe và HDV địa phương đón đoàn đưa về trung tâm thành phố dùng cơm tối và về khách sạn nhận phòng nghỉ ngơi. Khách sạn Spring Hills Suites*** hoặc tương đương

NGÀY 3 : NEW YORK  (Ăn sáng, trưa , chiều )
Đoàn tham quan thành phố New York với những địa danh nổi tiếng: điểm 0 hay còn gọi là Ground Zezo – Tàn tích của Trung tâm thương mại thế giới sau sự kiện 11/9, Trụ sở Liên Hiệp Quốc – nơi làm việc của Hội đồng bảo an  và những hội đồng khác của tổ chức Liên Hiệp Quốc. Trung tâm thương mại Rockerfeller – Trung tâm thương mại sầm uất, nơi đặt đại bảng doanh của kênh truyền hình NBC, nơi tập trung các cưả hàng đồ hiệu đắt tiền. Đại lộ 5 – Trung tâm thời trang của nước Mỹ, nơi tập trung các sàn Catwalk và các thương hiệu thời trang nổi tiếng trên thế giới, phố tài chính Wall Street - nơi tọa lạc của sàn giao dịch chứng khoán New York và các trung tâm tài chính ngân hàng. Nơi đây còn được xem là trung tâm tài chính của thế giới. Mỗi chuyển động của phố Wall ảnh hưởng đến tình hình tài chính toàn cầu. Tham quan Quảng trường thời đại (Time Square) - Quảng trường trung tâm thành phố New York rực rỡ với những ánh đèn và bảng quảng cáo  - đây là nơi thị trưởng thành phố phát biểu trước công chúng và tổ chức những sự kiện lớn của New York. Đoàn đi du thuyền tham quan Tượng Nũ Thần Tự Do – biểu tượng của nước Mỹ, biểu tượng của tinh thần Mỹ - tinh thần tự do. Đoàn ngắm nhìn và chụp hình khu Mahattan với những tòa nhà chọc trời từ du thuyền trên sông Hudson thơ mộng, thăm quan khu phố Tàu – khu China Town lớn nhất và tập trung cộng đồng người Hoa lớn nhất trên đất nước Hoa Kỳ. Đoàn dùng cơm chiều và trở về khách sạn nghỉ ngơi. Khách sạn Crown Plaza  *** hoặc tương đương

NGÀY 4 : NEW YORK – WASHINGTON DC  (Ăn sáng, trưa , chiều )
Ăn sáng tại khách sạn. Đoàn khởi hành đi thành phố Washington D.C, trên đường đoàn dừng lại tham quan thành phố Philadenphia. Đến Washington D.C, tham quan White House (Nhà Trắng) – nơi ở và làm việc của đương kim Tổng thống Mỹ. Điện Capitol – tòa nhà lưỡng viện quốc hội. Tòa án tối cao, Nhà máy in tiền giấy – USD, đài tưởng niệm Washington, Nhà lưu niệm Abraham Lincoln với Bức tường kỷ niệm chiến tranh Việt Nam. Ăn trưa tại nhà hàng. Đoàn tiếp tục tham quan bên ngoài Lầu 5 góc – Bộ Quốc Phòng, Bảo tàng hàng không không gian - chiêm ngưỡng phi thuyền Appollo đầu tiên đáp xuống mặt trăng, các mô hình máy bay từ lúc sơ khai đến hiện đại. Tiếp tục tham quan Bảo tàng Lịch sự Tự nhiên, chiêm ngưỡng Blue Hope. Ăn tối tại nhà hàng. Nghỉ đêm tại khách sạn Couryard by Mariott*** hoặc tương

NGÀY 5 :  WASHINGTON D.C – LAS VEGAS  (Ăn sáng, trưa , chiều )
Sau bữa sáng tại khách sạn . Đoàn làm thủ tục trả phòng, xe đón đoàn ra sân bay đáp chuyến bay nội địa AA1127 lúc 8.40 – 113.30//AA519 12.10 – 13.05 đi Las Vegas (quá cảnh Dalat) Tới Las Vegas, xe đón đoàn đi ăn trưa và về khách sạn nhận phòng
18h00: Ăn tối, sau đó đoàn tham tham quan thành phố Las Vegas về đêm thật rực rỡ và hoành tráng trên Đại lộ chính Las Vegas Strip. Từ cầu vượt Tropicana, chụp hình Tượng sư tử MGM và Casino New York, đi bộ thăm Chuồng Sư tử ngay tại lobby, sau đó lên xe thăm vườn hoa xinh đẹp nhất thế giới  tại Bellagio, quảng trường La Mã tại Casino Hotel Caesar,núi lửa phun tại Casino Mirage, xem show hải tặc. Tham quan Casino Paris với tháp Eiffel, đường phố Paris và các quán cà phê vỉa hè ở khu phố Latin
Quý khách có thể thưởng thức chương trình show được dàn dựng hoành tráng: Jubillee show, O show (chi phí tự túc).Bên cạnh đó , đoàn có thể thử vận may tại những sòng bài vào loại lớn nhất thế giới .
Nghỉ đêm tại khách sạn Las Vegas Luxor Hotel *** hoặc tương đương

NGÀY 6 :  LAS VEGAS- HOOVERDAM   (Ăn sáng, trưa , chiều )
07h30 Sau bữa sáng tại khách sạn. Xe đón đoàn khởi hành tham quan đập nước Hooverdam nổi tiếng – cách 30 dặm về phía Nam của thành phố Las Vegas, nằm trên đại lộ 93 và ngay ranh giới giữa bang Nevada và Arizona, tham quan Red Rock – miếng núi lửa của hàng ngàn năm trước, nay trở thành cảnh đẹp thiên nhiên hùng vỹ, nơi hàng năm diễn ra cuộc thi leo núi.
11h45 Đoàn ăn trưa tại nhà hàng.Chiều xe đưa quý khách về lại tham quan Las Vegas. Trên đường quý khách tha hồ mua sắm tại trung tâm Outlet lớn nhất nước Mỹ với hàng trăm thương hiệu thời trang nổi tiếng với giá cực rẻ. Ăn tối tại nhà hàng, sau đó đoàn tự do thăm quan thành phố Las Vegas về đêm. Nghỉ đêm tại khách sạn Las Vegas Luxor Hotel*** hoặc tương đương

NGÀY 7 :  LAS VEGAS- LOS ANGELES  (Ăn sáng, trưa , chiều )
Ăn sáng tại nhà hàng. Đoàn làm thủ tục trả phòng , xe đưa đoàn khởi hành đi Los Angeles. Trên đường ghé thăm và mua sắm tại chuỗi siêu thị khổng lồ Outlet Barstow. Ăn trưa và shoping hàng hiệu siêu giảm giá. Đoàn tiếp tục về Los Angeles. Đến nơi, đoàn tham quan Litter Saigon, Phước Lộc Thọ. Ăn tối tại khu China Town. Đoàn nhận phòng nghỉ ngơi tại khách sạn Los Angeles Holliday Inn*** hoặc tương đương

NGÀY 8  :  LOS ANGELES – SAN DIEGO  (Ăn sáng, trưa , chiều )
Sau bữa ăn sáng tại khách sạn, đoàn khởi hành đi San Diego- thành phố đông người Việt sinh sống xếp thứ 4 của tiểu bang California. Đến San Diego, quý khách sẽ được chiêm ngưỡng vẻ đẹp mê hồn của thành phố biển đẹp nhất nhì nước Mỹ, nơi đây còn là căn cứ Hải Quân của Hoa Kỳ với tàu hạm đội Hải Quân Hoa Kỳ US Miswaym chụp hình với bức tượng chàng lính Hải Quân và cô y tá nổi tiếng – một trong những biểu tượng của thành phố cảng xinh đẹp.Mua sắm và dạo bộ trong khu phố cổ 400 năm tuổi Balboa La Jolla với khu biệt thự mang đậm kiến trúc Tây Ba Nha.Ăn trưa hải sản. Chiều quý khách sẽ có dịp tham quan cây cầu đẹp tuyệt bắc qua vịnh San Diego, thăm quan hòn đảo thơ mộng Coronado với bãi cát dài thơ mộng – nơi đã từng tiếp đón nhiều chính khách và doanh nhân nổi tiếng thế giới.Chiều đoàn trở về Los Angeles mua sắm Vitamin – Thực phẩm chức năng nổi tiếng thế giới
Sau đó xe đưa quý khách trở về Los Angeles. Nghỉ đêm tại khách sạn Los Angeles Holliday Inn*** hoặc tương đương

NGÀY 9  :  LOS ANGELES - UNIVERSAL     (Ăn sáng, trưa , chiều )
Đoàn ăn sáng tại nhà hàng. Xe đưa đoàn đi tham quan Đại lộ Hollywood – nơi ghi danh các ngôi sao trong làng giải trí Hoa Kỳ, tham quan nhà hát Kodak – nơi diễn ra lễ trao giải Oscar hàng năm, nhà hát China – nơi trình chiếu ra mắt các bộ phim trước khi phát hành. Quý khách chụp hình lưu niệm tại nơi in dấu tay , chữ ký của các diễn viên điện ảnh nổi tiếng
12h30 Đoàn dùng bữa trưa tại nhà hàng
14h00 Đoàn đi tham quan Trường quay Universal – kinh đô điện ảnh thế giới, là nơi ra đời những cảnh quay kỹ xảo kinh hoàng làm hồi hộp hàng triệu trái tim khán giả. Đến đây quý khách như quay ngược thời gian về với Công viên Kỷ Jura đối diện với khủng long ăn thịt người T-Rex, hay tận mắt chứng kiến cuộc chiến trên biển tại Thế giới nước – Waterworld, thử cảm giác động đất hay nín thở trước những trận đấu súng gây cấn của các chàng cowboy trong các bộ phim Miền Tây hoang dã….
19h00 Đoàn dùng bữa tối tại nhà hàng.Nghỉ đêm tại khách sạn Los Angeles Holliday Inn*** hoặc tương đương

NGÀY 10  + 11  : LOS ANGELES – HANOI        (Ăn sáng, trưa , chiều )
08h30 Xe đưa đoàn ra sân bay. Làm thủ tục xuất cảnh Hoa Kỳ, đáp chuyến bay KE18 khởi hành lúc 12h30 (ngày thứ 10) Máy bay cất cánh từ Los Angeles về Seoul
17h30 (ngày thứ 11) Đoàn đến Seoul. Đổi chuyến bay KE679 khởi hành về Hà Nội lúc 19h30
22h05: Đoàn tới Nội Bài, xe đưa đoàn đưa về điểm hẹn ban đầu tại Hạ Long. Kết thúc chuyến đi.', N'Images/Trang chu/Quoc te/uscapitoldome-0.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT20', N'Hạ Long - TP. Vinh - Lào', N'Hàng ngày', N'5 ngày 4 đêm', N'Viêng Chăn, Lào', N'4.800.000', N'Ngày 1: Hạ Long – TP Vinh (Ăn sáng, trưa, tối) Sáng : Xe và hướng dẫn viên đón đoàn tại điểm hẹn khởi hành đi Vinh....', N'Ngày 1: Hạ Long – TP Vinh (Ăn sáng, trưa, tối)
Sáng : Xe và hướng dẫn viên đón đoàn tại điểm hẹn khởi hành đi Vinh. Ăn trưa nhà hàng. Chiều đến Vinh, Đoàn nhận phòng khách sạn  (***). Ăn tối tại Khách sạn. Nghỉ đêm tự do tại Tp Vinh.


Ngày 02: TP Vinh - Viên Chăn (Ăn sáng, trưa, tối)

Sau khi ăn sáng, đoàn khởi hành đi Viêng Chăn theo quốc lộ 8. Quý khách có dịp chiêm ngưỡng dãy Trường Sơn hùng vĩ và cũng là biên giới tự nhiên giữa 2 nước Việt-Lào. Đoàn dùng bữa trưa tại thị trấn Laksao.



Sau bữa trưa đoàn tiếp tục đi Viêng Chăn. Trên đường Quý khách có dịp ngắm toàn cảnh nhà máy thuỷ điện Nặm Thơn I, chụp ảnh lưu niệm tại Đèo Đá, điểm cao nhất của đường 8, điểm này được du khách ví như Thạch Lâm, Trung Quốc.

Khoảng 18h, đoàn tới Thủ đô Viêng Chăn. Nhận phòng. Ăn tối.      

Buổi tối đoàn có thể khám phá Viêng Chăn về đêm bằng xe TUKTUK- một dạng taxi 3 bánh ở Viêng Chăn. Ngồi bên bờ sông Mekong và nhấp nháp cốc bia Lào cùng với các món nướng cũng là một thú vui vào buổi tối ở Viêng Chăn. Nghỉ đêm tại Viêng Chăn.


Ngày 03: Viên Chăn  (Ăn sáng, trưa, tối)      

Ăn sáng tại khách sạn. Đoàn bắt đầu chương trình tham quan Thủ đô Viêng Chăn lúc 8h. Điểm đầu tiên là Chùa Si Muong- chùa linh thiêng nhất thủ đô Viêng Chăn.

Điểm tiếp theo là Tượng đài Chiến thắng Patuxay- Khải Hoàn Môn của thủ đô Viêng Chăn, Thạt Luổng - biểu tượng của Phật giáo Tiểu thừa Lào, biểu tượng linh thiêng được in trên đồng tiền KIP của Lào. Tự do tham quan và mua sắm Bạc Lào tại trung tâm sản xuất Bạc nổi tiếng: Chintana. Đoàn dùng bữa trưa tại nhà hàng.



Sau bữa trưa, đoàn tham quan và mua sắm tại chợ Sáng- trung tâm thương mại của thủ đô VC.

Ăn tối nhà hàng. Nghỉ đêm tại Viêng Chăn.

Ngày 4: Viên Chăng – TP Vinh    (Ăn sáng, trưa, tối )                

Ăn sáng tại khách sạn. Đoàn khởi hành về Vinh. Trên đường ghé tham quan mua sắm hàng mỹ phẩm và đồ điện gia dụng tại chợ Laksao. Ăn trưa tại Laksao. Chiều về đến Vinh. Nhận phòng ăn tối tại khách sạn. Nghỉ đêm tại Vinh.

Ngày 5: TP Vinh – Hạ Long   (Ăn sáng, trưa)      

Ăn sáng tại khách sạn. Đoàn khởi hành về Hạ Long. Ăn trưa tại Ninh Bình. Chiều 16h về đến Hạ Long ăn tối. Hướng dẫn vien và lái xe chia tay đoàn. Kết thúc chương trình.', N'Images/Trang chu/Quoc te/1446016785-du-lich-lao8.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT21', N'HÀ NỘI - BANGKOK - PATTAYA - HÀ NỘI', N'Hàng ngày', N'5 ngày 4 đêm', N'BANGKOK - PATTAYA, Thái Lan', N'6.500.000', N'Ngày 1: HÀ NỘI – BANGKOK - PATTAYA (Ăn sáng, trưa, tối) - 08h00: Xe và hướng dẫn viên đón đoàn tại điểm hẹn đưa lên sân...', N'Ngày 1: HÀ NỘI – BANGKOK - PATTAYA (Ăn sáng, trưa, tối)
- 08h00: Xe và hướng dẫn viên đón đoàn tại điểm hẹn đưa lên sân bay Nội Bài, đáp chuyến bay VJ 901 lúc 11h05 đi Thái Lan - VƯƠNG QUỐC CỦA NỤ CƯỜI.

- 13h00: Tới sân bay Sunavarbhumi – Bangkok, Xe và hướng dẫn viên địa phương đón đoàn khởi hành đi thăm thành phố biển Pattaya. Đến Pattaya, nhận phòng khách sạn.   (***).

- Nghỉ đêm tại LK Paragon Hotel*** hoặc tương đương


Ngày 02: PATTAYA

- Sáng: Sau bữa sáng tại khách sạn quý khách đi canô cao tốc thăm quan đảo San Hô (Coran Island), có dịp tham gia các trò chơi trên biển như dù bay, trượt nước, lặn biển… ( chi phí tự túc).

- 11h30 Đoàn về đất liền ăn trưa tại nhà hàng.

- Chiều: Đoàn tiếp tục tham quan Vườn Nongnooch - với hàng ngàn loài Hoa Lan đẹp nhất trên thế giới và các loài giống cây hiếm trên thế giới, xem show biểu diễn của những chú voi thông minh & ngộ nghĩnh. Sau bữa tối tại nhà hàng, quý khách thưởng thức chương trình ca múa nhạc Alcaza show do các cô bê đê xinh đẹp và nổi tiếng của Thái Lan biểu diễn.

- Nghỉ đêm tại khách sạn LK Paragon Hotel*** hoặc tương đương.

 

Ngày 03: PATTAYA - BANGKOK        

- Sau bữa sáng, đoàn làm thủ tục trả phòng khách sạn và khởi hành về Bangkok. Trên đường đi, đoàn ghé thăm Vườn Bướm – nơi nuôi dưỡng hàng ngàn loài bướm lạ, độc đáo, thăm Trung tâm nghiên cứu rắn độc của hoàng gia Thái Lan - xem các màn biểu diễn bắt rắn bằng tay không, nghe dược sĩ giới thiệu và giải thích về công dụng của các loài rắn quý hiếm và thuốc rắn mà người Thái đã nghiên cứu cách đây hơn 100 năm, đoàn ghé thăm vườn thú Tiger Zoo – vườn thú lớn nhất Đông Nam Á để xem các màn biểu diễn đặc sắc của các chú Hổ, Voi ….

- Ăn trưa tại nhà hàng Sau bữa trưa, đoàn tham quan chùa Wat Yannawa, xưởng sản xuất đồ da. Đoàn thưởng thức bữa tối tại nhà hàng. Sau đó tự do khám phá Bangkok về đêm.

- Nghỉ đêm tại khách sạn Metro Resort Hotel**** hoặc tương đương.

 
 


Ngày 4:BANGKOK                    

- Sáng: Sau bữa sáng, đoàn đi thăm Cung điện mùa hè được xây dựng dưới thời vua Rama V,sau đó đoàn di chuyển đến thăm vườn thú lộ thiên Safari world – đến với nơi đây quý khách có cảm giác thích thú với các màn biểu diễn vui nhộn của cá heo, khỉ đấm box, chim lái xe… hoặc cảm giác mạnh hơn một chút là các show kể về Cuộc chiến đấu của những người ngoài hành tinh, Điệp viên 007… với các màn biểu diễn gay cấn, hồi hộp giống như các pha hành động nghẹt thở trong phim cao bồi của Mỹ. Du khách chưa kịp định thần sau tiếng đại bác nổ chát chúa với đám lửa bốc khói ngút trời phả cả hơi nóng vào mặt thì lại không kịp tránh dòng nước bắn lên tung tóe, ướt sũng cả người từ chiếc canô do một nữ chiến binh xinh đẹp cầm lái lướt ngang dòng sông trước mặt….

- Đoàn thưởng thức bữa trưa buffet tại Safari world. Chiều: đoàn tự do mua sắm tại các siêu thị nổi tiếng như Robinson, Big C…

- Nghỉ đêm tại Metro Resort Hotel**** hoặc tương đương.

Ngày 5: BANGKOK - HÀ NỘI         

- Sáng: Sau bữa sáng, đoàn tham quan đoàn tham quan Đền thờ tượng thần Bốn Mặt, Chùa Phật Vàng - bức tượng Phật ngồi cao 3 mét đúc bằng vàng khối, nặng 5,5 tấn. Người địa phương cho rằng bức tượng lớn nhất thế giới này biểu thị cho sự thịnh vượng và thuần khiết cũng như sức mạnh và quyền năng. Ăn trưa nghỉ ngơi. Sau đó đoàn khởi hành ra sân bay Suvarnabhumi làm thủ tục đáp chuyến bay VJ 902 lúc 14h10 về Hà Nội.

- 16h00: Đến sân bay Nội Bài, xe đón và đưa đoàn về điểm hẹn ban đầu. Chia tay đoàn, kết thúc chương trình.

', N'Images/Trang chu/Quoc te/bangkok-grand-palace-4.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT3', N'Du lịch Pháp - Bỉ - Hà Lan - Đức', N'Hàng ngày', N'10 ngày 9 đêm', N'Pháp, Bỉ, Hà Lan, Đức', N'82.990.000', N'NGÀY 1: HÀ NỘI – PARIS Xe và hướng dẫn viên công ty Asian travel đón Quý khách tại điểm hẹn tại Hạ Long khởi hành...', N'NGÀY 1: HÀ NỘI – PARIS 
Xe và hướng dẫn viên công ty Asian travel đón Quý khách tại điểm hẹn tại Hạ Long khởi hành ra sân bay Nội Bài đáp chuyến bay đi Paris (Vietnam Airlines hoặc Thai Airway). Quý khách ăn uống và nghỉ đêm trên máy bay. 

NGÀY 2: PARIS (ĂN TRƯA, TỐI) 
Sáng 06:45 đoàn đến sân bay Charles De Gaul – Paris. Đoàn lên tàu điện ngầm về khách sạn nhận phòng, gửi hành lý và bắt đầu khởi hành tham quan Thành phố Paris: Arc De Triomphe – Khải Hoàn Môn Champs Elysees – Đại lộ Thiên Đàng – là Đại lộ đẹp nhất Thế giới và còn là nơi tập trung nhiều cửa hàng sang trọng nhất của “Kinh Đô Ánh Sáng Paris”. Quảng trường Concorde Điện Invalides – Nơi có lăng mộ của Napoleon. Quý khách ăn trưa tại nhà hàng. Chiều: Đoàn tiếp tục tham quan: Tháp Eiffel – Tham quan kỳ quan thế giới tại tầng 2 - ngắm nhìn toàn cảnh của thủ đô Paris. Du thuyền trên dòng sông Seine- ngắm nhìn nhà thờ Đức Bà Paris, cầu Alexandre III, … Nhà thờ Đức Bà Paris – với tác phẩm văn học nổi tiếng “Thằng Gù ở nhà thờ Đức Bà” Đoàn ăn tối tại nhà hàng. Tối: Quý khách tự do nghỉ ngơi tại khách sạn hoặc tự thưởng cho mình với tiếc mục biểu diễn hoành tráng và đặc sắc nhất tại Paris “Lido Show” (chi phi tự túc) 

NGÀY 3: PARIS – LE LOUVRE (181km) (ĂN 3 BỮA) 
Quý khách dùng điểm tâm sáng tại khách sạn. Đoàn tiếp tục khởi hành tham quan Thành Phố: Viện Bảo Tàng Louvre – Nơi trưng bày các tác phẩm nghệ thuật tuyệt tác nhất của thế giới: tượng nữ thần sắc đẹp Venus, bức tranh nàng Mona Lisa, … Tham quan Quận 13, nơi cộng đồng người Việt sinh sống Ăn trưa tại nhà hàng. Chiều: Đoàn tiếp tục tham quan: Tham quan nhà hát Opera Tự do mua sắm tại Galary LaFayette, Printemps,… Ăn tối tại nhà hàng. Tối: Quý khách tự do nghi ngơi hoặc khám phá thành phố về đêm. 

NGÀY 4: PARIS – CUNG ĐIỆN VERSAILLES (22km) (ĂN 3 BỮA) 
Quý khách dùng điểm tâm sáng tại khách sạn. Khởi hành tham quan ngoại ô Paris: Cung điện Versailles - nơi còn lưu giữ các cổ vật của vua Louis 13, 14. Đoàn ăn trưa tại nhà hàng. Chiều: Đoàn tham quan: Khu hành chính mới La Defense với các kiến trúc hiện đại và hào nhoáng Tự do mua sắm tại các trung tâm thương mại nổi tiếng trên đại lộ Champs Elysees… Ăn tối tại nhà hàng. Tối: Quý khách tự do nghi ngơi hoặc khám phá thành phố về đêm 

NGÀY 5 : PARIS - BRUSSELS (305km) (ĂN 3 BỮA) 
Qúy khách dùng bữa sáng và trả phòng. 08:25 đoàn khởi hành đi Brussels – Thủ Đô của nước Bỉ bằng chuyến tàu Thalys 9315. 09:45 Đến Brussels, xe đưa đoàn đi tham quan thành phố: Bảo tàng Mô hình phân tử học “Atomium” (chụp ảnh bên ngoài) Quảng trường Grand Place Tượng Chú Bé Đứng Tè : Mannenken Pis. Ăn trưa tại nhà hàng. Chiều: Đoàn tự do tham quan và mua sắm. Đoàn ăn tối tại nhà hàng. Tối: Tự do khám phá thành phố Brussels về đêm. Nghỉ tại khách sạn (Brussels) 

NGÀY 6 : BRUSSELS - AMSTERDAM (203km) (ĂN 3 BỮA) 
Đoàn ăn sáng và trả phòng. Đáp tàu lửa hoặc xe đi Amsterdam - Một trong những thành phố cảng lớn nhất của Hà Lan. Đến Amsterdam, đoàn tham quan vườn hoa Tuylip – quốc hoa của Hà Lan, Cối xay gió – biểu tượng đặc trưng của đất nước. Đoàn ăn trưa tại nhà hàng. Chiều: Thăm Xưởng chế tác Kim Cương nổi tiếng “Coaster Diamond”. Du thuyền trên kênh đào ngắm cảnh Thành Phố thơ mộng. Tham quan và mua sắm tại quảng trường trung tâm. Đoàn dùng bữa tối tại nhà hàng. Tối: Khám phá và tìm hiểu khu Đèn đỏ - Khu giải trí về đêm nối tiếng châu Âu. Nghỉ tại khách sạn 

NGÀY 7: AMSTERDAM - COLOGNE (263km) (ĂN 3 BỮA) 
Sáng: Sau khi ăn sáng, đoàn tiếp tục khởi hành đi Cologne – thành phố miền Tây nước Đức với một số hãng nước hoa nổi tiếng bằng tàu lửa Inter City Express 105 khởi hành lúc 08h04 (hoặc xe du lịch). 10h45 đến Cologne. Nhận phòng khách sạn và dùng bữa trưa tại nhà hàng Chiều Đoàn tham quan thành phố: Thăm nhà thờ Kölner Dom Thăm nhà thờ Groß Sankt Martin Đoàn đi mua sắm tại trung tâm thương mại tại Köln Ăn tối tại nhà hàng Tối: Nghỉ đêm tại khách sạn (Köln) 

NGÀY 8: COLOGNE - BONN - FRANKFURT (30km+177km) (ĂN 3 BỮA) 
Đoàn dùng bữa sáng tại khách sạn. Xe khởi hành đưa đoàn đi thăm thành phố Bonn - Thủ đô của Tây Đức (cũ). Đoàn tham quan và chụp ảnh: Trường đại học Bonn, Universität Bonn. Nhà của nhạc sỹ nổi tiếng thế giới Beethoven (Beethoven Haus) Tòa thị chính cổ Altes Rathaus. Quý khách ăn trưa tại nhà hàng. Sau đó khởi hành đi Frankfurt. Chiều: Đoàn tới Frankfurt - Trung tâm tài chính của Đức. Quý khách tham quan thành phố: Nhà hát kịch Opéra Opernhaus Tòa Thị Chính Rathaus Quảng trường Romerberg Nhà thờ Nikolaikirche Khu phố náo nhiệt Kaiserstrasse. Đoàn ăn tối. Tối: Quý khách tự do tham quan thành phố. Nghỉ đêm tại khách sạn. 

NGÀY 9 : FRANKFURT – VIỆT NAM (ĂN SÁNG) 
Sau bữa sáng tại khách sạn, đoàn tự do tham quan và mua sắm. Xe khởi hành đưa đoàn ra sân bay làm thủ tục xuất cảnh và lên chuyến bay khởi hành về Việt Nam. Quý khách ăn và nghỉ trên máy bay. 

NGÀY 10 : HÀ NỘI - HẠ LONG
Đoàn về đến sân bay Nội Bài. Xe của Asian Travel tại sân bay đưa Quý khách về điểm hẹn ban đầu tại Hạ Long. Chia tay Quý khách. Hẹn gặp lại.NGÀY 1: HÀ NỘI – PARIS 
Xe và hướng dẫn viên công ty Asian travel đón Quý khách tại điểm hẹn tại Hạ Long khởi hành ra sân bay Nội Bài đáp chuyến bay đi Paris (Vietnam Airlines hoặc Thai Airway). Quý khách ăn uống và nghỉ đêm trên máy bay. 

NGÀY 2: PARIS (ĂN TRƯA, TỐI) 
Sáng 06:45 đoàn đến sân bay Charles De Gaul – Paris. Đoàn lên tàu điện ngầm về khách sạn nhận phòng, gửi hành lý và bắt đầu khởi hành tham quan Thành phố Paris: Arc De Triomphe – Khải Hoàn Môn Champs Elysees – Đại lộ Thiên Đàng – là Đại lộ đẹp nhất Thế giới và còn là nơi tập trung nhiều cửa hàng sang trọng nhất của “Kinh Đô Ánh Sáng Paris”. Quảng trường Concorde Điện Invalides – Nơi có lăng mộ của Napoleon. Quý khách ăn trưa tại nhà hàng. Chiều: Đoàn tiếp tục tham quan: Tháp Eiffel – Tham quan kỳ quan thế giới tại tầng 2 - ngắm nhìn toàn cảnh của thủ đô Paris. Du thuyền trên dòng sông Seine- ngắm nhìn nhà thờ Đức Bà Paris, cầu Alexandre III, … Nhà thờ Đức Bà Paris – với tác phẩm văn học nổi tiếng “Thằng Gù ở nhà thờ Đức Bà” Đoàn ăn tối tại nhà hàng. Tối: Quý khách tự do nghỉ ngơi tại khách sạn hoặc tự thưởng cho mình với tiếc mục biểu diễn hoành tráng và đặc sắc nhất tại Paris “Lido Show” (chi phi tự túc) 

NGÀY 3: PARIS – LE LOUVRE (181km) (ĂN 3 BỮA) 
Quý khách dùng điểm tâm sáng tại khách sạn. Đoàn tiếp tục khởi hành tham quan Thành Phố: Viện Bảo Tàng Louvre – Nơi trưng bày các tác phẩm nghệ thuật tuyệt tác nhất của thế giới: tượng nữ thần sắc đẹp Venus, bức tranh nàng Mona Lisa, … Tham quan Quận 13, nơi cộng đồng người Việt sinh sống Ăn trưa tại nhà hàng. Chiều: Đoàn tiếp tục tham quan: Tham quan nhà hát Opera Tự do mua sắm tại Galary LaFayette, Printemps,… Ăn tối tại nhà hàng. Tối: Quý khách tự do nghi ngơi hoặc khám phá thành phố về đêm. 

NGÀY 4: PARIS – CUNG ĐIỆN VERSAILLES (22km) (ĂN 3 BỮA) 
Quý khách dùng điểm tâm sáng tại khách sạn. Khởi hành tham quan ngoại ô Paris: Cung điện Versailles - nơi còn lưu giữ các cổ vật của vua Louis 13, 14. Đoàn ăn trưa tại nhà hàng. Chiều: Đoàn tham quan: Khu hành chính mới La Defense với các kiến trúc hiện đại và hào nhoáng Tự do mua sắm tại các trung tâm thương mại nổi tiếng trên đại lộ Champs Elysees… Ăn tối tại nhà hàng. Tối: Quý khách tự do nghi ngơi hoặc khám phá thành phố về đêm 

NGÀY 5 : PARIS - BRUSSELS (305km) (ĂN 3 BỮA) 
Qúy khách dùng bữa sáng và trả phòng. 08:25 đoàn khởi hành đi Brussels – Thủ Đô của nước Bỉ bằng chuyến tàu Thalys 9315. 09:45 Đến Brussels, xe đưa đoàn đi tham quan thành phố: Bảo tàng Mô hình phân tử học “Atomium” (chụp ảnh bên ngoài) Quảng trường Grand Place Tượng Chú Bé Đứng Tè : Mannenken Pis. Ăn trưa tại nhà hàng. Chiều: Đoàn tự do tham quan và mua sắm. Đoàn ăn tối tại nhà hàng. Tối: Tự do khám phá thành phố Brussels về đêm. Nghỉ tại khách sạn (Brussels) 

NGÀY 6 : BRUSSELS - AMSTERDAM (203km) (ĂN 3 BỮA) 
Đoàn ăn sáng và trả phòng. Đáp tàu lửa hoặc xe đi Amsterdam - Một trong những thành phố cảng lớn nhất của Hà Lan. Đến Amsterdam, đoàn tham quan vườn hoa Tuylip – quốc hoa của Hà Lan, Cối xay gió – biểu tượng đặc trưng của đất nước. Đoàn ăn trưa tại nhà hàng. Chiều: Thăm Xưởng chế tác Kim Cương nổi tiếng “Coaster Diamond”. Du thuyền trên kênh đào ngắm cảnh Thành Phố thơ mộng. Tham quan và mua sắm tại quảng trường trung tâm. Đoàn dùng bữa tối tại nhà hàng. Tối: Khám phá và tìm hiểu khu Đèn đỏ - Khu giải trí về đêm nối tiếng châu Âu. Nghỉ tại khách sạn 

NGÀY 7: AMSTERDAM - COLOGNE (263km) (ĂN 3 BỮA) 
Sáng: Sau khi ăn sáng, đoàn tiếp tục khởi hành đi Cologne – thành phố miền Tây nước Đức với một số hãng nước hoa nổi tiếng bằng tàu lửa Inter City Express 105 khởi hành lúc 08h04 (hoặc xe du lịch). 10h45 đến Cologne. Nhận phòng khách sạn và dùng bữa trưa tại nhà hàng Chiều Đoàn tham quan thành phố: Thăm nhà thờ Kölner Dom Thăm nhà thờ Groß Sankt Martin Đoàn đi mua sắm tại trung tâm thương mại tại Köln Ăn tối tại nhà hàng Tối: Nghỉ đêm tại khách sạn (Köln) 

NGÀY 8: COLOGNE - BONN - FRANKFURT (30km+177km) (ĂN 3 BỮA) 
Đoàn dùng bữa sáng tại khách sạn. Xe khởi hành đưa đoàn đi thăm thành phố Bonn - Thủ đô của Tây Đức (cũ). Đoàn tham quan và chụp ảnh: Trường đại học Bonn, Universität Bonn. Nhà của nhạc sỹ nổi tiếng thế giới Beethoven (Beethoven Haus) Tòa thị chính cổ Altes Rathaus. Quý khách ăn trưa tại nhà hàng. Sau đó khởi hành đi Frankfurt. Chiều: Đoàn tới Frankfurt - Trung tâm tài chính của Đức. Quý khách tham quan thành phố: Nhà hát kịch Opéra Opernhaus Tòa Thị Chính Rathaus Quảng trường Romerberg Nhà thờ Nikolaikirche Khu phố náo nhiệt Kaiserstrasse. Đoàn ăn tối. Tối: Quý khách tự do tham quan thành phố. Nghỉ đêm tại khách sạn. 

NGÀY 9 : FRANKFURT – VIỆT NAM (ĂN SÁNG) 
Sau bữa sáng tại khách sạn, đoàn tự do tham quan và mua sắm. Xe khởi hành đưa đoàn ra sân bay làm thủ tục xuất cảnh và lên chuyến bay khởi hành về Việt Nam. Quý khách ăn và nghỉ trên máy bay. 

NGÀY 10 : HÀ NỘI - HẠ LONG
Đoàn về đến sân bay Nội Bài. Xe của Asian Travel tại sân bay đưa Quý khách về điểm hẹn ban đầu tại Hạ Long. Chia tay Quý khách. Hẹn gặp lại.', N'Images/Trang chu/Quoc te/eiffel-tower.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT4', N'Du lịch bờ Tây Hoa Kỳ', N'Hàng ngày', N'10 ngày 9 đêm', N'Hoa Kỳ', N'58.990.000', N'NGÀY 1 : HANOI – TAIPEI – LOS ANGELES 08h30: Xe và Hướng dẫn viên Asian Travel đón đoàn tại Hạ Long khởi hành đi...', N'NGÀY 1 :  HANOI – TAIPEI – LOS ANGELES

08h30: Xe và Hướng dẫn viên Asian Travel đón đoàn tại Hạ Long khởi hành đi sân bay quốc tế Nội Bài, làm thủ tục xuất cảnh và đáp chuyến bay CI792 11h35.
 đi Taipei – Đài Loan. 15h10 đoàn đến Teipei và đổi chuyển bay CI6 khởi hành đi Los Angeles lúc 16h40.  Quý khách nghỉ đêm trên máy bay. Vượt tuyến đổi múi giờ.
13h25: Đoàn đến Sân bay Los Angeles; làm thủ tục nhập cảnh. Sau đó, Xe và Hướng dẫn viên đón Đoàn về trung tâm thành phố.
Đoàn ghé thăm Liitle Saigon, Phước Lộc Thọ.
Đoàn dùng bữa tối tại nhà hàng. Nghỉ đêm tại khách sạn ở Los Angeles

NGÀY 2 : LOS ANGELES – LAS VEGAS (Ăn S, T, C)

Sáng: Đoàn  khởi hành đi Las Vegas. Trên đường đi, đoàn ghé dùng bữa trưa tại Oulet Barstow. Shopping.
Sau đó, Đoàn tiếp tục khởi hành đi Las Vegas.
Đoàn đến nhận phòng. Ăn tối tại nhà hàng.
Tối: Dạo bộ trên Đại lộ chính Las Vegas Strip, khám phá thành phố Las Vegas rực rỡ và sống động về đêm. Tham quan MGM Casino với bức tượng sư tử khổng lồ và chuồng sư tử ngay tại sảnh chờ; vườn hoa xinh đẹp nhất thế giới ở Bellagio Hotel; quảng trường La Mã ở Casino Hotel Caesear; tháp Eiffel, Khải Hoàn Môn và các quán cà phê vỉa hè trên đường phố Paris ở Paris Hotel. Tiếp tục xem núi lửa phun tại Casino Mirage, xem show hải tặc tại Treasure Island Hotel.. (chi phí Quý khách tự túc)  Đoàn nghỉ đêm tại Las Vegas

NGÀY 3 : LAS VEGAS - HOOVER DAM (Ăn S, T, C)

07h30: Sau bữa sáng tại khách sạn. Xe đón đoàn khởi hành tham quan Las Vegas và đập nước Hoover Dam nổi tiếng - cách 30 dặm về phía Nam của thành phố Las Vegas, nằm trên đại lộ 93 và ngay ranh giới giữa bang Nevada và Arizona.
11h45: Đoàn ăn trưa tại nhà hàng.
Chiều xe đưa Quý khách về lại Las Vegas.
Sau bữa tối tại nhà hàng.  Quý khách sẽ dành thời gian tư do thăm quan thành phố Las Vegas về đêm. (Các chi phí Quý khách tự túc) Nghỉ đêm tại Las Vegas.

NGÀY 4 :  LAS VEGAS – LOS ANGELES (Ăn S, T, C)

Sáng: Sau khi trả phòng, xe đưa đoàn đi ăn sáng. Ghé tham quan và chụp hình lưu niệm tại casino Luxor,khu liên hợp khách sạn được xây dựng theo kiến trúc kim tự tháp với tượng nhân sư lớn hơn tượng thật ở Ai Cập. Lên xe trở về Los Angles.
Chiều: Về đến  Los. Tập trung ăn chiều. Về khách sạn nhận lại hành lý và phòng (khách sạn Courtyard byMarriott Huntington Beach Fountain Valley hoặc tương đương). Nghỉ ngơi.

NGÀY 5 : HOLLYWOOD - UNIVERSAL STUDIO (Ăn S, T, C)

Sau bữa sáng tại khách sạn, Xe đưa Đoàn đi thăm quan Thành phố Los Angeles. Thăm Đại lộ Danh vọng (Hollywood Boulervard) - nơi vinh danh những ngôi sao nổi tiếng trong làng nghệ thuật thế giới như Marilyn Monroe, Charlie Chaplin, Michael Jackson; rạp Chinese Mann - nơi in dấu tay, dấu chân của các tài tử điện ảnh được yêu thích như Anthony Hopkin, Harrison Ford; rạp Kodak với lễ trao giải Oscar hoành tráng hàng năm. Tiếp tục tham quan đồi Beverly - khu biệt thự của các ngôi sao Hollywood; đại lộ Rodeo và Sunset - khu mua sắm trứ danh của những tên tuổi lớn trong ngành nghệ thuật thứ 7.
12h00: Đoàn dùng bữa trưa tại nhà hang.
13h30: Đoàn khám phá phim trường Universal Studios – nơi Hollywood thực hiện nhiều bộ phim trứ danh: Người Nhện, Công Viên Kỷ Jura, Xác ướp Ai Cập, King Kong…. Tại đây, du khách có thể say sưa ghi hình trong khung cảnh của các bộ phim nổi tiếng thế giới hay hồi hộp cực độ khi tận mắt chứng kiến những hiệu ứng điện ảnh như: xe hơi nổ tung trên không trung, động đất, lũ quét,..
18h00: Đoàn dùng bữa tối tại nhà hàng. Nghỉ đêm tại khách sạn ở Los Angeles

NGÀY 6 :  LOS ANGELES – SAN DIEGO (Ăn S, T, C)

Sau bữa sáng tại khách sạn. Xe đưa đoàn khởi hành đi San Diego – Thành phố đông người Việt sinh sống xếp thứ 4 của tiểu bang California.
Đến San Diego Quý khách sẽ được chiêm ngưỡng vẻ đẹp mê hồn của thành phố biển đẹp nhất nhì nước Mỹ, nơi đây còn là căn cứ Hải Quân của Hoa Kỳ. Quý khách sẽ có dịp tham quan cây cầu đẹp tuyệt đẹp bắc qua vịnh San Diego.
Đoàn tiếp tục chương trình tham quan Thế giới nước - Sea World: Tại đây quý khách sẽ có dịp thưởng thức những chương trình biểu diễn đặc sắc như: show cá heo, show hải cẩu. Xem chiếu phim 4 chiều, tham gia những trò chơi mạo hiểm đặc sắc, chiêm ngưỡng những loài thú quý hiếm…
Đoàn ăn trưa trong Sea World. Sau khi kết thúc một ngày tham quan thỏa thích và đắm mình trong Thế giới nước hấp dẫn.
Nếu còn thời gian, xe đưa Đoàn đến gần Biên giới Mexico chụp ảnh và mua quà lưu niệm
Sau đó, quý khách sẽ trở về Los Angeles.
Đoàn dùng bữa tối. Nghỉ đêm tại Los Angeles.

NGÀY 7 :  LOS ANGELES – SAN JOSE (Ăn S, T, C)

Sáng: Trả phòng. Ăn sáng tại khách sạn (buffet). Lên xe đi San Jose. Trên đường đi, qua những thung lũng phì nhiêu vùng Trung Bộ Cali, những cánh đồng trồng bông, đào, trái cây trải dài mênh mông bất tận. Đến thăm làng Solvang, một phố nhỏ đặc trưng của người Đan Mạch, nơi có những máy xay bột Windmills, bành ngọt và bia...
Chiều: Đến San Jose. Ăn tối tại khu chợ Việt Nam Lion Plaza. Nhận phòng khách sạn Sheraton San Jose - 1801 Barber Lane, Milpitas, CA 95035(hoặc tương đương).

NGÀY 8 : SAN JOSE – SAN FRANCISCO (Ăn S, T, C)

Sáng: Ăn sáng tại khách sạn (buffet). Trả phòng. Lên xe đi San Francisco (45 phút): Tham quan Golden Gate (Cầu cổng vàng) - biểu tượng của nước Mỹ bắt ngang qua vịnh San Francisco, ghé đường hoaLombard - con đường dốc nghiêng 40 độ quanh co uốn lượn với hai bên lối đi trồng rất nhiều hoa, những luống hoa ôn đới nhiều màu sắc gần như nở rực rỡ quanh năm, khiến giá nhà ở khu vực này được xếp vào loại đắt đỏ nhất San Francisco. Sau đó, đến thămBảo tàng nghệ thuật (Art Esplanade).  Ăn trưa tại khu phố Tàu.


Chiều: Ra Fisherman Warf (Bến tàu ngư phủ), nếm thử đặc sản cháo hào trong ổ bánh mì truyền thống, tham quan 300 con hải cẩu tại Pier 39, mua quà lưu niệm, shopping...hoặc lên tàu thăm Vịnh San Francisco trong vòng 1h (chi phí từ 22$ trở lên tự túc). 5h00 chiều: Lên xe đến Union Square tham quan khu Down Town.
Tập trung, ăn tối. Ra sân bay làm thủ tục xuất cảnh đáp chuyến bay đêm vượt Thái Bình Dương về Taipei (ăn 2 bữa trên máy bay) hoặc người nhà đến khách sạn đón quý khách về thăm thăm thân nhân


NGÀY 9 -  NGÀY 10 : SAN FRANCISCO – PHI TRƯỜNG – TEIPEI  - HÀ NỘI  (Ăn S, MB)

Đoàn làm thủ tục ra sân bay. Làm thủ tục xuất cảnh Hoa Kỳ. Sau đó đáp chuyến bay CI3 khởi hành lúc 00h05 vể Teipei, Đài Loan.
06h05: (Ngày thứ 10) Đoàn đến Taipei. Đổi chuyến bay CI791 khởi hành về Hà Nội lúc 08h25.
10h35: Đoàn tới Nội Bài, Xe của công ty Asian Travel tại sân bay, đưa đoàn về điểm hẹn ban đầu tại Hạ Long. Kết thúc chuyến tham quan.', N'Images/Trang chu/Quoc te/las-vegas.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT5', N'Du lịch Pháp', N'Hàng ngày', N'6 ngày 5 đêm', N'Pháp', N'50.500.000', N'Du lịch Châu Âu: Du lịch Pháp Giá: 50,500,000 VND/khách (Áp dụng cho đoàn từ 10 khách trở lên) Ngày 1 : Du lịch Hà...
ĐẶT TOUR', N'Ngày 1 :  Du lịch Hà Nội  - Paris

Xe và hướng dẫn viên công ty du lịch Asian Travel đón đoàn tại điểm hẹn tại Hạ Long đưa đoàn ra sân bay Nội Bài. Đáp chuyến bay đi Paris. Nghỉ đêm trên máy bay.

Ngày 2 : Du lịch Paris (Ăn sáng MB, T, C)

Sáng hôm sau, đến Paris – xe đón đoàn tại ga sân bay Charles De Gaule và đưa đoàn đi tham quan thành phố Paris: Thủ đô của nước Pháp, nơi được mệnh danh là" Thành phố ánh sáng". Pais còn là thành phố nổi tiếng về thời trang , nước hoa và các đồ trang sức. Chính điều này đã tạo cho thành phố sự danh tiếng về thanh lịch và hương vị. Nhiều lễ hội , buổi hoà nhạc và các nhà hát cùng với những hộp đêm nổi tiếng và lấp lánh tráng lệ đã tạo cho thành phố sống động. Nhiều cây cầu , thuyền và các tượng đài cao lớn đã cung cấp những thắng cảnh tuyệt vời cho thành phố.Quý khách tham quan Notre Dame De Paris (Nhà Thờ Đức Bà Paris), leo 376 bậc thang lên Nhà thờ ngắm toàn cảnh sông Seine, Vườn Hoàng Gia và công Viên St.Cloud. Đặt chân lên viên gạch thiêng trước tam cấp của nhà Thờ để trở thành người giàu có (theo truyền thuyết).
Chụp hình lưu niệm tại quảng trường Place de la Concorde, thăm cổng khải hoàn   môn Arc De Triomphe, nhà thờ Sarce Coure trên đồi Mont Mart Hil. Du thuyền trên
sông Sein: Quý khách sẽ thoả sức chụp hình các thắng cảnh nổi tiếng của Paris trên du thuyền: tháp Eiffel, nhà thờ Đức Bà Paris, Viện bảo tàng Văn hoá, tượng mẫu của Nữ thần Tự do và hàng chục cây cầu với đủ loại thiết kế khác nhau được xây dựng từ thế kỷ XV đến nay. Ăn tối tại nhà hàng.Tối nghỉ đêm khách sạn tại Paris.

Ngày 3 :  Du lịch Paris (Ăn S, T, C)

Ăn sáng tại khách sạn, Đoàn đi tham quan Viện Bảo Tàng Louvre - Cung điện trước đây của các đời Vua Pháp bắt đầu khởi công xây dựng từ năm 1902 và tiếp tục được mở rộng đến nay trở thành một trong những bảo tàng có những sưu tập nghệ thuật vĩ đại nhất của thế giới . Tại Louvre, du khách sẽ được chiêm ngưỡng các tác phẩm hội hoạ và điêu khắc thuộc các trường phái khác nhau trong từng giai đoạn lịch sử khác nhau của các quốc gia như: Pháp, La Mã cổ đại, Hy Lạp, Ai Cập. Dùng bữa trưa  tại nhà hàng địa phương.
Tiếp theo Quý khách tham quan Tháp Eiffel - Biểu tượng nổi tiếng nhất của Paris mà phải mất 26 tháng mới hoàn thành công trình xây dựng và dược khánh thành vào tháng 3 /1889 trong suốt Hội Chợ Thế Giới, tháp cao 320.75m. Vào buôỉ tối nó trở thành một biểu tượng toả sáng trong đêm giống như một đồ trang sức. Đến đây du khách được leo lên tầng 2 ngắm toàn cảnh thành phố với dòng sông Seine uốn lượn vây quanh các toà nhà kiến trúc cổ từ Thế kỷ XVII, XVIII và XIX. Tới đại lộ thiên đàng Champs – Elysse , Quý khách tự do tham quan đại lộ nổi tiếng gắn liền với niên đại từ nền Cộng hoà thứ hai, khi các nhà hàng và các dịch vụ vui chơi giải trí trở lên phổ biến..Ngày nay , đại lộ này là một trung tâm giải trí ,du lịch và thương mại sầm uất với những gian trưng bày xe ô tô, ngân hàng, cửa hàng tổng hợp , hãng hàng không, các nhà hàng, các câu lạc bộ sàn nhảy về đêm và các dãy Cinema hai bên đường. Đại Lộ này đặc biệt rất sống động về đêm. Dùng bữa trưa tại nhà hàng Phưọng Hoàng.Tối nghỉ đêm khách sạn tại Paris.

Ngày 4 :  Du lịch Paris – Disneyland (Ăn S, T, C)

Quý khách dùng bữa sáng tại khách sạn , Hướng dẫn địa phương đón Đoàn đi tham quan công viên giải trí Disneyland Paris với những toà lâu đài và những nhân vật trong truyện cổ tính, những trò chơi cảm giác mạnh dành cho khách hàng thích mạo hiểm, Quý khách thư giãn thưởng thức các điệu nhạc trên dòng sông lười. Ăn trưa tại nhà hàng địa phương.Chiều, đoàn trở lại thành phố nghỉ ngơi và tự do mua sắm tại các siêu thị trung tâm Paris.
Ăn tối tại nhà hàng , nghỉ đêm tại Paris.

Ngày 5 : Du lịch Paris - Hà Nội (Ăn S,T,C )

Sáng Quý khách chuẩn bị hành lý , dùng bữa sáng tại khách sạn. HDV và xe ô tô đưa Quý khách ra sân bay đáp chuyến bay Paris – Vietnam.

Ngày 6:  Hà Nội (Ăn S )

Tới sân bay Nội Bài. Xe ô tô đón đoàn tại sân bay Nội Bài về điểm hẹn tại Hạ Long. Chia tay Quý khách. Kết thúc chương trình.', N'Images/Trang chu/Quoc te/072915-disneyland-paris-600.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT6', N'Du lịch Hồng Kông', N'Hàng ngày', N'4 ngày 3 đêm', N'Hồng Kông', N'13.990.000', N'Hồng Kông được ví như Paris của Châu Á, bởi đây là thành phố có nhiều tòa nhà cao chọc trời, là trung tâm thương mại, tài chính và...', N'Ngày thứ nhất: Hà Nội – Hồng Kông

07h20: Quý khách tập trung tại Văn phòng công ty du lịch Asian Travel, xe và hướng dẫn viên công ty đón và đưa du khách lên sân bay. Nếu du khách tự túc lên sân bay Nội bài, cần phải có mặt tại sân bay trước 08:30 sáng. Hướng dẫn viên đưa du khách làm thủ tục đáp chuyến bay đi Hồng Kông. Đến Hồng Kông, xe và hướng dẫn viên đón đoàn về khách sạn làm thủ tục nhận phòng. Trên đường ghé qua thăm quan cầu treo Thanh Mã – cây cầu dài nhất thế giới, Vịnh nước cạn Repulse và đỉnh núi thái bình. Tham quan Trung tâm Triển lãm và trung tâm Hội nghị Hongkong

Ăn tối tại nhà hàng địa phương.

Nghỉ đêm tại khách sạn 3sao Newton Place hoặc tương đương..


Ngày thứ hai: Hồng Kông

Sau khi ăn sáng, Đoàn đi thăm Đại Lộ Ngôi Sao – nơi ghi dấu bàn tay của các minh tinh màn bạc Hồng Kông, miếu Hoàng Đại Tiên, Trung Tâm vàng bạc đá quý, mua sắm tại siêu thi miễn thuế.

Ăn trưa tại nhà nổi Jumbo

Buổi chiều, đoàn Thăm quan bến cảng HongKong, thăm quan Habour city, tự do mua sắm tại Chợ Quý Bà.

Ăn tối tại nhà hàng BBQ Hàn Quốc, Nghỉ đêm tại khách sạn 3 sao Newton Place hoặc tương đương


Ngày thứ ba: Hồng Kông - Disneyland

Sau bữa sáng tại khách sạn, xe sẽ đưa du khách đến tham quan công viên Disneyland, đây là khu vui chơi giải trí quốc tế Disneyland thứ ba ở nước ngoài sau Paris và Tokyo, được xây dựng trên 1 khu đất rộng 125ha thuộc đảo Lanlau. Disneyland Hongkong được chính thức khánh thành vào năm 2005. Quý khách sẽ được gặp gỡ các nhân vật quen thuộc của Walt Disney và hoà mình vào Tomorrowland – một thế giới kỳ diệu, biến ước mơ thành hiện thực, Fantasy land – thế giới của công chúa ngủ trong rừng và vùng đất phiêu lưu mạo hiểm Adventure land. Du khách sẽ có dịp xem màn trình diễn pháo hoa hoành tráng tại lâu đài Sleeping Beauty.

 
Ngày thứ tư: Hồng Kông – Hà Nội

Ăn sáng tại khách sạn. du khách tự do mua sắm tại Hong Kong cho đến khi ra sân bay đáp chuyến bay (14h30 – 15h30) về Hà Nội

Đến sân bay Nội Bài, xe đưa Quý khách về thành phố Hạ Long, kết thúc chương trình tham quan, du lịch Hông Kong', N'Images/Trang chu/Quoc te/hk10.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT7', N'Hạ Long - Thượng Hải - Hàng Châu - Tô Châu', N'Hàng ngày', N'4 ngày 3 đêm', N'Thượng Hải, Hàng Châu, Tô Châu', N'12.500.000', N'Ngày thứ nhất: Hạ long - Hà Nội - THượng Hải Xe và Hướng dẫn viên Công ty du lịch Asian Travel đón du...', N'Ngày thứ nhất: Hạ long  - Hà Nội -  THượng Hải

Xe và Hướng dẫn viên Công ty du lịch Asian Travel đón du khách tại Văn phòng Công ty đi Sân Bay Nội Bài, đáp chuyến bay đi Thượng Hải. Đến Thượng Hải, xe và hướng dẫn viên địa phương sẽ đón đoàn và đưa đoàn đi tham quan Bến Thượng Hải, Tháp truyền hình Đông Phương Minh Châu (không bao gồm vé lên tháp), cửa hàng vàng bạc đá quý và tự do mua sắm tại Phố đi bộ Nam Kinh. Sau bữa tối, du khách đến nhận phòng tại khách sạn và nghỉ ngơi.


Ngày thứ hai: Thượng Hải – Hàng Châu

Sau khi ăn sáng, du khách tham quan Miếu Hoàng Thành, đi qua cầu Nam Phố để đến khu Khu khai phát kinh tế phố Đông, với những tòa nhà chọc trời cao, nổi tiếng trên thế giới, tại đây, du khách sẽ tham quan nhà Bảo tàng Tống Khánh Linh. Sau đó, du khách sẽ lên xe khởi hành đi thành phố Hàng Châu, thủ phủ của tỉnh Triết Giang nổi tiếng là đô thị hiện đại, với ngành công nghiệp dệt may và gia công tơ lựa. Tới Hàng Châu, du khách sẽ ngồi thuyền đi tham quan các điểm du lịch nổi tiếng như Tây Hồ, Miếu Nhạc Phi, chùa Linh Ẩn, Phi Lai Phong và thưởng thức trà Long Tĩnh, tham quan mua sắm tại cửa hàng gốm sứ. Ăn tối và nghỉ  tại khách sạn trong thành phố Hàng Châu.


Ngày thứ ba: Hàng Châu – Tô Châu

sau bữa sáng tại khách sạn, xe sẽ đón du khách khởi hành đi thành phố Tô Châu, thủ phủ của tỉnh Giang Tô. Tới Tô Châu, du khách sẽ tham quan Hàn Sơn Tự - đây là một trong những ngôi chùa cổ của Trung Quốc với bức bích họa nổi tiếng "Hàn Sơn - Thập Đắc" được khắc trên đá của danh họa đời Thanh, Sư Tử Lâm - Tuyệt tác kiến trúc lâm viên Tô Châu, thưởng thức buổi biểu diễn thời trang tơ lụa. Ăn tối và nghỉ ngơi tại khách sạn.

Ngày thứ tư: Tô Châu – Thượng Hải – Hạ Long- Kết thúc chương trình tham quan.

Sau khi ăn sáng, du khách lên xe trở về Thượng Hải, tham quan chùa Ngọc Phật, ăn trưa và tự do mua sắm cho đến giờ ra sân bay, đáp chuyến bay trở về hà Nội, Việt Nam. Tại sân bay Quốc tế Nội Bài, xe Công ty du lịch Asian Travel sẽ đón du khách về Hạ long, kết thúc chương trình thăm quan.', N'Images/Trang chu/Quoc te/thuong-hai.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT8', N'Hạ Long – Hà Nội – Bắc Kinh – Thượng Hải', N'Hàng ngày', N'5 ngày 4 đêm', N'Bắc Kinh, Thượng Hải', N'16.000.000', N'Ngày thứ nhất: Hạ Long - Hà Nội – Bắc Kinh ( Trung Quốc) Xe của công ty du lịch Asian Travel đón đoàn...', N'Ngày thứ nhất: Hạ Long -  Hà Nội – Bắc Kinh ( Trung Quốc)

Xe của công ty du lịch Asian Travel  đón đoàn tại điểm hẹn trung tâm thành phố Hạ long đi Hà Nội đến sân bay Nội Bài và đáp chuyến bay lúc 10h đi Bắc Kinh ( thời gian bay 3 giờ đồng hồ). Tại sân bay Bắc Kinh, hướng dẫn viên địa phương và xe sẽ đón đoàn đi thưởng thức chương trình xiếc nổi tiếng do các nghệ sỹ Trung Hoa trình diễn. Ăn tối tại nhà hàng địa phương. Sau đó, du khách sẽ tự do khám phá thành phố Bắc Kinh về đêm. Nghỉ đêm tại khách sạn trung tâm thành phố.

        


Bát Đại Lĩnh - Vạn Lý Trường Thành

Ngày thứ hai: Bắc Kinh

Sau bữa sáng tại khách sạn, xe sẽ đón Đoàn khởi hành đi tham quan Vạn Lý Trường Thành khu Bát Đạt Lĩnh, tham quan xưởng chế tác ngọc đá nổi tiếng Bắc Kinh. Ăn trưa tại nhà hàng. Sau bữa trưa, Đoàn tiếp tục đi thăm Thập Tam Lăng, đây là khu lăng tẩm của 13 vị vua thời Minh được bảo tồn nguyên vẹn, tham quan và tìm hiểu về Y học dân tộc cổ truyền Trung Hoa, trên đường về nội thành Bắc Kinh, đoàn ghé thăm Sân vận động Olimpic 2008 thiết kế hình tổ chim, sân vận động Thể lập Phương (bên ngoài, nhìn từ xa), nơi tổ chức các hoạt động Thế Vận Hội trong nhà. Sau đó đoàn lên tham quan Thành Lầu cổ - Đức Thắng Môn. Ăn tối thưởng thức  đặc sản Trung Hoa - Vịt quay Bắc Kinh. Nghỉ đêm tại khách sạn. Buổi tối, du khách có thể tự do mua sắm tại các trung tâm mua sắm địa phương theo sự hướng dẫn của hướng dẫn viên.


Quảng trường Thiên An Môn

Quảng trường Thiên An Môn

Ngày thứ ba: Bắc kinh - Thượng Hải

Ăn sáng tại khách sạn. 08:00, xe và hướng dẫn viên đến đón du khách đi tham quan nội thành thành phố Bắc Kinh vói các điểm du lịch và di tích lịch sử nổi tiếng như Quảng trường Thiên An Môn, Đại lễ đường Nhân dân, Lăng Mao Chủ tịch (bên ngoài). Sau đó tham quan Tử cấm thành hay còn gọi là Cố Cung với 9999 gian điện nguy nga lộng lẫy. Đoàn ăn trưa tại nhà hàng địa phương. Sau bữa trưa, du khách đi tham quan Di Hoà Viên – Công viên mùa hè của bà Từ Hy Thái Hậu với Hồ Côn Minh, Thọ Lão Đường… Ăn tối tại nhà hàng. Nghỉ đêm tại khách sạn.

 Bến Thượng Hải

Bến Thượng Hải

Ngày thứ tư: Bắc Kinh - Thượng Hải

Du khách ăn sáng tại khách sạn. Sau đó, xe đón đoàn ra ga, đáp tàu hỏa siêu cao tốc đi Thượng Hải. Đến Thượng Hải, xe và Hướng dẫn viên đón đoàn đi ăn trưa tại nhà hàng trong thành phố. Quý khách bắt đầu chương trình tham quan thành phố Thượng Hải với Tháp Truyền hình Đông Phương Minh Châu (bên ngoài), Bến Thượng Hải, con đường là biểu tượng của thành phố Thượng Hải, tham quan Chùa Ngọc Phật, cửa hàng Ngọc Trai. Đoàn tự do mua sắm quà lưu niệm trên phố đi bộ Nam Kinh, con đường tập chung nhiều trung tâm thương mại và siêu thị tại Thượng Hải. Ăn tối và nghỉ ngơi tại khách sạn. Quý khách có thể tự do đi khám phá đêm Thượng Hải theo sự hướng dẫn của Hướng dẫn viên.




Miếu Thành Hoàng

Ngày thứ năm : Thượng Hải - Hà nội - Hạ Long - Kết thúc chương trình tham quan

Du khách ăn sáng và làm thủ tục trả phòng khách sạn. sau đó, du khách lên xe đi tham quan Miếu Thành Hoàng, cầu Nam Phố, cửa hàng Tơ lụa Thượng Hải. Ăn trưa tại nhà hàng trong thành phố. Sau đó, đoàn tự do tham quan mua sắm tại trung tâm thương mại. Kết thúc chương trình, xe đưa du khách ra sân bay, đáp chuyến bay về Hà Nội. Tại sân bay Nội Bài, xe công ty du lịch Asian Travel sẽ đón đoàn và đưa đoàn về thành phố Hạ long, kết thúc chương trình thăm quan du lịch.', N'Images/Trang chu/Quoc te/45-big.jpg')
INSERT [dbo].[TourQT] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlQT]) VALUES (N'QT9', N'Hạ Long, Nam Ninh (Trung Quốc)', N'Hàng ngày', N'3 ngày 2 đêm', N'Nam Ninh Trung Quốc', N'2.680.000', N'Nam Ninh là thủ phủ của khu tự trị dân tộc Chuang, Quảng Tây, Trung Quốc, được coi là một thành phố đang phát triển mạnh ở phía Nam...', N'Nam Ninh là thủ phủ của khu tự trị dân tộc Chuang, Quảng Tây, Trung Quốc, được coi là một thành phố đang phát triển mạnh ở phía Nam Trung Quốc, và là cửa ngõ giao thương quan trọng với tỉnh Quảng Ninh và các địa phương tại Việt Nam. Nam Ninh được xem như là một "thành phố xanh" của Trung Quốc bởi lẽ thành phố được trồng nhiều cây xanh khắp thành phố, có nhiều công viên xanh và các khu du lịch sinh thái như Thanh Tú Sơn...,Nam Ninh cũng là một địa chỉ mua sắm tin cậy, nổi tiếng với nhiều siêu thị và trung tâm mua sắm nổi tiếng do nước ngoài đầu tư  như Parkson, Dream Island, siêu thị Hoa Liên..., đã tạo cho Nam Ninh là một điểm du lịch và mua sắm, giải trí hấp dẫn đối với du khách Việt Nam trong những dịp cuối tuần.

Chương trình du lịch này dựa trên nhu cầu của du khách tại thành phố Hạ Long đi mua sắm vào cuối tuấn. Với thời gian 3 ngày thì việc lựa chọn đi Nam Ninh, Trung Quốc và Móng Cái là tối ưu, chắc chắn sẽ mang lại cho du khách trải nghiệm mới, nhất là những ai chưa từng đi du lịch tại Trung Quốc. Trong chương trình du lịch này, du khách không những được xuất cảnh, tham quan du lịch tìm hiểu văn hóa của một thành phố lân cận, mà còn được trải nghiệm mua sắm tại các trung tâm thương mại tại Trung Quốc. Chương trình được xây dựng kinh phí hợp lý, tao cho du khách thời gian chủ động trong việc ăn uống, tham quan và mua sắm, khách sạn được bố trí ngay cạnh trung tâm thương mại để tiện cho việc đi lại. Đây là một trong những mô hình du lịch mới đang được nhiều bạn trẻ và gia đình ưa thích.

Ngày thứ nhất (thứ sáu): Hạ Long – Nam Ninh



Cảng Phong Thành


7:00h sáng xe và hướng dẫn viên của Asian Travel sẽ đón du khách tại điểm hẹn và đưa du khách đến cửa khẩu Móng Cái. Du khách sẽ dùng bữa trưa tại nhà hàng Móng Cái. Sau bữa trưa, du khách sẽ xuất cảnh qua cửa khẩu Móng Cái(Việt Nam) sang Đông Hưng (Trung Quốc). Xe và hướng dẫn viên phía công ty du lịch sẽ đón đoàn tại cửa khẩu và đi đến thành phố Nam Ninh - thủ phủ Khu tự trị dân tộc Choang, Quảng Tây. Hành trình đi trên đường cao tốc khoảng 3 tiếng sẽ đi qua các địa danh nổi tiếng Quảng Tây như cảng Phòng Thành, thành phố Khâm Châu. Du khách đến Nam Ninh sẽ bố trí ăn tối tại nhà hàng. Sau bữa tối, sẽ về khách sạn nghỉ ngơi. Buổi tối du khách có thể đi dạo phố và mua sắm tại Trung tâm thương mại đường Triều Dương, phố đi bộ hoặc siêu thị Dream Island.    

Ngày thứ hai (thứ bảy): Nam Ninh

Sau bữa sáng tại khách sạn, hướng dẫn viên sẽ đưa du khách trải nghiệm xe Buýt tới trung tâm thành phố, cũng giống như những người dân địa phương, du khách sẽ tự mình chi trả 2 nhân dân tệ cho mỗi chặng đường. Tại các Trung tâm thương mại, du khách sẽ có trọn một ngày thỏa sức mua sắm những mặt hàng thương hiệu về quần áo, giầy, mỹ phẩm, nước hoa nhập khẩu hạ giá đến 50%. Để giành nhiều thời gian thỏa sức mua sắm, du khách sẽ tự tìm hiểu và trải nghiệm các sản phẩm ẩm thực trong trung tâm thương mại do du khách tự lựa chọn như: lẩu chua cay, vịt quay bắc kinh, món ăn Tứ Xuyên, thậm chí có thể ăn nhanh tại các nhà hàng Mc-Dolald...

Buổi tối, sau khi đã thỏa sức với mua sắm, du khách sẽ tập trung tại điểm hẹn, hướng dẫn viên cùng du khách ngồi xe buýt hoặc taxi trở về khách sạn, du khách cũng có thể chủ động ngồi taxi về khách sạn nghỉ ngơi trước hoặc tham gia các hoạt động mua sắm hoặc giải trí khác theo sở thích.

 
Ngày thứ ba (chủ nhật): Nam Ninh – Hạ Long


Chợ Móng Cái

Sau bữa sáng tại khách sạn, du khách lên xe quay trở về Đông Hưng và làm thủ tục xuất cảnh về Việt Nam. Du khách sau khi về đên Móng Cái, sẽ bố trí tập trung tại nhà hàng ăn trưa, mua sắm tại chợ Móng Cái hoặc tắm biển tại bãi biển Trà Cổ. Khoảng 16:00, xe Asian Travel sẽ đưa du khách về Hạ Long, kết thúc chương trình du lịch mua sắm tại Nam Ninh và Móng Cái.', N'Images/Trang chu/Quoc te/nam-ninh2.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN1', N'HẠ LONG – ĐẢO CÁT BÀ', N'Hằng ngày', N'2 ngày 1 đêm', N'HẠ LONG – ĐẢO CÁT BÀ', N'1.436.004', N'Chương trình du lịch: HẠ LONG – ĐẢO CÁT BÀ ( Thời gian 2 ngày 1 đêm) Ngày 01: ...', NULL, N'Images/Trang chu/Trong nuoc/du-lich-cat-ba.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN10', N'HẠ LONG – CÔNG VIÊN NƯỚC HỒ TÂY –AEON MALL Long Biên', N'Hàng ngày', N'01 ngày', N'CÔNG VIÊN NƯỚC HỒ TÂY –AEON MALL Long Biên', N'688.000', N'8 điều khiến bạn sẽ choáng ngợp khi "check-in" ở AEON MALL Hà Nội. Phải nói sao nhỉ? Những kết cấu cơ bản của...', N'4h30: Xe và hướng dẫn viên đón Quý khách tại Hạ Long khởi hành đi Hà Nội. Ăn sáng trên đường đi.

08h15: Đến Hà Nội, Quý khách vào Công viên nước Hồ Tây. Khu vui chơi giải trí hiện đại và hấp dẫn nhất của Hà Nội. Tại đây Quý khách được vui chơi tại 5 khu vui chơi, gồm các hạng mục: bẩy đường ống trượt với độ cao trung bình là 12m kể từ tháp tiếp nhận… hai đường trượt cao tốc, độ cao 14,5m lần đầu tiên được lắp đặt tại Việt Nam. Bể tạo sáu loại sóng, tối đa là 1,2m, độ sâu tối đa là 3m dành cho những người thích cảm giác mạnh như dây đu tử thần, cầu treo Tây Tạng. Bể mát xa (bể sủi) có độ sâu 0,6m tạo cảm giác thư thái dễ chịu. Bể lặn có độ sâu 3,5m dành cho những người thích mạo hiểm, cũng tại đây có thể tập lặn bằng khí tài hoặc chơi nhảy cầu. Dành cho trẻ em có bể vầy, các đường trượt mini, các trò chơi dưới nước; dòng sông trôi có chiều dài 450m, rộng 4,5m chảy dưới năm cây cầu….

11h30 trưa đoàn ăn tự trọn (Buffet) tại nhà hàng Sen Tây Hồ với những món ẩm thực đặc sắc của các vùng miền trong cả nước.

12h30 Xe đưa Quý khách đến với AEON MALL Long Biên. Quý khách tự do thỏa thích thăm quan, mua sắm tại trung tâm.  Phải nói sao nhỉ? Những kết cấu cơ bản của một trung tâm thương mại thông thường cộng thêm hơi thở đặc trưng của người Nhật đã

 

biến nơi đây thành một địa điểm nhất định phải check-in. Với trung tâm vui chơi giáo dục trong nhà cho trẻ em lớn nhất Hà Nội. Tại đây, các bé sẽ được thỏa thích vui chơi trong không gian rộng lớn với nhiều khu vực trải nghiệm đa dạng như khu vận động và phát triển thể chất juNo Playland, khu công nghệ cao Techzone, khu mỹ thuật Art & Craft, lớp học nấu ăn… Tại đây cũng có các phòng chơi của những thương hiệu nổi tiếng như How Wheels, Barbie, Viking Toys. Trung tâm thương mại được phân chia hợp lí thành các khu mua sắm, khu vui chơi, giải trí, rạp chiếu phim, khu ẩm thực, tất cả đều được trang trí theo chủ đề, phong cách riêng đặc biệt thu hút. Gần như toàn bộ tầng 3 trung tâm thương mại là khu ẩm thực, gồm rất nhiều nhà hàng, quán ăn từ món Việt, món Hàn, món Nhật đến món Âu.

15h30:  Xe đưa Quý khách về Hạ Long.

19h30:  Về đến Hạ Long, đoàn dùng bữa tối tại nhà hàng, sau bữa tối đưa đoàn về điểm xuất phát. Chia tay Quý khách, kết thúc chương trình tham quan.', N'Images/Trang chu/Trong nuoc/aonmeo.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN11', N'Tour ghép Hạ Long - Tp.Hồ Chí Minh - Mũi Né', N'Hàng ngày', N'5 ngày 4 đêm', N'Sài Gòn, Mũi Né, Đại Nam', N'3.500.000', N'Đến với Tour Hạ Long - Tp.Hồ Chí Minh - Mũi Né quý khách có dịp khám phá Tp. Hồ Chí Minh một trong những trung tâm kinh tế,...', N'Đến với Tour Hạ Long - Tp.Hồ Chí Minh - Mũi Né quý khách có dịp khám phá Tp. Hồ Chí Minh một trong những trung tâm kinh tế, văn hóa lớn nhất Việt Nam qua các địa danh nổi tiếng như: Dinh Thống Nhất, nhà thờ Đức Bà, Ủy Ban Nhân Dân Thành Phố, Bưu Điện trung tâm, kế tiếp quý khách sẽ được tận mắt chiêm ngưỡng ngắm cảnh thành phố Hồ Chí Minh rực rỡ sắc màu, lung linh, huyền ảo về đêm. Còn đến với Mũi Né là đến với biển, cát và gió. Trên khắp dải đất hình chữ S thân thương không nơi nào cát lại nhiều và đẹp đến vậy. Cát nối tụ thành trập trùng nối tiếp, những rặng dừa tuyệt đẹp soi bóng dưới làn nước trong xanh tựa màu ngọc bích…

Biển Mũi Né
Biển Mũi Né
Biển Mũi Né

Ngày 1: Hạ Long - Tp.Hồ Chí Minh - Mũi Né (Ăn trưa, tối)

6h00 sáng, xe và hướng dẫn viên công ty Du lịch Asian sẽ đến đón du khách tại điểm hẹn đi sân bay Cát Bi, thành phố Hải Phòng, đáp chuyến bay lúc 9h50 đi thành phố Hồ Chí Minh. 11h55, đoàn tới thành phố Hồ Chí Minh, xe và hướng dẫn viên du lịch đón Qúy khách tại sân bay Tân Sơn Nhất, sau đó, tập trung ăn trưa tại nhà hàng. Sau bữa trưa, hướng dẫn viên sẽ cùng đoàn lên xe khởi hành đi đến khu du lịch Mũi Né – thành phố Phan Thiết. Đây là khu du lịch nổi tiếng Việt Nam với bờ biển dài hoang vu, các đồi cát như sa mạc để thưởng thức một kỳ nghĩ thư giãn bên bờ biển. Ăn tối và nhận phòng khách sạn nghỉ ngơi tại Mũi Né. Buổi tối du khách có thể dạo biển, đi chợ đêm tại thành phố Phan Thiết.


Ngày 2:  Mũi Né - Phan Thiết (Ăn sáng, trưa, tối)

Sau bữa sáng, Đoàn bắt đầu tham quan các danh lam thắng cảnh cua Phan Thiết Như: tháp Cham Posanu, chụp ảnh lưu niệm tại bãi đá Ông Địa, rặng dừa Hàm Tiến, Làng chài Mũi Né, cùng hòa mình vào cuộc sống nhộn nhịp của một làng chài xứ biển thuần chất Việt Nam. Ngắm cảnh ghe thuyền của ngư dân cập bến. Tự do tắm biển và thưởng thức hải sản tươi ngon, giá bình dân. Bên cạnh đó, du khách còn có thể thưởng thức vị ngọt ngào của trái dừa tại Bãi biển Phan Thiết. Đoàn ăn trưa tại nhà hàng.  Sau chinh phục đồi cát bay, tham gia trò chơi trượt cát, chiêm ngưỡng cảnh mặt trời lặn trên đồi. Sau đó đoàn đi tham quan chợ Phan Thiết, sắm quà đặc sản vùng biển Phan Thiết. Đoàn nghỉ đêm tại Mũi Né và tham gia bữa tối tiệc nướng ngoài trời tại nhà hàng.

 

Ngày 3: Mũi Né - Thành phố Hồ Chí Minh (Ăn sáng, trưa, tối).

Sau bữa sáng, tạm biệt Mũi Né, du khách khởi hành trở về thành phố Hồ Chí Minh - Thành phố nhộn nhịp. Ăn trưa tại nhà hàng và nhận phòng khách sạn tại thành phố. Sau đó, hướng dẫn viên sẽ cùng du khách thăm những di tích hàng đầu của thành phố Hồ Chí Minh như: Nhà Thờ Đức Bà, Bưu Điện Thành Phố, Tòa nhà Ủy Ban nhân dân Thành Phố, đây là những công trình kiến trúc sinh đông đẹp mắt và là tâm điểm của thành phố Hồ Chí Minh ngày nay để cùng tìm hiểu những nét độc đáo của những công trình kiến trúc này và chụp ảnh lưu niệm, bên cạnh đó du khách có thể ghé thăm trung tâm mua sắm Diamond Plaza. Bữa tối trên tàu Sài Gòn, du khách sẽ được ngắm cảnh thành phố Hồ Chí Minh rực rỡ sắc màu, lung linh, huyền ảo về đêm. Sau đó du khách về khách sạn nghỉ ngơi. Ngoài ra du khách có thể tự do đi dạo chợ đêm Bến Thành.

 

Ngày 4:  Sài Gòn  - Đại Nam (Ăn sáng, trưa, tối).

Sau bữa sáng, du khách sẽ khởi hành đến Lạc Cảnh Đại Nam Văn Hiến, đây là một khu du lịch tọa lạc tại thành phố Thủ Dầu Một,  tỉnh Bình Dương. Tại đây, đoàn sẽ tham quan kkiến trúc Vạn Lý Trường Thành và mô hình thành phố Hồ Chí Minh thu nhỏ. Khu du lịch Đại Nam hiện là một công trình bậc nhất Đông Nam Á, nơi tôn vinh, ngưỡng vọng văn hoá dân tộc Việt Nam. Thăm quan khu Kim Điện uy nghi với những khung cửa chạm trổ 28 bộ tranh tiêu biểu, đánh dấu các mốc lịch sử của Việt Nam và những mái vòm với những bức vẽ độc đáo... Vườn thú Đại Nam, nơi có nhiều động vật quý hiếm duy nhất tại Việt Nam, du khách có thể tiếp cận dễ dàng với các loại thú hoang dã, qúy hiếm như sư tử trắng, tê giác trắng, hổ trắng.... Khu Công Viên Nước nước mặn và nước ngọt để thỏa sức vui đùa trong làn nước mát trong công viên. Công viên với thiết kế nằm trong dãy núi hùng vĩ, bên cạnh tòa lâu đài tráng lệ, dưới hình thức hồ tạo sóng kép, bao quanh các đảo nhỏ giữa lòng biển. Sau khi kết thúc chương trình tại Công viên, du khách sẽ ăn trưa tại nhà hàng Đại Nam, sau đó, du khách tiếp tục tham quan và tham gia các trò trơi tại Khu Vui Chơi Giải Trí (du khách tự túc tham gia các trò chơi) như thảm bay, thuyền đụng, phi thuyền đại chiến... và những trò cảm giác mạnh như con tàu lốc xoay, vượt thác.... Sau đó, đoàn tập trung theo hướng dẫn viên lên xe trở về thành phố Hồ Chí Minh, tham gia bữa tối Gala, ca hát cùng nhau tại nhà hàng.

Ngày 5:  Thành phố Hồ Chí Minh bay về Hà Nội (Ăn bữa sáng, trưa, tối).

Sau bữa sáng, du khách lên xe đến khu mua sắm như: chợ Bến Thành, Sài Gòn Aquare... tự do mua sắm. Sau đó, đoàn tập trung lên xe, đưa du khách ra sân bay Tân Sơn Nhất, đáp chuyến bay VN lúc 16h00 đi về Cát Bi, thành phố Hải Phòng. 18h00, đoàn về đến sân bay Cát Bi. Xe đón đoàn về nhà hàng Tre Việt dùng bữa tối. Sau bữa tối, công ty Du Lịch Asian đưa đoàn về Hạ Long. Kết thúc chương trình tour du lịch bổ ích và lý thú.

 

Giá trọn gói: Chỉ từ 9.150.000đ/01khách

(Giá có thể thay đổi phụ thuộc vào thời điểm xuất vé máy bay)

Dịch vụ  bao gồm:

- Phương tiện vận chuyển (ô tô máy lạnh).

- Vé máy bay khứ hồi ( Vietnam Airlines) và lệ phí sân bay.

- Vé thăm quan cảnh điểm theo lịch trình (01 lần cửa chính).

- Khách sạn 3 sao ( 2 khách/phòng, trường hợp lẻ ngủ sẽ bố trí cho quy khách sử dụng phòng 3 giường).

- Các bữa ăn theo chương trình tour (bữa chính 150.000đ/ xuất, bữa sáng ăn buffet tại khách sạn) và có một bữa tối thưởng thức các món nướng tại khu du lịch Mũi Né với tiêu chuẩn 500.000đ/xuất.

- Bảo hiểm du lịch mức 20.000.000 đồng/khách/vụ .

- Hướng dẫn viên phục vụ nhiệt tình chu đáo theo suốt chương trình tour.

Không bao gồm:

- Phí hành lý quá cước.

- Chi phí cá nhân, điện thoại, giặt là.

- Đồ uống trong các bữa ăn.

- Tiền thưởng cho hướng dẫn viên và lái xe trong quá trình phục vụ đoàn .

Ghi Chú:

- Trẻ em từ 2 đến dưới 6 tuổi miễn phí tiền tour (bố mẹ tự túc cho mọi chi phí của bé).

- Trẻ em từ 6 đến dưới 12 tuổi thu 75% tiền tour (ngủ cùng giường với bố mẹ, không chiếm giường).

- Trẻ em 12 tuổi trở lên thu 100% tiền tour.', N'Images/Trang chu/Trong nuoc/cho-ben-thanh.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN12', N'Tour ghép đi tuần trăng mật Sapa', N'Hàng ngày', N'2 ngày 3 đêm', N'Sapa', N'2.900.000', N'Du lịch tuần trăng mật Sapa cho những cặp đôi vợ chồng trẻ luôn là điểm đến hấp dẫn tuyệt vời nhất. Màn đêm buông xuống, sương lạnh bờ...', N'Du lịch tuần trăng mật Sapa cho những cặp đôi vợ chồng trẻ luôn là điểm đến hấp dẫn tuyệt vời nhất. Màn đêm buông xuống, sương lạnh bờ vai, ngọn lửa bên lò sưởi đã đốt lên, chỉ cần 1 ly sâm banh thôi, cái lạnh Sapa ngọt ngào hơn bao giờ hết. Tình yêu cũng thắp lên từ đó, ngoài kia lạnh giá, những cành hoa Tigon đang reo mừng… Sáng sớm, sương giăng mắc, lững lờ trôi đến tận bên cửa sổ phòng, mời gọi một trải nghiệm mới, tình yêu lại sang trang… Nắng lên, xua mây lên núi, nắng vàng rực rỡ, bầu trời trong veo, không gian trong lành, tình yêu thêm sức sống… Chỉ cần một chiếc xe máy, các đôi uyên ương có thể quấn lấy nhau xuống bản, từng ngọn đồi cao thấp, mạo hiểm một chút như tình yêu, và chiếc máy ảnh sẽ chứng minh cho tình yêu Sapa, thiên nhiên Sapa, tuần Trăng mật của bạn bắt đầu nơi đây và mãi mãi về sau nữa….
Đêm 01 : Hạ Long - Lào Cai 
5h chiều: Xe và hướng dẫn viên của công ty Du lịch Asian đón hai bạn tại điểm hẹn và khởi hành đi SaPa trong đêm.

Ngày 01 :  Lào Cai – Trung tâm du lịch Sapa  - Thác Bạc -  Cổng Trời (Ăn sáng, trưa, tối)


Buổi sáng: Tới Lào Cai, xe đón hai bạn tại bến xe Lào Cai đi Sapa. Trên đường đi hai bạn sẽ được chiêm ngưỡng cảnh núi non hùng vĩ của dãy Hoàng Liên Sơn. Đến Sapa hai bạn dùng bữa điểm tâm sáng tại nhà hàng của khách sạn, nghỉ ngơi, chuẩn bị đồ đạc để đi tour. Hướng dẫn viên sẽ đưa đôi bạn trẻ đi thăm khu du lịch Thác Bạc - Cổng Trời. Thác Bạc từ lâu đã nổi tiếng là một thắng cảnh của đất Sa Pa. Ngọn thác này đổ từ độ cao hơn 100 m từ đỉnh núi xuống. Đứng dưới chân thác Bạc, nhìn ngắm đất trời bao la và những rặng núi hoành tráng xa xa, ta bỗng có cảm giác mình thật nhỏ bé trước sự kỳ vĩ của thiên nhiên. Sau khi thăm Thác Bạc, xe và hướng dẫn đón 2 bạn về khách sạn. Ăn trưa tại khách sạn, bàn ăn riêng dành cho hai người trong một không gian yên tĩnh


Buổi chiều: Hai bạn tự do thăm thú thị trấn Sapa: Nhà thờ đá, chợ Sapa, hồ Sapa hoặc tự do thuê xe máy đi thăm những điểm du lịch xa hơn như Ý Linh Hồ, Lao Chải, Tả Van cách thị trấn 12 km, dọc theo thung lũng Mường Hoa thơ mộng và huyền ảo bao phủ trong màn sương. Ngắm nhìn những đám mây trôi bông bềnh trên sườn núi Fansipan hùng vĩ, khám phá cuộc sống đơn sơ, giản dị của người Mông Đen và người dân tộc Dáy. 
Đôi uyên ương dùng bữa tối tại khách sạn, bữa tối tình yêu bên ánh nến hồng lung linh và rượu Sampanh càng làm cho không gian trở lên lãng mạn, thắp lên tình yêu ngọt ngào và mặn nồng cho đôi vợ chồng trẻ trong tuần trăng mật đáng nhớ trong cuộc đời.
Đặc biệt vào tối thứ bảy hai bạn có thể tham dự phiên Chợ Tình của người Dao Đỏ - một trong những nét văn hoá đặc sắc của các dân tộc vùng cao phía bắc Việt Nam. Sau khi dạo chơi, và giao lưu cùng người dân tộc bản địa, Đôi Uyên ương trở về khách sạn, có dịp thưởng thức sự khác biệt và ngọt ngào của tình yêu trên sứ sở sương mù

nhà thờ đá sapa
hàm rồng sapa
lưu trải tà văn


Ngày 02 :  Du lịch Sapa –Núi Hàm Rồng - Lào Cai  (Ăn sáng, trưa, tối)


Buổi sáng: Tỉnh dậy sau một đêm ấm áp trong vòng tay người ấy, bạn sẽ thêm một lần nữa ngạc nhiên với bữa ăn sáng thật ngon miệng và được bố trí trong không gian đầy lãng mạn. Sau khi dùng bữa sáng, cặp Uyên ương đi tham quan khu du lịch Hàm Rồng ngắm nhìn toàn cảnh Sapa từ trên cao, thăm tháp truyền hình rồi xuống vườn Lê, vườn Táo Mèo, thăm vườn Lan 1, vườn Lan 2, cổng trời. Thưởng thức chương trình văn nghệ.

chợ tình khấu vai
chợ tình sapa
chợ sapa


Buổi chiều: đôi bạn trẻ quay trở lại khách sạn, dùng bữa trưa trong một không gian riêng và yên tĩnh, nghỉ ngơi. Cặp Uyên ương tự do thăm quan và khám phá thị trấn Sapa, tìm hiểu nét đẹp văn hóa của người dân địa phương. Trả phòng khách sạn. Hướng dẫn viên và xe đưa hai bạn trở về Lào Cai. Hai bạn ăn tối tại nhà hàng ở bến xe Lào Cai. Đôi vợ chồng trẻ sẽ lên xe trở về Hạ Long lúc 8h tối. Sáng hôm sau xe về đến Hạ Long. Kết thúc chuyến du lịch sapa - tuần trăng mật ngọt ngào, đôi vợ chồng trẻ bắt đầu cuộc sống gia đình với nhiều niềm vui và hạnh phúc.

Giá khuyến mại mùa thu chỉ còn 2.450.000 đ/1 du khách.

* Chi phí bao gồm :

- Xe máy lạnh đưa, đón tham quan suốt chương trình.

- Khách sạn tiêu chuẩn 3 sao 2 khách/1phòng.

- Ăn theo chương trình với tiêu chuẩn 150.000 đ/ 1 bữa/ 1 suất, ăn sáng buffet.

- Phí tham quan tất cả các điểm du lịch:

- Hướng dẫn viên tiếng Việt nhiệt tình, chu đáo.

- Nước uống, khăn lạnh.

- Bảo hiểm du lịch: 10.000.000 đ/ 1 vụ.

* Không bao gồm:

- Các chi tiêu cá nhân, đồ uống, phụ thu phòng đơn.


- Điện thoại, giặt là ,Thuế VAT 10%, tiền típ cho hướng dẫn viên và lái xe ', N'Images/Trang chu/Trong nuoc/sapa-hillside.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN13', N'Tour tham quan Hạ Long - Sơn La - Điện Biên - Mộc Châu', N'Hàng ngày', N'4 ngày 3 đêm', N'Sơn La, Điện Biên, Mộc Châu', N'3.000.000', N'Hãy đến với Tây Bắc bên kia của dãy Hoàng Liên Sơn để có thể cảm nhận được cảnh quan núi rừng hùng vĩ, bốn mùa mây phủ, những...', N'Ngày 1: Hạ Long - Sơn La

Sáng: Xe và hướng dẫn viên công ty Du lịch Asian sẽ đón Quý khách tại địa điểm quy định khởi hành cho chuyến du lịch tham quan Hạ Long – Sơn La – Điện Biên – Mộc Châu – 4 ngày 3 đêm. Trên đường đi Quý khách dừng chân nghỉ ăn sáng. Sau đó tiếp tục hành trình đi Sơn La. Đến Sơn La quý khách nhận phòng, ăn trưa, nghỉ ngơi.

 

sơn la
 

Núi rừng Tây Bắc hùng vĩ
 

Chiều: Quý khách đi thăm Bảo tàng Sơn La, Nhà tù Sơn La, Cây Đào Tô Hiệu. Tham quan suối khoáng nóng bản Mong, ngâm mình trong làn nước nóng rất tốt cho sức khỏe.

 

cây đào tô hiệu
 
Cây đào Tô Hiệu trong nhà tù Sơn La
Tối: Quý khách ăn tối thưởng thức các món ăn ngon đặc sản ẩm thực Tây Bắc,  tự do dạo chơi hoặc nghỉ ngơi, nghỉ đêm tại khách sạn Sơn La.

Ngày 2: Sơn La – Điện Biên

Sáng: Quý khách ăn sáng, trả phòng Sau đó tiếp tục hành trình đi Mường Phăng. Quý khách dừng chân nghỉ ngơi và chụp ảnh tại một trong “ Tứ Đại Đỉnh Đèo” mang tên Đèo Pha Đin còn được gọi là Dốc Pha Đin. Có độ dài 32km nằm trên quốc lộ 6, một phần thuộc xã Phỏng Lái, huyện Thuận Châu (Sơn La) và một phần thuộc xã Tỏa Tình, huyện Tuần Giáo (Điện Biên). Tên gọi đèo Pha Đin nguyên gốc xuất xứ từ tiếng Thái, Phạ Đin, trong đó Phạ nghĩa là "trời", Đin là "đất" hàm nghĩa nơi đây là chỗ tiếp giáp giữa trời và đất. Ăn trưa tại Mường Phăng.

 

đèo phà đỉn
 
Đèo Phà Đỉn - một trong "tứ đại đỉnh đèo"
Chiều: Xe và hướng dẫn viên đưa quý khách đi Mường Phăng thăm Đền Hoàng Công Chất, Bản Noọng Nhai, Sở chỉ huy chiến dịch Điện Biên Phủ, hầm Đại Tướng Võ Nguyên Giáp, Hoàng Văn Thái.

 

sở chỉ huy chiến dịch điện biên phủ 
 
Sở chỉ huy chiến dịch Điện Biên Phủ
Tối: Quý khách dùng bữa tối tại nhà hàng, sau đó tự do dạo chơi, tham quan thành phố Điện Biên về đêm.

Ngày 3: Mường Phăng – Mộc Châu

Sáng: Quý khách ăn sáng, trả phòng khách sạn.Tiếp tục hành trình du lịch xe đưa Quý khách đi thăm Bảo tàng di tích lịch sử Điện Biên Phủ, Viếng Nghĩa trang liệt sỹ A1, đồi A1, Hầm Đờ Cát, Cầu Mường Thanh, sông Nậm Rốn.

 

hầm de castries
 

Hầm tướng bại trận De Castries
 

sông nậm rốn
 
Sông Nậm Rốm
 

Trưa: Dùng bữa trưa tại nhà hàng. Xe tiếp tục chuyển bánh, thằng hướng về thị trấn Mộc Châu.

Chiều: Về đến Mộc Châu, quý khách nhận phòng nghỉ ngơi.

Tối: Đoàn ăn tối, thưởng thức đặc sản thịt trâu nướng bản gang tại Nhà hàng Thường Trâu. Tự do tham quan. Đoàn nghỉ đêm tại khách sạn Mộc Châu.

Ngày 4: Sơn La – Hạ Long

Sáng: Quý khách dậy sớm hít thở không khí trong lành buổi sớm ở Cao Nguyên với độ cao trung bình 1.000 m. Sau đó, quý khách trả phòng, xe đưa quý khách đi ăn sáng. Rời thị trấn Mộc Châu, xe đưa đoàn đi thăm quan thị trấn Nông Trường với những đồi chè xanh mượt mà, trải dài từ quả đồi này sang quả đồi khác. Dọc đường quý khách bắt gặp những cánh đồng hoa mận nở trắng bản Tân Lập. Quý khách thăm quan và chụp ảnh với đồi chè hình trái tim, đồi chè hình chữ S…

 

đồi chè mộc châu
 
Ngắm những nông trường chè Mộc Châu xanh mát 
Quý khách chụp ảnh cùng cánh đồng hoa cải dầu trắng tuyệt đẹp ven quốc lộ 6 trước khi đến địa điểm ăn trưa.

 

Trưa: Quý khách ăn trưa tại nhà hàng đặc sản Xuân Bắc 181 với các món đặc sản của Mộc Châu như Bê Chao, Cá Suối, Gà Đồi, Rau Cải mèo luộc chấm trứng magi…., tráng miệng sữa chua Mộc Châu.

 

rau cải mèo
 
Thưởng thức rau cải mèo đặc sản của người Mông
Chiều: Quý khách lên xe khởi hành về Hạ Long. Trên đường về, xe dừng chân tại một số điểm dừng để quý khách có thể nghỉ ngơi và mua đặc sản Tây Bắc về làm quà.

Tối: Đoàn có mặt tại điểm hẹn trả khách. Kết thúc chuyến du lịch tham quan Hạ Long - Hà Nội - Sơn La - Điên Biên - Mộc Châu 4 ngày 3 đêm nhiều bổ ích. Quý khách sẽ nhận những phần quà lưu niệm của công ty Du lịch Asian. Chia tay và hẹn gặp lại quý khách trong chuyến du lịch lần sau.

Cảm ơn quý khách đã sử dụng dịch vụ đặt tour du lịch tham quan Hạ Long - Sơn La - Điên Biên - Mộc Châu 4 ngày 3 đêm. Quý khách sẽ có được những ưu đãi lớn nhất khi đặt tour du lịch.', N'Images/Trang chu/Trong nuoc/du-lich-sapa-tu-tphcm-3ngay-ulyh-jpg.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN14', N'Tour ghép Hạ Long - Nha Trang - Đà Lạt', N'Hàng ngày', N'4 ngày 3 đêm', N'Nha Trang, Đà Lạt', N'3.500.000', N'Ngày 1 : Hạ Long - Hà Nội - Nha Trang ( Ăn trưa, tối ) Sáng: Xe và hướng dẫn viên của Du lịch Asian sẽ đón...', N'Ngày 1 : Hạ Long - Hà Nội - Nha Trang ( Ăn trưa, tối )

Sáng: Xe và hướng dẫn viên của Du lịch Asian sẽ đón quý khách tại nhà hàng cà phê Bãi Cháy hoặc Hòn Gai khởi hành đi sân bay Nội Bài, Hà Nội. Trên đường đoàn sẽ nghỉ chân ở Hải Dương.

Chiều: Đoàn ăn trưa tại sân bay Nội Bài và làm thủ tục lên chuyến bay đến Nha Trang,  một trong những trung tâm du lịch lớn nhất của Việt Nam. Nhận phòng và nghỉ ngơi tại khách sạn trên bờ biển của thành phố Nha Trang - một trong bãi biển đẹp nhất Việt Nam. Tự do vui chơi và ngắm cảnh hoàng hôn trên bờ biển.

Bãi biển Nha Trang
Đu quay ở Vinpearl Land
Vinpearl Land

Ngày 2: Nha Trang - Vinpearl Land  ( Ăn sáng, trưa, tối)

Sáng: Đoàn ăn sáng tại khách sạn, tự đo tắm biển sớn Xe đưa đoàn đi Tham quan Nhà Thờ Chánh Toà (được xây dựng từ thời Pháp với kiến trúc lộng lẫy, Viện Hải Dương học, Tháp Bà Ponagar (Quần thể tháp Chăm cổ được xây dựng từ thế kỉ thứ 7), Dinh Bảo Đại.....

 Chèo kayak ở đảo Hòn Tằm
resort Vinpearland
vinpearland nha trang

Chiều:  Ăn trưa tại nhà hàng và nghỉ ngơi. Sau đó xe sẽ đưa đoàn khởi hành xuống khu vui chơi giải trí Vinpearl Land – Hòn Ngọc Việt. Quý khách qua khu vui chơi giải trí bằng hệ thống cáp treo vượt biển dài nhất thế giới (3.320m), tham gia các trò chơi cảm giác mạnh: phim ảo - 4D, đu quay nhào lộn, tàu lượn siêu tốc, thú nhún, điện đụng... Khám phá Thế Giới Thuỷ Cung muôn màu, Công Viên Nước hoành tráng. Thưởng thức chương trình nhạc nước Laser kỳ ảo…

Tối:  Xe đưa đoàn về lại Thành Phố Biển. Ăn tối và tự do vui chơi, nghỉ ngơi.

Ngày 3 : Nha Trang – Đà Lạt ( Ăn sáng, trưa, tối)

Sáng: Đoàn ăn sáng tại khách sạn. Tự đo đi chợ mua sắm quà lưu niệm. Tạm biệt Nha Trang đoàn tiếp tục khởi hành lên Đà Lạt theo cung đường mới (từ Khánh Vĩnh lên Lạc Dương), ngắm cảnh núi rừng hùng vĩ của Khánh Hòa và Lâm Đồng. Đến Thành phố cao nguyên của tình yêu và huyền thoại, nghe câu chuyện tình bất tử của đôi uyên ương ở Hồ Than Thở & Đồi Thông Hai Mộ. Nhận phòng Khách sạn. Tham quan Vườn hoa Thành phố, thác Prenn, ăn trưa tại khu du lịch Prenn.

Thung lũng tình yêu Đà Lạt
Thác Prenn Đà Lạt
Cồng Chiêng Đà Lạt

Chiều: Tham quan Thung lũng Tình Yêu, khởi hành lên đỉnh cao nguyên Langbiang nằm ở độ cao 2.169 m so với mặt biển. Thử cảm giác mạnh cùng với xe Jeep lên cao nguyên. Thưởng thức Đặc sản Đà Lạt tại các Cơ sở sản xuất.

Tối: Ăn tối và tham gia giao lưu văn hoá cồng chiêng Tây Nguyên cùng người dân tộc. Quý khách đi dạo Đà Lạt về đêm. Vui chơi và nghỉ đêm tại khách sạn.

Ngày 4: Đà Lạt - Hà Nội - Hạ Long (Ăn sáng, trưa,)

Sáng: Đoàn ăn sáng tại khách sạn, sau đó đi tham quan Thiền Viện Trúc Lâm, ngắm khung cảnh thơ mộng của Hồ Tuyền Lâm. Tận hưởng không khí ban mai trong lành của Đà Lạt mông mơ. Quý khách tự do đi chợ mua quà lưu niệm và các đặc sản của Đà Lạt.

Thiền viện trúc lâm 
Chợ hoa Đà Lạt
Nhà Thờ Domaine

Chiều: Sau khi ăn trưa tại nhà hàng, xe và hướng dẫn viên đón Đoàn ra sân bay Liên Cương. Tạm biệt Đà Lạt quý khách đón chuyến bay trở về Hà Nội. Xe sẽ đón Đoàn trở về Hạ Long nghỉ ngơi và uống trà, cà phê tại nhà hàng cà phê Bãi Cháy. Quý khách nhận quà lưu niệm của công ty du lịch Asian và kết thúc chuyền tham quan du lịch Hạ Long - Đà Nẵng - Nha Trang - Đà Lạt 5 ngày 4 đêm.', N'Images/Trang chu/Trong nuoc/vinpearl-land-khu-vui-choi.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN15', N'Tour ghép Hạ Long - Đà Nẵng - Hội An', N'Hàng ngày', N'3 ngày 2 đêm', N'Đà Nẵng, Hội An', N'2.800.000', N'Đà Nẵng đứng đầu trong những bãi biển đẹp của nước ta. Biển ở hai nơi này đều rất trong và sạch, dịch vụ tốt. Đến với Đà Nẵng,...', N'Đà Nẵng đứng đầu trong những bãi biển đẹp của nước ta. Biển ở hai nơi này đều rất trong và sạch, dịch vụ tốt. Đến với Đà Nẵng, bạn có thể đi thăm quan một số điểm như: bán đảo Sơn Trà, chùa Linh Ứng, bảo tàng điêu khắc Champa, núi Ngũ Hành Sơn, Bà Nà Hills hay Cù Lao Chàm nổi tiếng. Buổi tối ở Đà Nẵng bạn không thể bỏ qua những giây phút lãng mạn bên cầu sông Hàn lung linh huyền ảo hay chờ đợi để tận mắt chiêm ngưỡng chiếc cầu quay vào lúc 0 giờ sáng. Thành phố Đà Nẵng được đánh giá là rất sạch sẽ, trong lành, người dân Đà Nẵng thân thiện, nhiệt tình và mến khách.

Ngày 1 : Hạ Long - Hà Nội - Đà Nẵng ( Ăn trưa, tối )

Sáng: Xe và hướng dẫn viên của công ty Du lịch Asian sẽ đón quý khách tại nhà hàng cà phê Bãi Cháy hoặc Hòn Gai khởi hành đi sân bay Nội Bài Hà Nội. Trên đường đoàn sẽ nghỉ chân ở Hải Dương.

Chiều: Đoàn ăn trưa tại sân bay Nội Bài và làm thủ tục lên chuyến bay đi Đà Nẵng. Sau hơn một giờ bay đoàn đã đến thành phố sạch sẽ và đáng sống nhất Việt Nam. Nhận phòng và nghỉ ngơi tại khách sạn trên bờ biển Mỹ Kê - một trong bãi biển đẹp nhất Việt Nam. Tự do vui chơi và ngắm cảnh hoàng hôn trên bờ biển.

Bãi tắm Mỹ Kê Đà Nẵng
Bãi biển Đà Nẵng, du lịch Asian
Cầu rồng Đà Nẵng

Tối: Đoàn thưởng thức hải sản tươi sống ở nhà hàng. Sau đó thưởng ngoạn du thuyền trên cầu sông Hàn ngắm cảnh Đà Nẵng về đêm. Chụp ảnh Cầu Quay Sông Hàn, cầu Rồng. Nghỉ đêm và vui chơi tự do tại khách sạn.

Ngày 2 : Đà Nẵng -  Bà Nà Hills - (Ăn: sáng, trưa, tối)

Sáng:  Đoàn ăn sáng tại khách sạn. Sau đó tham quan khu du lịch Bà Nà Hills, với các thắng cảnh như thác Tóc Tiên, khu Lăng Pháp, khu chuồng ngựa – hầm r­ượu cũ của Pháp, đỉnh nhà Rông, V­ườn Tịnh Tâm, chùa Linh ứng, Thích Ca Phật Đài tọa lạc ở vị trí cao nhất Việt Nam và đồi Nguyệt Vọng. Khám phá các trò chơi tại Fantasy Park như: Vòng quay Tình yêu, Phi công Skyver, đường đua lửa, cối xay gió, người nhện, tháp rơi xoay tự do, rạp chiếu phim 360 độ… Đoàn ăn trưa tại Bà Nà và nghỉ trưa trên núi tận hưởng cảm giác mát mẻ của núi rừng.

 
Cáp treo Bà Nà Hills
Khu Nhà Pháp
Hội An

Chiều: Xe đón đoàn về lại khách sạn nghỉ ngơi, tự do tắm biển và tham gia các trò chơi vui nhộn trên biển do hướng dẫn viên tổ chức.

Tối:  Đoàn ăn tối tại nhà hàng và tham quan phố Cổ Hội An về đêm. Vui chơi tự túc và nghỉ  đêm tại khách sạn.

Ngày 3 : Đà Nẵng - Hà Nội - Hạ Long  ( Ăn sáng, trưa, tối)

Sáng: Đoàn ăn sáng tại khách sạn, tự đo đi mua sắm quà lưu niệm và khám phá thành phố Đà Nẵng .

Chiều: Sau khi ăn trưa tại nhà hàng, xe và hướng dẫn viên đón Đoàn ra sân bay Đà Nẵng. Tạm biệt Đà Nẵng quý khách đón chuyến bay trở về Hà Nội. Xe sẽ đón Đoàn trở về Hạ Long nghỉ ngơi và uống trà, cà phê tại nhà hàng cà phê Bãi Cháy. Quý khách nhận quà lưu niệm của công ty du lịchAsian và kết thúc chuyền tham quan du lịch Hạ Long - Đà Nẵng - Hội An 3 ngày 2 đêm.', N'Images/Trang chu/Trong nuoc/17.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN16', N'Hạ Long - Sài Gòn - Mũi Né - Đại Nam', N'Hàng ngày', N'5 ngày 4 đêm', N'Sài Gòn, Mũi Né, khu du lịch Đại Nam', N'4.000.000', N'Ngày 1: Hạ Long - Tp.Hồ Chí Minh – Mũi Né (Ăn tối) 6h00 sáng, xe và hướng dẫn viên Công ty du lịch Asian sẽ đến đón...', N'Ngày 1: Hạ Long - Tp.Hồ Chí Minh – Mũi Né (Ăn tối)

6h00 sáng, xe và hướng dẫn viên Công ty du lịch Asian sẽ đến đón du khách tại điểm hẹn đi sân bay Cát Bi, thành phố Hải Phòng, đáp chuyến bay VN lúc 9h50 đi thành phố Hồ Chí Minh. 11h55, đoàn tới thành phố Hồ Chí Minh, xe và hướng dẫn viên du lịch đón Qúy khách tại sân bay Tân Sơn Nhất, sau đó, tập trung ăn trưa tại nhà hàng. Sau bữa trưa, hướng dẫn viên sẽ cùng đoàn lên xe khởi hành đi đến khu du lịch Mũi Né – thành phố Phan Thiết. Đây là khu du lịch nổi tiếng Việt Nam với bờ biển dài hoang vu, các đồi cát như sa mạc để thưởng thức một kỳ nghĩ thư giãn bên bờ biển. Ăn tối và nhận phòng khách sạn nghỉ ngơi tại Mũi Né. Buổi tối du khách có thể dạo biển, đi chợ đêm tại thành phố Phan Thiết.


Ngày 2:  Mũi Né - Phan Thiết (Ăn sáng/trưa/tối)

Sau bữa sáng, Đoàn bắt đầu tham quan các danh lam thắng cảnh cua Phan Thiết Như: tháp Cham Posanu, chụp ảnh lưu niệm tại bãi đá Ông Địa, rặng dừa Hàm Tiến, Làng chài Mũi Né, cùng hòa mình vào cuộc sống nhộn nhịp của một làng chài xứ biển thuần chất Việt Nam. Ngắm cảnh ghe thuyền của ngư dân cập bến. Tự do tắm biển và thưởng thức hải sản tươi ngon, giá bình dân. Bên cạnh đó, du khách còn có thể thưởng thức vị ngọt ngào của trái dừa tại Bãi biển Phan Thiết. Đoàn ăn trưa tại nhà hàng.  Sau chinh phục đồi cát bay, tham gia trò chơi trượt cát, chiêm ngưỡng cảnh mặt trời lặn trên đồi. Sau đó đoàn đi tham quan chợ Phan Thiết, sắm quà đặc sản vùng biển Phan Thiết. Đoàn nghỉ đêm tại Mũi Né và tham gia bữa tối tiệc nướng ngoài trời tại nhà hàng.

Ngày 3: Mũi Né - Thành phố Hồ Chí Minh (ăn Sáng/ Trưa/ Tối).

Sau bữa sáng, tạm biệt Mũi Né, du khách khởi hành trở về thành phố Hồ Chí Minh - Thành phố nhộn nhịp. Ăn trưa tại nhà hàng và nhận phòng khách sạn tại thành phố. Sau đó, hướng dẫn viên sẽ cùng du khách thăm những di tích hàng đầu của thành phố Hồ Chí Minh như: Nhà Thờ Đức Bà, Bưu Điện Thành Phố, Tòa nhà Ủy Ban nhân dân Thành Phố, đây là những công trình kiến trúc sinh đông đẹp mắt và là tâm điểm của thành phố Hồ Chí Minh ngày nay để cùng tìm hiểu những nét độc đáo của những công trình kiến trúc này và chụp ảnh lưu niệm, bên cạnh đó du khách có thể ghé Trung tâm mua sắm Diamond Plaza. Bữa tối trên tàu Sài Gòn, du khách sẽ được ngắm cảnh thành phố Hồ Chí Minh rực rỡ sắc màu, lung linh, huyền ảo về đêm. Sau đó du khách về khách sạn nghỉ ngơi. Ngoài ra du khách có thể tự do đi dạo chợ đêm Bến Thành.

Ngày 4:  Sài Gòn  - Đại Nam (ăn Sáng/ Trưa/ Tối).

Sau bữa sáng, du khách sẽ khởi hành đến Lạc Cảnh Đại Nam Văn Hiến, đây là một khu du lịch tọa lạc tại thành phố Thủ Dầu Một,  tỉnh Bình Dương. Tại đây, đoàn sẽ tham quan kiến trúc Vạn Lý Trường Thành và mô hình thành phố Hồ Chí Minh thu nhỏ. Khu du lịch Đại Nam hiện là một công trình bậc nhất Đông Nam Á, nơi tôn vinh, ngưỡng vọng văn hoá dân tộc Việt Nam. Thăm quan khu Kim Điện uy nghi với những khung cửa chạm trổ 28 bộ tranh tiêu biểu, đánh dấu các mốc lịch sử của Việt Nam và những mái vòm với những bức vẽ độc đáo... Vườn thú Đại Nam, vườn thú có nhiều động vật quý hiếm duy nhất tại Việt Nam, du khách có thể tiếp cận dễ dàng với các loại thú hoang dã, qúy hiếm như sư tử trắng, tê giác trắng, hổ trắng.... Khu Công Viên Nước nước mặn và nước ngọt để thỏa sức vui đùa trong làn nước mát trong công viên. Công viên với thiết kế nằm trong dãy núi hùng vĩ, bên cạnh tòa lâu đài tráng lệ, dưới hình thức hồ tạo sóng kép, bao quanh các đảo nhỏ giữa lòng biển. Sau khi kết thúc chương trình tại Công viên, du khách sẽ ăn trưa tại nhà hàng Đại Nam, sau đó, du khách tiếp tục tham quan và tham gia các trò trơi tại Khu Vui Chơi Giải Trí (du khách tự túc tham gia các trò chơi) như thảm bay, thuyền đụng, phi thuyền đại chiến... và những trò cảm giác mạnh như con tàu lốc xoay, vượt thác.... Sau đó, đoàn tập trung theo hướng dẫn viên lên xe trở về thành phố Hồ Chí Minh, tham gia bữa tối Gala, ca hát cùng nhau tại nhà hàng.

Ngày 5:  Thành phố Hồ Chí Minh bay về Hà Nội (ăn bữa sáng/tối).

Sau bữa sáng, du khách lên xe đến khu mua sắm như: chợ Bến Thành, Sài Gòn Aquare... tự do mua sắm. Sau đó, đoàn tập trung lên xe, xe sẽ đưa du khách ra sân bay Tân Sơn Nhất, đáp chuyến bay VN lúc 16h00 đi về Cát Bi, thành phố Hải Phòng. 18h00, đoàn về đến sân bay Cát Bi. Xe đón đoàn về nhà hàng Tre Việt dùng bữa tối. Sau bữa tối, công ty Du Lịch Asian đưa đoàn về Hạ Long. Kết thúc chương trình tour du lịch bổ ích và lý thú.', N'Images/Trang chu/Trong nuoc/4-grande.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN17', N'Hạ Long - Đồng Bằng Sông Cửu Long - Tp Hồ Chí Minh', N'Hàng ngày', N'5 ngày 4 đêm', N'Đồng Bằng Sông Cửu Long', N'3.000.000', N'CHƯƠNG TRÌNH THAM QUAN DU LỊCH HẠ LONG – ĐỒNG BẰNG SÔNG CỬU LONG - TP HỒ CHÍ MINH 5 NGÀY 4 ĐÊM Quý khách hãy cùng...', N'Ngày thứ nhất : HẠ LONG - CÁT BI - TÂN SƠN NHẤT – CÀ MAU ( ăn trưa, tối )

 Thành phố Cà Mau
Thành phố Cà Mau
Sáng: Xe và hướng dẫn viên công ty du lịch Asian đón quý khách tại trung tâm thành phố Hạ Long khởi hành tới sân bay Cát Bi Hải Phòng làm thủ tục đáp chuyến bay vào sân bay Tân Sơn Nhất – TP Hồ Chí Minh. Tới sân bay Tân Sơn Nhất trong lúc chờ đợi làm thủ tục đổi chuyến bay đến Cà Mau quý khách có thể thư giãn, nghỉ ngơi dùng bữa trưa  tại nhà chờ sân bay. Đến Cà Mau, quý khách nhận phòng khách sạn nghỉ ngơi.

Tối: Sau bữa tối quý khách tự do đi dạo, tham quan thành phố Cà Mau về đêm. 

 Ngày thứ hai : ĐẤT MŨI CÀ MAU - BẠC LIÊU (ăn sáng, trưa, tối)

Sáng: Xe đưa quý khách khởi hành sớm đi Năm Căn, quý khách sẽ được trải nghiệm cảm giác chinh phục những cây số cuối cùng của con đường thiên lý Việt Nam. Đoàn tiếp tục đi canô qua sông Cửa Lớn, Ông Trang, Rạch Tàu, tới mũi Cà Mau, quý khách đặt chân lên mãnh đất cực nam của tổ quốc, ngắm mũi Cà Mau, khu rừng ngập mặn lớn thứ hai trên thế giới. Đoàn chụp hình lưu niệm tại cột mốc tọa độ quốc gia và panô biểu tượng mũi Cà Mau

Chiều: Quý khách rời Cà Mau đi Bạc Liêu, viếng nhà thờ Cha Diệp ở Hộ Phòng. Tới Bạc Liêu , (tỉnh Bạc Liêu) dùng bữa tối, đoàn về khách sạn nhận phòng nghỉ đêm.

Tối: Quý khách tự do dạo thành phố Bạc Liêu về đêm.

 Cột mốc tọa độ quốc gia
Cột mốc tọa độ quốc gia
Ngày thứ 3: BẠC LIÊU - SÓC TRĂNG (ăn sáng, trưa, tối)

 Dân ca tài tử cài lương Nam Bộ
Đờn ca tài tử cài lương Nam Bộ
Sáng: Dùng điểm tâm sáng. Xe đưa quý khách đi tham quan nhà công tử Bạc Liêu, khu lưu niệm cố nhạc sĩ Cao Văn Lầu - tác giả bài Dạ Cổ Hoài Lang, Người có công lớn trong công cuộc khai sáng nền dân ca tài tử cải lương Nam Bộ, viếng phật bà Nam Hải, chùa Xiêm Cán.

Chiều: Quý khách khởi hành về Sóc Trăng theo đường Vĩnh Châu - Mỹ Xuyên, qua nhiều Phum Sóc và chùa Khơ-me cổ. Tới Sóc Trăng (tỉnh Sóc Trăng), du khách viếng chùa Dơi, chùa Đất Sét. Quý khách tiếp tục đi qua thị xã Ngã Bảy (tỉnh Hậu Giang) nơi ra đời của bài vọng cổ Tình Anh Bán Chiếu. Tới Cần Thơ (thành phố Cần Thơ) về khách sạn, quý khách nhận phòng nghỉ ngơi

Tối: Quý khách đi dạo bến Ninh Kiều, lên du thuyền trên sông hậu, nghe đờn ca tài tử cải lương. Sau đó, xe tiếp tục đưa du khách đi chợ đêm Tây Đô hoặc trung tâm thương mại Cái Khế, nơi có những hoạt động vui chơi, náo nhiệt nhất Tây Đô về đêm.

              

Ngày thứ 4: CẦN THƠ – KHU DU LỊCH PHÙ SA - TP.HỒ CHÍ MINH  (ăn sáng, trưa, tối)

Sáng: Quý khách dùng điểm tâm sáng, trả phòng khách sạn, xuống bến đò ngồi thuyền tham quan Chợ Nổi Cái Răng, một trong những chợ nổi lớn nhất Đồng Bằng Sông Cửu Long, tham quan nét đặc sắc loại hình mua bán trên sông của người Nam Bộ. Quý khách cùng mua bán với người thương hồ miền Tây. Tiếp tục đi đò tham quan ngắm cảnh đẹp hai bờ Sông Hậu, ngắm nhìn cảnh đẹp cầu treo Cần Thơ, đến vườn du lịch Mỹ Khánh, men theo những con đường nhỏ, du khách dạo chơi trong một không gian xanh của những vườn mận, xoài, chôm chôm, mít, sầu riêng... Tham gia làm bánh tráng, nấu rượu đế, thưởng thức những món ngon rất dân dã như cá lóc nướng ống tre, chuột quay lu, lẩu đồng quê...

Chiều: Đoàn về đến TP. Hồ Chí Minh nhận phòng khách sạn nghỉ ngơi.

 

 Chợ nổi Cái Răng Cần Thơ
Chợ nổi Cái Răng Cần Thơ
Tối: Sau bữa tối quý khách tự do đi dạo phố phường, ngắm cảnh sông Sài Gòn hoặc tới đài quan sát Saigon SkyDeck nằm trên tầng thứ 49 tòa nhà Bitexco Finacial Tower, quận 1, TP Hồ Chí Minh. Đây là vị trí lý tưởng cho quý khách có cơ hội ngắm cả thành phố từ độ Cao 178m so với mặt đất và tầm bao quát 360 độ từ trên không. Quý khách có thể ngắm toàn cảnh TP Hồ chí Minh rực rỡ sắc màu về đêm, ngắm bầu trời đầy sao lung linh huyền ảo qua lăng kính viễn  vọng và mua sắm đồ lưu niệm ( Chi phí tự túc ).       

 


Ngày thứ 5 : TP HỒ CHÍ MINH – CÁT BI – HẠ LONG ( ăn sáng, tối )

 Chợ Bến Thành
Chợ Bến Thành
 

 

Sáng : Quý khách dùng bữa sáng tại khách sạn, sau đó lên xe tới khu trung tâm thương mại mua sắm như : Chợ Bến Thành, Sài Gòn Aquare, Bitexco – đây là tòa tháp cao nhất Việt Nam của tập đoàn Biteco, bên trong tòa nhà là trung tâm thương mại lớn của TP Hồ Chí Minh. Tại đây quý khách tự do mua sắm và ăn trưa ( bữa trưa quý khách ăn tự do ). Sau đó tập hợp tại điểm hẹn, xe đưa quý khách ra sân bay Tân Sơn Nhất đáp chuyến bay đi sân bay Cát Bi.


Chiều: Tới sân bay Cát Bi, xe đón đoàn đi nhà hàng dùng bữa tối, sau khi dùng bữa tối quý khách lên xe quay về Hạ Long, kết thúc chuyến du lịch thú vị.', N'Images/Trang chu/Trong nuoc/du-lich-mien-tay-5-600x450.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN18', N'Hạ Long – Tp.Hồ Chí Minh – Đảo Phú Quốc', N'Hằng ngày', N'4 ngày 3 đêm', N'Thành phố Hồ Chí Minh, đảo Phú Quốc', N'4.500.000', N'Ngày thứ nhất: Hạ Long – thành phố Hồ Chí Minh Xe của công ty du lịch Asian đón đoàn tại Văn phòng Công ty khởi hành đến...', N'', N'Images/Trang chu/Trong nuoc/du-lich-phu-quoc.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN19', N'Hạ Long - Tp.Hồ Chí Minh - Đà Lạt - Nha Trang', N'Hàng ngày', N'6 ngày 5 đêm', N'Tp. Hồ Chí Minh, Đà Lạt, Nha Trang', N'5.200.000', N'Đến với Tour Hạ Long - Tp.Hồ Chí Minh - Đà Lạt - Nha Trang quý khách có dịp khám phá Tp. Hồ Chí Minh một trong những trung...
ĐẶT TOUR', N'Ngày 1: Hạ Long - Cát Bi - Tp. Hồ Chí Minh  (Ăn trưa, tối )

Buổi sáng: 6h00 xe và hướng dẫn viên du lịch công ty Asian đón quý khách tại điểm hẹn, hành trình đi sân bay Cát Bi đáp chuyến bay VN lúc 9h50 bay Sài Gòn. 11h55 tới Sài Gòn xe đón đoàn đi ăn trưa. Sau bữa trưa đưa quý khách về nhận phòng khách sạn nghỉ ngơi.

Buổi chiều: 15h00 Quý khách thăm những di tích hàng đầu của Tp. Hồ Chí Minh như: Dinh Thống Nhất, Bến Nhà Rồng, Nhà Thờ Đức Bà, Bưu Điện Thành Phố, tòa nhà Ủy Ban Thành Phố...

Buổi tối: 18h30 đoàn lên du thuyền dùng bữa tối trên tàu Sài Gòn, quý khách sẽ được ngắm cảnh thành phố Hồ Chí Minh rực rỡ sắc màu,  lung linh, huyền ảo về đêm. Sau đó quý khách về khách sạn nghỉ ngơi.


Ngày 2: Tp. Hồ Chí Minh - Đại Nam (Ăn sáng, trưa, tối)

Buổi sáng: 6h30 đoàn dùng bữa sáng tại khách sạn. 7h30 quý khách khởi hành đến Lạc Cảnh Đại Nam Văn Hiến, một khu du lịch tọa lạc tại thành phố Thủ Dầu Một, tỉnh Bình Dương. Một công trình bậc nhất Đông Nam Á, nơi tôn vinh, ngưỡng vọng văn hoá dân tộc Việt Nam. Tham quan khu Kim Điện, Vườn thú Đại Nam, vườn thú mở duy nhất tại Việt Nam, quý khách có thể tiếp cận dễ dàng với các loại thú hoang dã, quý hiếm. Khu Công Viên Nước nước mặn nước ngọt.

Buổi trưa: 11h30 Ăn trưa tại nhà hàng Đại Nam với các món đặc sản địa phương, sau đó quý khách tiếp tục tham quan, Khu Vui Chơi Giải Trí (quý khách tự túc chi phí tham gia các trò chơi).

Buổi chiều: 15h30 đoàn tập trung lên xe về Sài Gòn nghỉ ngơi.

Bữa tối đoàn dùng bữa tại nhà hàng Lẩu Cá Kèo Bà Huyện

Buổi tối: Quý khách tự do đi Siêu thị mua sắm hoặc thăm thân.


Ngày 3: Tp.Hồ Chí Minh - Đà Lạt  (Ăn sáng, trưa, tối)

Sau bữa sáng tại khách sạn, quí khách làm thủ tục trả phòng đoàn khởi hành đi Đà Lạt thành phố của ngàn hoa, quý khách dùng cơm trưa tại Bảo Lộc. Chiều đến Đà Lạt quý khách tham quan thiền viện trúc lâm một trong những thiền viện lớn nhất Việt Nam nằm trên đỉnh núi phượng hoàng, đoàn về khách sạn nhận phòng nghĩ ngơi ăn tối. Tối quý khách có thể đến với chân núi Langbiang tham gia chương trình công chiêng tây nguyên với người đồng bào Lạch hoặc khám phá thành phố Đà Lạt về đêm.

Ngày 04: Đà Lạt - Nha Trang ( Ăn sáng, trưa, tối)

Sau bữa sáng đoàn khởi hành tham quan dinh Bảo Đại ( vị vua cuối cùng của triều Nguyễn), vườn hoa thành phố, thung lũng tình yêu… quý khách trả phòng dùng cơm trưa, khởi hành đi Nha Trang, chiều đến Nha Trang quý khách nhận phòng nghĩ ngơi, tự do tắm biển. Dùng cơm tối tại nhà hàng buổi tối quý khách tự do khám phá Nha Trang về đêm.

Ngày 05: Nha Trang  ( Ăn sáng, trưa, tối )

Sau bữa sáng tại khách sạn, quý khách tập chung lên xe đi thăm vịnh Nha Trang một trong những vịnh nổi tiếng nhất Đông Nam Á, tại đây quý khách được ngắm những hòn đảo xinh đẹp như, đảo Hòn Tằm, Hòn Mun, quý khách dùng cơm trưa. Buổi chiều quý khách tập chung hướng dẫn và lái xe đưa quý vị đi Vinpearl lớn nhất Đông Nam Á, trăm ngàn sinh vật biển (Thủy cung trưng bày, triển lãm các sinh vật biển theo vùng khí hậu: Khu sinh vật biển vùng khí hậu Bắc châu Á, khu sinh vật biển vùng khí hậu Nam châu Á, khu sinh vật biển vùng khí hậu Amazon, khu sinh vật biển vùng khí hậu Duyên Hải… Quý khách sẽ được di chuyển bằng thang cuốn trong một đường hầm dưới đáy biển được thiết kế rất công phu để tạo cảm giác hấp dẫn, kỳ bí). Tham gia tất cả các trò chơi động cảm giác mạnh (Quay nhào lộn, đu quay ngựa gỗ, đu quay voi), các trò chơi tĩnh (Tàu lượn, đua xe, khám phá vũ trụ, trượt tuyết, lướt sóng, xe điện đụng). Đặc biệt có phòng chiếu phim 4D mới lạ, tăng thêm hiệu quả nhờ các vòi phun gió, nước để thám hiểm đại dương, các đường hầm bí hiểm hay lâu đài ma quái. xem chương trình biểu diễn trên sân khấu nhạc nước hiện đại. Ăn tối tại nhà hàng trên đảo Vinpearl .

Nghỉ đêm tại Nha Trang, buổi tối quý khách tự do mua sắm ngắm cảnh về đêm của thành phố và  bãi biển thơ mộng,


Ngày 06: Nha Trang - Nội Bài - Hạ Long  (Ăn sáng, trưa, tối)

Ăn sáng tại khách sạn. Đoàn khởi hành tham quan Long Sơn Tự, tháp bà Ponagar, quý khách đến với khu suối khoáng nóng tháp bà ôn luyện liệu pháp tắm bùn.... Ăn trưa  tại nhà hàng. Xe đưa đoàn ra sân bay Cam Ranh đáp chuyến bay VN Airlines về Hà Nội  xe đón quý khách tại sân bay Nội Bài đưa quý khách về Hạ Long. Kết thúc chương trình thăm quan 6 ngày 5 đêm. ', N'Images/Trang chu/Trong nuoc/cana.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN2', N'Hà Nội – Vân Đồn – Quan Lạn – Hạ Long', N'Hàng ngày', N'03 ngày/02 đêm', N'Hà Nội – Vân Đồn – Quan Lạn – Hạ Long', N'2.660.000', N'Nằm trong quần thể đảo lớn trên Vịnh Bái Tử Long thơ mộng, Quan Lạn là vùng đất được thiên nhiên hào phóng ban tặng nhiều...', N'Nằm trong quần thể đảo lớn trên Vịnh Bái Tử Long thơ mộng, Quan Lạn là vùng đất được thiên nhiên hào phóng ban tặng nhiều lợi thế. Nơi đây không chỉ hội tụ đầy đủ những yếu tố của 1 danh thắng thiên nhiên mà còn lưu giữ trọn vẹn những giá trị lịch sử, truyền thống lâu đời. Đến với Quan Lạn để khám phá miền đất kỳ lạ của một vùng biển hàng ngàn những kỳ quan thiên tạo, đặt chân trên những hòn đảo chưa phai mờ dấu ấn cổ xưa, thả sức tắm nắng và gió biển trên những bãi tắm nguyên sơ và thưởng thức những món hải sản nổi tiếng của Vịnh Bái Tử Long. Khi màn đêm buông xuống, từ những ngôi nhà sàn xinh xắn nằm bên bờ biển, bạn thả hồn thư thái ngắm trăng hoặc đi dạo trên bờ biển mềm mại lộng gió, len lỏi giữa bạt ngàn phi lao, hoặc cùng với những ngư dân trên đảo hoà chung lời ca nồng nàn về biển. Đến với Quan Lạn, bạn có dịp bổ sung vào vốn kiến thức lịch sử những tư liệu quý giá về những văn hoá Soi Nhụ, Hà Giắt,... tham quan cụm di tích Đình, Đền, Chùa được xây dựng từ thời Lý cùng với thương cảng Vân Đồn – thương cảng đầu tiên của Việt Nam.


Lịch trình du lịch:

 Hà Nội – Vân Đồn – Quan Lạn – Hạ Long

Thời gian 03 ngày/02 đêm

(phương tiện vận chuyển xe du lịch, tầu cao tốc, xe Tuktuk)

 

NGÀY 01:  12/06  HÀ NỘI – BÁI TỬ LONG - QUAN LẠN   (Ăn sáng, trưa, tối)

 

Buổi sáng: 06h00 xe và hướng dẫn của AsianTravel đón Quý khách tại điểm hẹn khởi hành đi bến cảng Cái Rồng Vân Đồn (đoàn dừng chân nghỉ ngơi, ăn sáng  tại Hải Dương).

Buổi trưa: Đến Vân Đồn Quý khách ăn trưa tại nhà hàng Đại Dương thưởng thức các món ăn đặc sản của biển Vân Đồn. Sau bữa trưa Quý khách xuống bến tầu làm thủ tục lên tàu cao tốc đi đảo chuyến 13h00 đi ra khu du lịch sinh thái biển Quan Lạn. Trên lộ trình Quý khách thoả sức ngắm nhìn phong cảnh tuyệt đẹp của Vịnh Bái Tử Long. Sau 45 phút tàu đưa Quý khách cập cảng, đoàn lên xe tuktuk về nhận phòng nghỉ tại Resort Vân Hải - những ngôi nhà sàn xinh xắn nằm trong rừng phi lao thơ mộng bên bờ biển xanh.

Buổi chiều: Là khoảng thời gian dành riêng cho Quý khách cùng gia đình, bạn bè tự do nghỉ ngơi, vui chơi, tắm biển, thư giãn trên bãi biển cát trắng, ngắm hoàng hôn biển.

Buổi tối: Đoàn dùng bữa trong khu Resort Vân Hải, Sau bữa tối quý khách có thể tự túc thuê xe cùng HDV đưa Quý khách đi ra bãi biển đi bắt còng gió, bắt ghẹ, bắt tôm, cá... Sau đó đưa về khách sạn chế biến, thưởng thức thành quả.

NGÀY 02:  13/06   QUAN LẠN ISLAND TOUR      (Ăn sáng, trưa, tối)

Buổi sáng: Đoàn dậy sớm tắm biển Quan Lạn, tự do vui chơi, ngắm Bình Minh trên biển. 7h30 đoàn dùng bữa sáng Buffet tại khách sạn, sau đó xe Tuktuk đón Quý khách đi thăm một vòng khám phá đảo, các danh lam thắng cảnh nổi tiếng trên đảo như đền, miếu, đình, chùa Quan Lạn đã được xếp hạng di tích lịch sử văn hoá, nghe giới thiệu về lịch sử của các tài nguyên và tìm hiểu cuộc sống, phong tục tập quán của cư dân trên đảo nơi cách đất liền 60km, tiếp tục hành trình Quý khách đến với các bãi tắm nổi tiếng như Sơn Hào, Bãi Cát Trắng, Quan Lạn, đoàn dừng lại tắm biển bãi Minh Châu. Quay về tự do vui chơi tại resort, men theo bờ biển đến thăm Bãi đá trời, Bãi chân tiên, Bàn cờ Công chúa, bắt ốc, chơi kéo co, chơi bóng chuyền, đá bóng, tắm biển…

Buổi trưa: Quý khách ăn trưa tại nhà hàng trong khu resort.

Buổi chiều: 15h00 đoàn tập trung ra bãi biển, tham gia chương trình TeamBuilding do HDV của AsiaTravel tổ chức, chắc chắn sẽ đêm lại cho bạn có những giây phút vui chơi thư giãn thật khó quên.

Buổi tối:19h00 Quý khách tổ chức Chương trình Gala Dinner, giao lưu đêm gia đêm lửa trại, hòa mình vào những vũ điệu ,nồng nàn khó quên hay nướng cho nhau những bắp ngô nóng hổi, hay tặng cho nhau những củ khoai, củ sắn... hát cho nhau nghe những bài hát mà đồng đội, bạn hữu yêu thích... quý khách dạo chơi trên bờ biển mềm mại lộng gió, khám phá vẻ đẹp đầy hoang sơ và lãng mạn của biển đêm Quan Lạn.

NGÀY 03:  14/06   QUAN LẠN – CHỢ HẠ LONG - HÀ NỘI  (Ăn sáng, trưa)

Buổi sáng: Quý khách thức dậy ngắm cảnh bình minh, tân hưởng những giây phút tĩnh lặng, yên bình, tự do tắm biển, dạo chơi trên đảo hoặc nghỉ ngơi thư giãn trước khi có điểm tâm sáng.

8h00: Quý khách trả phòng khách sạn, xe tuktuk đón Quý khách ra bến làm thủ tục lên tầu cao tốc về đất liền. Sau 45 phút tầu chạy Quý khách cập cảng Vân Đồn, xe đón đoàn về Hạ Long đưa đoàn đi thăm quan một vòng khu đô thị mới Hạ Long, xe đưa đoàn hành trình qua con đường bao biển trên những cây cầu mới xây vượt biển, ngắm nhìn cảnh đẹp tuyệt mỹ của vịnh Bái Tử Long...sau đó đoàn dừng lại chụp ảnh lưu niệm tại Quảng Trường 30/10, Bảo Tàng, Thư viện Quảng Ninh với vốn đầu tư xây dựng trên 900 tỷ đoạt giải công trình của năm. Tiếp tục hành trình Quý khách về vơi trung tâm thương mại Vincom Hạ Long, chợ Hạ Long thỏa thích mua sắm đặc sản Hạ Long như chả mực Hạ Long, mực khô, xá sùng, tôm, cá, cua ghẹ...Sau khi thỏa thích nhu cầu mua sắm của Quý khách đoàn tập trung lên xe về nhà hàng ăn trưa.

Buổi trưa: Quý khách ăn trưa tại nhà hàng đặc sản nổi tiếng Cơm Việt với các món ăn đặc sản của biển Hạ Long.

Buổi chiều: Quý khách lên xe về Hà Nội. Trên đường dừng chân ở nhà hàng Hải Dương, thưởng thức đặc sản Hải Dương bánh đậu xanh, bánh gai, vải khô...sau đó xe đưa đoàn về điểm xuất phát.

Tạm biệt và hẹn gặp lại Quý khách. Kết thúc chương trình.

Giá tour: 2.460.000đ/khách

(Áp dụng cho đoàn trên 120 khách)

 

Giá tour bao gồm:

- Xe du lịch phục vụ theo chương trình.

- Tàu cao tốc  đi đảo Vân Đồn - Quan Lạn - Vân Đồn

- Xe tuktuk đón tiễn cảng và tham quan 1 lượt trên đảo

- Ăn 04 bữa chính 150.000 đồng/xuất + 01 bữa tối Gala 300.000 đồng/xuất + 2 bữa sáng buffet.

- Nghỉ tại Resort Vân Hải  (ngủ 04 người/01 phòng)

- Bảo hiểm du lịch mức chi trả tối đa 30,000,000 VNĐ/ khách

- Hướng dẫn viên kinh nghiệm, nhiệt tình chu đáo

-  Nước uống trên xe 01 chai/khách/ngày.

- Chi phí loa máy Chương trình Gala Dinner, Giao lưu lửa trại

- Phí tổ chức chương trình TeamBuilding bãi biển

Không bao gồm:

- Đồ uống trong bữa ăn.

-  Ngủ phòng đơn, đôi   

- Chi phí cá nhân và chi phí khác ngoài chương trình.

- Thuế Vat 10%

- Tiền thưởng cho HDV và lái xe.

Gía tour trẻ em:

- Trẻ em từ 5-11 tuổi thu 75% (ngủ ghép cùng phòng với bố mẹ)

-Trẻ em từ 12 tuổi trở lên thu 100% giá tour

-Trẻ em dưới 5 tuổi không thu tiền tour (bố mẹ tự lo mọi chi phí cho bé)

Ghi chú:

- Nếu Quý khách đi vào cuối tuần giá tour + 150.000 đồng/khách

- Nếu Quý khách nghỉ phòng đôi giá tour + 250.000 đồng/khách

- Nếu Quý khách nghỉ phòng 3 giá tour + 200.000 đồng/khách

- Mỗi 2 Quý khách mang theo cho mình 01 đèn Pin và 01 đôi gang tay để tối đi soi Còng, bắt ghẹ (nếu Quý khách tham gia chương trình buổi đêm)', N'Images/Trang chu/Trong nuoc/du-lich-quan-lan.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN20', N'Hạ Long - Côn Đảo', N'Hằng ngày', N'4 ngày 3 đêm', N'Côn Đảo', N'3.200.000', N'Du lịch Côn Đảo là một trong những điểm du lịch miền biển hàng đầu thu hút nhiều người nhất hiện nay. Quần đảo Côn Đảo (thuộc tỉnh Bà...
', N'', N'Images/Trang chu/Trong nuoc/cn-con-dao-01.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN21', N'Hạ Long - Buôn Mê Thuột - Buôn Đôn - Thác Dray Nur', N'Hằng ngày', N'3 ngày 2 đêm', N'Tây Nguyên', N'2.660.000', N'Ngày 1: Hạ Long – Buôn Mê Thuột (Ăn trưa, tối) Sáng: Xe và hướng dẫn viên công ty Du lịch Asian đón quý khách tại điểm hẹn...', N'', N'Images/Trang chu/Trong nuoc/buon-ma-thuot-halongwave-01.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN22', N'Hạ Long - Hà Nội - Huế - Phong Nha - Nhật Lệ', N'Hằng ngày', N'4 ngày 5 đêm', N'Huế, Đà Nẵng', N'4.850.000', N'Tour du lịch Huế - Phong Nha – Nhật Lệ (Thời gian: 4 ngày 5 đêm, phương tiện Ô tô) Miền Trung- dải đất hẹp nhưng lại...
ĐẶT TOUR', N'', N'Images/Trang chu/Trong nuoc/19-big.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN23', N'Hạ Long - Huế - Đà Nẵng - Hội An', N'Hàng ngày', N'5 ngày 4 đêm', N'Cố đô Huế, Đà Nẵng, phố cổ Hội An', N'5.400.000', N'Đến với miền Trung thăm cố đô Huế với nét đẹp vừa mộng mơ vừa cổ kính trang nghiêm mà chẳng nơi nào có được. Và du khách cũng...
ĐẶT TOUR
', N'Ngày thứ nhất: Hạ Long – Huế

Xe và hướng dẫn viên đón du khách tại văn phòng Công ty Cổ Phần Du Lịch Quốc Tế Asian, đưa đoàn đến sân bay Nội Bài, đáp chuyến bay từ Hà Nội khởi hành đi Huế. Đến sân bay Huế, xe đón du khách về khách sạn nhận phòng nghỉ ngơi. Buổi chiều, du khách đi thăm quan Đại Nội với Ngọ Môn, Hoàng Thành, Tử Cấm Thành, Điện Diên Khánh, Cửu Đỉnh...và cầu may tại chùa Thiên Mụ.



Thành Nội Huế

Sau đó, xe đưa du khách đi mua sắm đặc sản địa phương tại chợ Đông Ba. Sau bữa tối, du khách  xuống thuyền thưởng thức chương trình ca Huế trên sông Hương, ngắm cầu Tràng Tiền và thả đèn hoa đăng trên sông Hương rồi về khách sạn nghỉ ngơi. Du khách sẽ ngủ đêm tại Huế. Kết thúc chương trình tham quan ngày thứ nhất

Ngày thứ hai: Cố Đô Huế

Quý khách dùng bữa sáng tại khách sạn, sau đó trả phòng và lên xe đi thăm quan Lăng Tự Đức, Lăng Khải Định. Sau bữa trưa tại nhà hàng ở Huế, xe đón quý khách khởi hành đi phố cổ Hội An. Đến Hội An, quý khách nhận phòng tại khách sạn và ăn tối tại nhà hàng. Sau bữa tối, quý khách thỏa sức dạo ngắm phố cổ Hội An về đêm, ngắm hoa đăng được thả trên sông Thu Bồn. Quý khách nghỉ đêm tại Hội An. Kết thúc chương trình tham quan ngày thứ hai của quý khách.



Phố cổ Hội An

 

Ngày thứ ba: Hội An – Đà Nẵng

Quý khách ăn sáng tại khách sạn sau đó làm thủ tục trả phòng, quý khách lên xe tiếp tục hành trình đi tham quan và khám phá phố cổ Hội An như: Chùa Cầu, Nhà Cổ Phùng Hưng, Hội Quán Phúc Kiến. Sau đó quý khách dùng bữa trưa tại nhà hàng, tiếp theo sau đó lên xe đi Đà Nẵng, trên đường đi quý khách có cơ hội tham quan Ngũ Hành Sơn, tham quan Động Tàng Chơn, Động Hoa Nghiêm, chùa Non Nước và làng đá mỹ nghệ Non Nước. Tiếp đó, xe đưa đoàn tham quan và tắm biển tại bãi biển Mỹ Khê – một trong 20 bãi biển đẹp nhất thế giới. Sau bữa tối, du khách sẽ tự do tham quan thành phố biển, ngắm cầu quay sông Hàn. Quý khách sẽ nghỉ đêm tại thành phố Đà Nẵng.



Cầu Sông Hàn Đà Nẵng
Khu du lịch Bà Nà

 

Ngày thứ tư: Đà Nẵng - Khu du lịch Bà Nà

Sau bữa sáng tại khách sạn, xe và hướng dẫn viên đón đoàn đi tham quan khu du lịch Bà Nà. Đến Bà Nà, quý khách đi cáp treo đạt 2 kỷ lục thế giới lên núi bà Nà, tận hưởng không khí se lạnh của “Đà Lạt tại miền Trung”. Đoàn tham quan Núi Chúa, Suối Nai, Biệt thự Hoàng Lan, Đồi Vọng Nguyệt. Sau đó, quý khách về thành phố Đà Nẵng ăn tưa, tham quan và mua sắm tại trung tâm thành phố. Quý khách ăn tối và tự do ngắm cảnh cầu quay sông Hàn và tham quan Khu du lịch Không Gian Xưa ( Đà nẵng) – nơi hội tụ những cây có tuổi đời cao và quý hiếm, bộ sưu tập đồ cổ, nghe nhạc dân ca 3 miền, kết hợp ca nhạc mỗi tối. Quý khách nghỉ đêm tại Đà nẵng.



Khu du lịch Bà Nà


Ngày thứ năm: Đà Nẵng – Hạ Long, kết thúc chương trình tham quan.

Sau bữa ăn sáng tại khách sạn, đoàn đi tham quan bán đảo Sơn Trà, thăm chùa Linh Ứng – nơi có tượng Phật Bà lớn nhất Đông Nam Á và thắp hương cầu nguyện. Trở về khách sạn quý khách làm thủ tục trả phòng và ăn trưa tại nhà hàng, sau đó đi tham quan và mua sắm quà lưu niệm tạ chợ Hàn. Kế tiếp, xe đưa đoàn ra sân bay Đà Nẵng, đáp chuyến bay về Nội Bài Hà Nội. Đến sân bay Nội Bài, xe của công ty Asian Travel đón đoàn và đưa quý khách về Hạ Long, kết thúc chương trình tham quan Hạ Long - Huế - Đà Nẵng 5 ngày 4 đêm.', N'Images/Trang chu/Trong nuoc/17.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN24', N'Hạ Long - Nha Trang', N'Hàng ngày', N'4 ngày 3 đêm', N'Hạ Long, Nha Trang', N'7.900.000', N'Nha Trang hệt như một miền cổ tích. Với khí hậu nhiệt đới đặc trưng, Nha Trang rực rỡ với biển xanh, cát trắng, nắng vàng. Thành phố du...', N'Nha Trang hệt như một miền cổ tích. Với khí hậu nhiệt đới đặc trưng, Nha Trang rực rỡ với biển xanh, cát trắng, nắng vàng. Thành phố du lịch biển xinh đẹp và thơ mộng, được mệnh danh là “Lẵng hoa tươi rực rỡ đặt trên bờ biển Đông”, “Chiếc boong tàu đầy nắng”. Vịnh Nha Trang được xếp vào 1 trong 29 vịnh biển đẹp nhất thế giới; khi chảy qua đây, nhiều dòng hải lưu bỗng hòa quyện vào nhau, tạo nên “mái nhà chung” cho muôn loài trú ngụ, sinh sôi. Vịnh Nha Trang không chỉ giàu tài nguyên, đẹp cảnh quan mà còn gắn liền với những nét đẹp của văn hoá biển và những địa chỉ văn hóa, du lịch độc đáo và hấp dẫn... Để tận hưởng vẻ đẹp của miền cổ tích này mời quý khách cùng giam gia tour Hạ Long - Nha Trang (4 ngày 3 đêm) khởi hành từ Hạ Long hoặc Hà Nội.

Ngày thứ nhất: Hạ Long - Nha Trang (Ăn trưa, tối)

Buổi sáng: Quý khách sẽ tập trung tại Văn phòng Công ty Cổ Phần Du Lịch Quốc Tế Asian khu du lịch Bãi Cháy, thành phố Hạ Long.  Xe và hướng dẫn viên sẽ đón Đoàn đi sân bay Nội Bài, đáp chuyến bay đến sân bay Cam Ranh. Hạ cánh tại sân bay Cam Ranh, xe và hướng dẫn viên sẽ đón đoàn tại sân bay đi Nha Trang.



Đu quay Vinpear Land


Buổi chiều: Trên đường đến khách sạn, quý khách sẽ ghé qua bãi biển Cà Ná - một trong những bãi biển đẹp nhất miền Trung. Từ Cam Ranh, xe sẽ đưa quý khách đi theo con đường mới bao biển đến Nha Trang, trên xe, quý khách có thể ngắm cảnh hoàng hôn trên Vịnh Nha Trang. Đoàn đến Nha Trang nhận phòng nghỉ và tự do tắm biển .

Buổi tối: Quý khách thưởng thức hải sản tươi sống tại nhà hàng và tự do chơi phố hoặc nghỉ ngơi thư giãn sớm sau một ngày hành trình. Nghỉ đêm tại khách sạn.

Ngày thứ hai: Nha Trang (Ăn sáng, trưa, tối)

Buổi sáng: Xe và hướng dẫn viên sẽ đưa đoàn ra cảng cầu Đá để ngồi thuyền tham quan Đảo Hòn Tằm, đây là hòn đảo nhiệt đới với biển xanh quyến rũ và cát trắng mịn màng. Đến đảo, quý khách sẽ được tự do thỏa sức tắm biển hay ngâm mình thư giãn trong hồ bơi,tham quan Khu Nhà Cổ, là nơi bảo tồn và tái hiện những nét văn hóa truyền thống Việt Nam, Thác nước nhân tạo, thưởng thức chương trình biểu diễn sống động của ban nhạc Philippines. Đồng thời, quý khách cũng có thể thử sức mạo hiểm khi tự mình trên những chiếc thuyền Kayak để bơi chèo trên bãi tắm Hòn Tằm, hay có thể tự túc kinh phí để tham gia các trò chơi thể thao dưới nước đầy thú vị như dù bay, canô nước, lướt sóng...tại bãi tắm trong xanh của hòn đảo xinh đẹp này.



Vui chơi ở Hòn Tằm

Buổi chiều: Sau bữa trưa trên đảo xe của Công ty Asian Travel sẽ đưa quý khách tham quan và chụp hình lưu niệm tại Tháp Bà Ponagar - một biểu tượng tín ngưỡng thiêng liêng của Xứ Trầm Hương.

Buổi tối: Để có không gian thoải mái và ấm áp bên bạn bè và người thân, quý khách sẽ tự tổ chức bữa ăn tối tự túc tại các nhà hàng ven biển theo từng sở thích. Sau bữa tối, quý khách có thể tự do đi dạo trên những con đường phố biển hoặc tự túc kinh phí để đăng ký chương trình tham quan Thế Giới Giải Trí Vinpearl Land, tham gia các trò chơi như quay nhào lộn, đu quay ngựa gỗ, tàu lượn, đua xe, khám phá vũ trụ… và thưởng thức Chương trình biểu diễn Nhạc nước hiện đại. Nghỉ đêm tại khách sạn trung tâm thành phố Nha Trang.

Ngày thứ ba: Nha Trang ( Ăn sáng, trưa, tối )

Buổi sáng: Sau bữa sáng, xe sẽ đưa đoàn tham quan Khu du lịch White Sand Dốc Lết - Khu du lịch này được tạo dáng bằng bãi cỏ xanh ngát và hàng dừa đặc trưng của vùng biển, nơi mà ánh nắng mặt trời, cát trắng và phong cảnh đã hòa quyện vào nhau để làm nên một khung cảnh thơ mộng cho khu du lịch cao cấp này. Quý khách sẽ tự do thỏa sức tắm biển trong làn nước xanh, hoặc tự túc kinh phí tham gia các trò chơi trên biển như Môtô nước, dù lượn, trượt nước, ván buồm... hay thưởng thức hải sản tại các điểm ẩm thực địa phương. Kết thúc chương trình tham quan, xe sẽ đưa quý khách trở về thành phố Nha Trang.

Buổi chiều: Tiếp tục đoàn đi tham quan và thư giãn tại Trung tâm suối khoáng nóng I-Resort - với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất thuần Việt, khu du lịch được bao bọc bởi dáng núi hùng vĩ, bên dòng sông Cái thơ mộng, sơn thuỷ hữu tình không đâu có được, sẽ đem đến cho quý khách những trải nghiệm mới về cuộc sống với dịch vụ tắm khoáng độc đáo sẽ tạo cho quý khách cảm giác thật thoải mái và thư giãn. Tiếp tục, xe đưa quý khách đi tham quan và mua đặc sản Nha Trang tại Chợ Đầm.


Buổi tối: Sau bữa tối, quý khách có thể tự do dạo phố biển Nha Trang hoặc tham gia vui chơi ca hát tại khách sạn.


Ngày thứ tư: Nha Trang – Hạ Long
Sau khi dùng bữa sáng tại khách sạn, quý khách sẽ trả phòng khách sạn và khởi hành ra sân bay Cam Ranh làm thủ tục lên máy bay về sân bay Nội Bài. Xe và hướng dẫn viên Công ty Cổ Phần Du Lịch Quốc Tế Asian sẽ đón khách về Hạ Long, kết thúc chương trình quý lịch và nghỉ dưỡng bổ ích.

Giá trọn gói: 7.900.000đ/khách (Giá có thể thay đổi theo yêu cầu riêng của quý khách)', N'Images/Trang chu/Trong nuoc/dulichkhanhhoa2.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN25', N'Hạ Long - Nha Trang- Đà Lạt', N'Hằng ngày', N'5 ngày 4 đêm', N'Hạ Long - Nha Trang- Đà Lạt', N'5.400.000', N'1/. Ngày thứ nhất: Hạ Long - Hà Nội - Nha Trang Du khách tập trung tại Văn phòng Công ty Cổ Phần Du Lịch Quốc...', N'', N'Images/Trang chu/Trong nuoc/langbiang2--1-.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN26', N'Hạ Long - Hà Nội - Đà Nẵng - Nha Trang - Đà Lạt', N'Hàng ngày', N'5 ngày 4 đêm', N'Đà Nẵng, Nha Trang, Đà Lạt', N'8.850.000', N'Thành phố Đà Nẵng được đánh giá là rất sạch sẽ, trong lành, người dân Đà Nẵng thân thiện, nhiệt tình và mến khách. Còn đến với Nha Trang...', N'Thành phố Đà Nẵng được đánh giá là rất sạch sẽ, trong lành, người dân Đà Nẵng thân thiện, nhiệt tình và mến khách. Còn đến với Nha Trang được mệnh danh là “hòn ngọc Việt”, một trong những bãi biển hàng đầu Việt Nam cả về vẻ đẹp và các loại hình dịch vụ. Nhắc đến Nha Trang không thể không kể đến các resort nổi tiếng như: Six Senses Ninh Van Bay, Vinpearl Resort & Spa, Nha Trang Lodge, Sunrise Beach Resort, Ana Mandara…Ngoài ra, bạn có thể đi thăm thú một số địa danh nổi tiếng trên vịnh Nha Trang như: đảo Hòn Tre, Hòn Miễu, Hòn Chồng, đầm Nha Phu, biệt thự Cầu Đá – lầu Bảo Đại hay tháp Bà...

Ngày 1 : Hạ Long - Hà Nội - Đà Nẵng ( Ăn trưa, tối )

Sáng: Xe và hướng dẫn viên của Công ty Cổ Phần Du Lịch Quốc Tế Asian sẽ đón quý khách tại nhà hàng cà phê Bãi Cháy hoặc Hòn Gai khởi hành đi sân bay Nội Bài Hà Nội. Trên đường đoàn sẽ nghỉ chân ở Hải Dương.

Chiều: Đoàn ăn trưa tại sân bay Nội Bài và làm thủ tục lên chuyến bay đi Đà Nẵng. Sau hơn một giờ bay đoàn đã đến thành phố sạch sẽ và đáng sống nhất Việt Nam. Nhận phòng và nghỉ ngơi tại khách sạn trên bờ biển Mỹ Kê - một trong bãi biển đẹp nhất Việt Nam. Tự do vui chơi và ngắm cảnh hoàng hôn trên bờ biển.



Bãi tắm Mỹ Khê

Tối: Đoàn thưởng thức hải sản tươi sống ở nhà hàng. Sau đó thưởng ngoạn du thuyền trên cầu sông Hàn ngắm cảnh Đà Nẵng về đêm. Chụp ảnh Cầu Quay Sông Hàn, cầu Rồng. Nghỉ đêm và vui chơi tự do tại khách sạn.

Ngày 2 : Đà Nẵng -  Bà Nà Hills - (Ăn: sáng, trưa, tối)

Sáng:  Đoàn ăn sáng tại khách sạn. Sau đó tham quan khu du lịch Bà Nà Hills, với các thắng cảnh như thác Tóc Tiên, khu Lăng Pháp, khu chuồng ngựa – hầm r­ượu cũ của Pháp, đỉnh nhà Rông, V­ườn Tịnh Tâm, chùa Linh ứng, Thích Ca Phật Đài tọa lạc ở vị trí cao nhất Việt Nam và đồi Nguyệt Vọng. Khám phá các trò chơi tại Fantasy Park như: Vòng quay Tình yêu, Phi công Skyver, đường đua lửa, cối xay gió, người nhện, tháp rơi xoay tự do, rạp chiếu phim 360 độ… Đoàn ăn trưa tại Bà Nà và nghỉ trưa trên núi tận hưởng cảm giác mát mẻ của núi rừng.



Chiều: Xe đón đoàn về lại khách sạn nghỉ ngơi, tự do tắm biển và tham gia các trò chơi vui nhộn trên biển do hướng dẫn viên tổ chức.

Tối:  Đoàn ăn tối tại nhà hàng và tham quan phố Cổ Hội An về đêm. Vui chơi tự túc và nghỉ  đêm tại khách sạn.

Ngày 3 : Nha Trang - Vinpearl Land  ( Ăn sáng, trưa, tối)

Sáng: Đoàn ăn sáng tại khách sạn, tự đo đi mua sắm quà lưu niệm và làm thủ tục trả phòng khách sạn. Tạm biệt Đã Nẵng quý khách sẽ đáp chuyến bay đến Nha Trang - một trong những trung tâm du lịch lớn nhất của Việt Nam. Xe đưa đoàn đi Tham quan Nhà Thờ Chánh Toà (được xây dựng từ thời Pháp với kiến trúc lộng lẫy, Viện Hải Dương học, Tháp Bà Ponagar (Quần thể tháp Chăm cổ được xây dựng từ thế kỉ thứ 7), Dinh Bảo Đại.....



Chiều:  Ăn trưa tại nhà hàng và nghỉ ngơi. Sau đó xe sẽ đưa đoàn khởi hành xuống khu vui chơi giải trí Vinpearl Land – Hòn Ngọc Việt. Quý khách qua khu vui chơi giải trí bằng hệ thống cáp treo vượt biển dài nhất thế giới (3.320m), tham gia các trò chơi cảm giác mạnh: phim ảo - 4D, đu quay nhào lộn, tàu lượn siêu tốc, thú nhún, điện đụng... Khám phá Thế Giới Thuỷ Cung muôn màu, Công Viên Nước hoành tráng. Thưởng thức chương trình nhạc nước Laser kỳ ảo…

Tối:  Xe đưa đoàn về lại Thành Phố Biển. Ăn tối và tự do vui chơi, nghỉ ngơi.

Ngày 4 : Nha Trang – Đà Lạt ( Ăn sáng, trưa, tối)

Sáng: Đoàn ăn sáng tại khách sạn. Tự đo đi chợ mua sắm quà lưu niệm. Tạm biệt Nha Trang đoàn tiếp tục khởi hành lên Đà Lạt theo cung đường mới (từ Khánh Vĩnh lên Lạc Dương), ngắm cảnh núi rừng hùng vĩ của Khánh Hòa và Lâm Đồng. Đến Thành phố cao nguyên của tình yêu và huyền thoại, nghe câu chuyện tình bất tử của đôi uyên ương ở Hồ Than Thở & Đồi Thông Hai Mộ. Nhận phòng Khách sạn. Tham quan Vườn hoa Thành phố, thác Prenn, ăn trưa tại khu du lịch Prenn.



Thung lũng tình yêu

Chiều: Tham quan Thung lũng Tình Yêu, khởi hành lên đỉnh cao nguyên Langbiang nằm ở độ cao 2.169 m so với mặt biển. Thử cảm giác mạnh cùng với xe Jeep lên cao nguyên. Thưởng thức Đặc sản Đà Lạt tại các Cơ sở sản xuất.

Tối: Ăn tối và tham gia giao lưu văn hoá cồng chiêng Tây Nguyên cùng người dân tộc. Quý khách đi dạo Đà Lạt về đêm. Vui chơi và nghỉ đêm tại khách sạn.

Ngày 5 : Đà Lạt - Hà Nội - Hạ Long (Ăn sáng, trưa)

Sáng: Đoàn ăn sáng tại khách sạn, sau đó đi tham quan Thiền Viện Trúc Lâm, ngắm khung cảnh thơ mộng của Hồ Tuyền Lâm. Tận hưởng không khí ban mai trong lành của Đà Lạt mông mơ. Quý khách tự do đi chợ mua quà lưu niệm và các đặc sản của Đà Lạt.



Chợ hoa Đà Lạt

Chiều: Sau khi ăn trưa tại nhà hàng, xe và hướng dẫn viên đón Đoàn ra sân bay Liên Cương. Tạm biệt Đà Lạt quý khách đón chuyến bay trở về Hà Nội. ', N'Images/Trang chu/Trong nuoc/45-dieu-khien-ban-yeu-dien-cuong-da-nang.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN27', N'Hạ Long - Yên Bái - Lào Cai - Điện Biên - Sơn La - Hạ Long', N'Hàng ngày', N'6 ngày', N'Yên Bái, Lào Cai, Sơn La', N'8.900.000', N'1. Ngày thứ nhất: Hạ Long – Yên Bái Buổi sáng, du khách tập trung tại Công ty Cổ Phần Du Lịch Quốc Tế Asian để...', N'. Ngày thứ nhất: Hạ Long – Yên Bái

Buổi sáng, du khách tập trung tại Công ty Cổ Phần Du Lịch Quốc Tế Asian để lên xe khởi hành đi Nghĩa Lộ, thuộc tỉnh Yên Bái. Đến nơi, du khách sẽ nhận phòng tại khách sạn để nghỉ ngơi. Buổi tối, sau bữa tối, du khách sẽ thưởng thức chương trình biểu diễn múa Xòe, giao lưu và tìm hiểu nét văn hóa đặc sắc của dân tộc Thái. Nghỉ đêm tại Nghĩa Lộ.



Tượng đài chiến thắng tại Khu di tích lịch sử - văn hoá Căng và đồn Nghĩa Lộ

2. Ngày thứ hai: Yên Bái - Lào Cai (Sapa)

Sau bữa sáng, du khách sẽ trả phòng khách sạn và lên xe khởi hành đi Mù Căng Chải, trên đường đi qua địa danh Tú Lệ, du khách sẽ cảm nhận rất rõ được mùi cơm mới thoảng theo gió bảng lảng trên các mái nhà của đồng bào địa phương, nơi đây nổi tiếng với món xôi nếp và cốm khô. Đến Đèo Khau Phạ, du khách sẽ dừng lại để chụp ảnh và ngắm nhìn Bản Lim Mông xinh đẹp tọa lạc dưới chân đèo. Đây là Bản của dân tộc người Mông và là nơi có ruộng lúa đẹp nhất Mù Cang Chải. Qua đèo Khau Phạ vào địa phận Mù Cang Chải, du khách sẽ bị mê hoặc bởi vẻ đẹp hút hồn của cung đường ruộng bậc thang (nổi tiếng tại 03 xã: La Pán Tẩn, Chế Cu Nha và Zế Xu Phình). Du khách sẽ được chiêm ngưỡng những thung lũng rộng hút tầm mắt, các thửa ruộng tầng tầng lớp lớp, lượn sóng theo sườn núi xa tít tắp khiến du khách cảm thấy ngỡ ngàng.



Du khách có thể tham quan và thưởng ngoạn, tìm hiểu các giai đoạn của mùa lúa như từ tháng 2 - 3 là mùa nước đổ óng ánh trên các triền núi, tháng 5 là mùa cấy lúa, tháng 6, tháng 7 là mùa lúa non và đẹp nhất là tháng 9, tháng 10 là mùa lúa chín hay còn lại là mùa vàng. Cũng chính bởi vẻ đẹp mê lòng người vào mùa lúa chín mà Ruộng Bậc Thang ở ba xã này đã được xếp hạng Di tích Quốc Gia năm 2007.

Đến thị trấn Mù Cang Chải, du khách ăn trưa và nghỉ ngơi. Buổi chiều, du khách sẽ khởi hành lên đường đi Sa Pa, trên đường đi, du khách sẽ dừng chân ngắm toàn cảnh đồi chè Tân Uyên thơ mộng và tiếp tục sẽ được chiêm ngưỡng phong cảnh núi rừng Tây Bắc hùng vĩ trên Đèo Ô Quy Hồ - Ranh giới giữa 2 tỉnh Lào Cai và Lai Châu uốn lượn quanh dãy Hoàng Liên, còn gọi là Cổng Trời. Đến Sa Pa, du khách tham quan Thác Bạc, sau đó du khách sẽ nhận phòng khách sạn nghỉ ngơi. Buổi tối, sau bữa tối, du khách sẽ tự do dạo bộ tham quan phố núi và thưởng thức những món ăn đặc sản tại nơi đây. Nghỉ đêm tại SaPa.

3. Ngày thứ ba: Lào Cai (SaPa) – Điện Biên

Sau bữa sáng, du khách tham quan và chinh phục Núi Hàm Rồng, thăm Vườn Lan khoe sắc, Vườn Hoa Trung Tâm, ngắm Núi Phanxipăng hùng vĩ, Cổng Trời, Đầu Rồng Thạch Lâm, Sân Mây. Đoàn tự do ngắm cảnh và chụp ảnh thị trấn Sapa trong sương. Buổi trưa, trở về khách sạn trả phòng, ăn trưa. Sau bữa trưa, du khách tiếp tục tham quan khu vực Lao Chải, Tả Van, Bãi Đá Cổ Sapa, Cầu Mây hoặc Tả Phìn (tùy điều kiện thời tiết thực tế). Về đến Lai Châu, du khách nhận phòng khách sạn và nghỉ đêm tại Lai Châu.



Vẻ đẹp Điện Biên

4. Ngày thứ tư: Điện Biên – Sơn La

Sau bữa sáng, Xe sẽ đưa du khách đi tham quan Bảo tàng Điện Biên Phủ, được xây dựng vào năm 1984 nhân dịp kỷ niệm 30 năm chiến thắng lịch sử Điện Biên Phủ, viếng Nghĩa trang liệt sỹ đồi A1, thăm Đồi A1, Hầm sở chỉ huy quân đội Pháp - Tướng Đờ Cát (De Castries). Về khách sạn nghỉ ngơi và trả phòng đi ăn trưa. Buổi chiều, Đòan khởi hành đi tỉnh Sơn La. Trên đường đi, du khách sẽ được chiêm ngưỡng phong cảnh núi rừng Tây bắc hùng vĩ trên đỉnh đèo Đèo Pha Đin - một trong "tứ đại đèo" vùng Tây Bắc và được xếp cùng nhóm 6 con đèo gây ấn tượng nhất Việt Nam. Đến Sơn La, du khách sẽ nhận phòng tại khách sạn nghỉ ngơi, ăn tối. Nghỉ đêm tại Sơn La.

5. Ngày thứ năm: Sơn La - Mộc Châu

Du khách ăn sáng tại khách sạn, sau đó, xe sẽ đưa du khách đi tham quan Nhà Tù Sơn La - đựợc gọi là địa ngục trần gian giữa núi rừng Tây Bắc, đây là nơi từng giam cầm, đầy ải và thủ tiêu ý chí đấu tranh của những người cộng sản Việt Nam. Tiếp tục khởi hành đi Mộc Châu, Đến nơi, du khách sẽ ăn trưa và tham quan Đồi Chè Mộc Châu. Đứng trên đồi chè, du khách sẽ cảm nhận được làn không khí mát mẻ trong lành, tận mắt thấy những làn sương bồng bềnh trôi, những đường chè chạy vòng quanh đồi được sắp đặt thành hàng như những thửa ruộng bậc thang xanh ngắt, trải dài bất tận.



Đồi chè Mộc Châu

Con đường uốn lượn quanh đồi chè sẽ làm du khách thêm ấn tượng bởi hai bên đường những rừng hoa khoe sắc dưới nắng ban mai, tạo nên một bức tranh vô cùng sống động trên miền thảo nguyên. Du khách dừng chân mua sắm đặc sản nổi tiếng được chế biến từ sữa bò tươi nổi tiếng của Mộc Châu về làm quà. Sau đó, Đoàn về khách sạn nhận phòng và nghỉ ngơi tại Mộc Châu.

6. Ngày thứ sau: Mộc Châu – Mai Châu - Hạ Long

Buổi sáng, du khách ăn sáng tại khách sạn và trả phòng. Sau đó, xe sẽ đưa du khách tham quan Thác Dải Yếm -đây còn được gọi là Thác Nàng, nhằm ví vẻ đẹp mềm mại, hình ảnh quyến rũ của thác nước như xuân sắc của người con gái tuổi trăng tròn. Đoàn khởi hành đi Mai Châu – Hòa Bình, tham quan Bản Lác Mai Châu - tìm hiểu nhà sàn, phong tục tập quán, cách kinh doanh du lịch loại hình Homestay của bà con người Thái nơi đây. Đoàn khởi hành về Hòa Bình ăn trưa. Sau đó tiếp tục khởi hành về Hạ Long, xe đưa đoàn về Văn phòng Công ty Cổ Phần Du Lịch Quốc Tế Asian, chia tay với du khách và kết thúc chương trình tham quan du lịch miền tây bắc bổ ích và nhiều trải nghiệm.', N'Images/Trang chu/Trong nuoc/mai-chau-7.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN28', N'Chương trinh Hoa Lư - Tam Cốc', N'Hàng ngày', N'1 ngày', N'Hoa Lư, Tam Cốc', N'550.000', N'HOA LƯ – TAM CỐC 1 NGÀY Giá Tour: 550.000Đ Thời gian: 1 ngày. Xuất phát từ: Hà Nội. Ngày xuất phát: Khởi hành hàng...', N'Tour du lịch Hoa Lư - Tam Cốc 1 ngày sẽ đưa quý khách tới thăm 2 địa danh nổi tiếng ở tỉnh Ninh Bình đó là: Cố đô Hoa Lư và Tam Cốc. Một là di tích lịch sử, cố đô một thời của vương triều Đinh, nhà Tiền Lê và khởi đầu nhà Lý, từ vua Đinh Tiên Hoàng thời mở cõi đến vua Lý Thái Tông trong lịch sử Việt Nam. Với những dấu ấn lịch sử thống nhất giang sơn đánh Tống, dẹp Chiêm và phát tích quá trình định đô Thăng Long, Hà Nội. Một là danh thắng được thiên nhiên, tạo hoá ưu ái ban tặng: Tam Cốc. Đi dọc dòng Ngô Đồng len lõ giữa những ruộng lúa xanh ngút ngàn, du khách sẽ ngỡ ngàng trước vẻ đẹp của 3 hang động do kiến tạo địa chất từ nhiều năm mà thành giờ đã nổi trên mặt nước.                                 

Buổi sáng 8h: Xe và Hướng dẫn viên đón quý khách tại khách sạn trong khu vực phố Cổ Hà Nội, khởi hành đi Hoa Lư - Tam Cốc Ninh Bình, cách Hà Nội 90km. Trên đường đi quý khách sẽ có dịp ngắm nhìn những quang cảnh của nông thôn vùng bắc Bộ. Xe dừng 30 phút doc đường để quý khách nghỉ ngơi, thư giãn.

10h00: Quý khách đến Kinh đô Hoa Lư, Hướng dẫn viên sẽ đưa quý khách thăm đền Vua Đinh, Vua Lê – Hai di tích quan trọng và nổi tiếng nơi đây giờ còn lại khá nguyên vẹn. Quý khách sẽ được sống trong không gian yên bình với nhiều đền chùa cổ kính linh thiêng, được nghe giới thiệu về lịch sử hình thành và phát triển của kinh đô gắn với các triều vua Đinh, Tiền Lê…

12h00: Quý khách dừng chân ăn trưa tại nhà hàng đặc sản tại Ninh Bình với nhiều món đặc sản được chế biến từ thịt dê, được thưởng thức món Cơm cháy nổii tiếng nơi đây.

Chiều: Xe tiếp tục đưa quý khách thăm danh thắng Tam Cốc, vốn được mệnh danh là Hạ Long trên cạn bới những dãy núi đá vôi điệp trùng hiện lên trên mặt nước. Chiếc thuyền nhỏ đưa du khách qua dòng Ngô Đồng, len lỏi qua những ruộng lúa dọc hai bờ để tới với hang động đầu tiên của Tam Cốc, Hang Cả….Tiếp tục hành trình, quý khách sẽ lần lượt thăm các hang: hang hai, hang ba trong cùng hệ thống với những vẻ đẹp do thiên nhiên kiến tạo từ đá vôi cùng nhũ đá vô cùng đẹp mắt.', N'Images/Trang chu/Trong nuoc/tours-530.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN29', N'Hà Nội - Hạ Long - Hà Nội (4 ngày 3 đêm đón sân bay)', N'Hằng ngày', N'4 ngày 3 đêm', N'Hà Nội, vịnh Hạ Long', N'4.300.000', N'Ngày thứ nhất: Sân Bay - Hà Nội Xe Công ty Cổ Phần Du Lịch Quốc Tế Asian đón đoàn tại sân bay Nội Bài về...
ĐẶT TO', N'', N'Images/Trang chu/Trong nuoc/ab1.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN3', N'HẠ LONG - CÚC PHƯƠNG RESORT- RỪNG CÚC PHƯƠNG', N'Hàng ngày', N'02 ngày/01đêm', N'HẠ LONG - CÚC PHƯƠNG RESORT- RỪNG CÚC PHƯƠNG', N'1.398.000', N'TOUR NGHỈ DƯỠNG TRỌN GÓI DÀNH CHO GIA ĐÌNH HẠ LONG - CÚC PHƯƠNG RESORT- RỪNG CÚC PHƯƠNG (Thời gian: 02 ngày/01đêm)...', N'TOUR NGHỈ DƯỠNG TRỌN GÓI DÀNH CHO GIA ĐÌNH

HẠ LONG - CÚC PHƯƠNG RESORT- RỪNG CÚC PHƯƠNG

(Thời gian: 02 ngày/01đêm)

Chỉ cách Vườn Quốc gia Cúc Phương hơn 2 km, Khu du lịch nghỉ dưỡng nước khoáng nóng Cúc phương nằm trên bình địa với cảnh sắc hoang sơ và được hưởng không khí trong lành quanh năm. Rời thành phố ồn ào náo nhiệt đến nơi đây Cúc Phương Resort quý khách như đến với một cuộc sống khác hẳn. Lựa chọn những vật liệu đơn sơ, gần gũi với thiên nhiên cho khu nghỉ dưỡng này, hẳn du khách sẽ có được những phút giây sống giữa thiên nhiên, hoa cỏ, hoàn toàn thư giãn, trút bỏ đi những ngột ngạt của thành phố công nghiệp, tạm quên đi bao lo toan, vội vã đời thường, tự thưởng cho mình khoảng thời gian nghỉ ngơi nhằm tái tạo lại sức lao động, sẵn sàng cho những ngày sắp tới. Hãy cùng Asiantravel tận hưởng những niềm vui nhỏ bên gia đình tại Cúc Phương resort.

Ngày 01:    Hạ Long – Cúc Phương Resort   (ăn sáng, trưa, tối)

Buổi sáng: 6h30 Quý khách cùng HDV của Asiantravel khởi hành đi Ninh Bình (đoàn ăn sáng đặc sản bún cá tại Ba Lan)

Buổi trưa: Đến Ninh Bình Quý khách ăn trưa tại nhà hàng với những món ăn mang hương vị núi rừng: dê núi, gà  đồi… sau bữa trưa Quý khách lên xe về Cúc Phương Resort nhận phòng nghỉ ngơi.

Buổi chiều: Quý khách tự do vui chơi, tân hưởng kì nghỉ bên gia đinh, sử dụng các dịch vụ:  thăm quan thưởng ngoạn Vườn Đá cổ sinh với các loại đá thiên nhiên quý giá, có tuổi thọ hàng triệu năm. Với các loại gỗ hóa thạch, đá quý được mang từ các vùng cao nguyên xa xôi, các vùng sông suối và thác lũ hiểm trở đến đây,  du khách có thêm nguồn sinh lực và sức khỏe dồi dào khi đến nghỉ ngơi, bởi theo quan niệm của y học cổ truyền, thì nguồn năng lượng được tích tụ hàng triệu năm trong đá rất tốt cho sức khỏe con người. Hoặc quý khách tự do tắm khoáng thiên nhiên với bể trong nhà và ngoài trời. . Nước khoáng Cúc Phương, tên khoa học là Bicabonat Magiê, được khai thác từ nguồn khoáng nóng trên 35°C từ độ sâu trên 100m tại vùng đệm rừng nguyên sinh Cúc Phương hoặc tắm ngâm nước khoáng nóng bồn gỗ tại phòng hoặc bể bơi lớn trong nhà, spa, massage, phòng tập Gym, khu vui chơi trẻ em…

Buổi tối: Quý khách dùng bữa tối tại nhà hàng và  nghỉ ngơi thư giãn trong khu Resort.

 

Ngày 02:  Cúc Phương Resort – Rừng Cúc Phương – Hạ Long (ăn sáng, trưa)

Buổi sáng:  Quý khách  dậy sớm tận hưởng không khí trong lành và tắm khoáng trước khi có bữa điểm tâm Buffet sáng tại nhà hàng. Quý khách tự do hoạt động các dịch vụ thể thao, vui chơi trong resort.

 

9h00: Quý khách trả phòng khách sạn, lên xe vào thăm quan rừng quốc gia Cúc Phương. Khu rừng nguyên sinh rộng 22.200 ha mang tính chất điển hình của rừng nhiệt đới, khí hậu trong lành mát mẻ, hệ động thực vật phong phú. Là một khu bảo tồn thiên nhiên, khu rừng đặc dụng nằm trên địa phận ranh giới 3 khu vực Tây Bắc, châu thổ sông Hồng và Bắc Trung Bộ thuộc ba tỉnh: Ninh Bình, Hòa Bình, Thanh Hóa. Vườn quốc gia này có hệ động thực vật phong phú đa dạng mang đặc trưng rừng mưa nhiệt đới. Nhiều loài động thực vật có nguy cơ tuyệt chủng cao được phát hiện và bảo tồn tại đây. Đoàn sẽ được chứng kiến cây Chò Chỉ 1.000 năm tuổi - nét độc đáo riêng của rừng, đoàn thăm Động Người Xưa,Nơi lưu giữ những di chỉ khảo cổ của người tiền sử cách đây hàng ngàn năm, Động Trăng Khuyết…

Buổi trưa: Quý khách ăn trưa tại nhà hàng

Buổi chiều: Đoàn chia tay Ninh Bình lên xe về Hạ Long

Buổi tối: Về đến Hạ Long xe đưa đoàn về lại điểm xuất phát.

Chia tay Quý khách – Kết thúc chuyến đi vui vẻ bên gia đình !

 Giá trọn gói : 1.398.000 đồng/01 khách

(áp dụng cho đoàn trên 30 khách)

Bao gồm:

Xe du lịch 35 chỗ ngồi phục vụ theo chương trình.
Nghỉ tại Cúc Phương Resort - ngủ 02 khách/phòng (trường hợp lẻ nghỉ phòng 3)
Ăn chính 02 bữa trưa : 150.000 đồng/xuất  - 01 bữa tối tại Resort  200.000 đồng/xuất + 01 bữa phụ: 35.000 đồng và 01 bữa sáng Buffet tại khách sạn.
Hướng dẫn viên nhiệt tình, chu đáo, kinh nghiệm.
Vé tham quan theo chương trình
Phí bảo hiểm theo quy định
Tắm bể bơi trong nhà và ngoài trời.
Nước uống 01 chai/ngày
Không bao gồm:

Thuế VAT
Phòng đơn, chi phí cá nhân, giặt ủi, điện thoại, thức uống ngoài chương trình,
Gía tour trẻ em:

Trẻ em dưới 05 tuổi: không thu tiền tour (bố mẹ tự lo mọi chi phí cho bé)
Trẻ em từ 5 đến dưới 12 tuổi: 75% giá tour và ngủ cùng với cha mẹ.
Trẻ em từ 12 tuổi trở lên : 100% giá tour.', N'Images/Trang chu/Trong nuoc/rung-quoc-phuong.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN30', N'Hạ Long - Yên Tử', N'Hằng ngày', N'2 ngày 1 đêm', N'Hạ Long - Yên Tử', N'2.268.000', N'Di tích danh thắng Yên Tử đã từng được đức Vua - Phật hoàng Trần Nhân Tông chọn làm nơi tu hành từ hơn 700 năm trước. Đây cũng...', N'', N'Images/Trang chu/Trong nuoc/bb7fdc11-dc4a-45bf-b915-c0afd63093a1.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN31', N'Hà Nội - Vịnh Hạ Long - Đảo Tuần Châu ', N'Hàng ngày', N'2 ngày 1 đêm', N'Vịnh Hạ Long, Đảo Tuần Châu', N'1.900.000', N'Ngày 1: Hà Nội – Du lịch Vịnh Hạ Long – Đảo Tuần Châu (Ăn trưa, tối) 8.00 - 8.15: Xe...', N'Ngày 1: Hà Nội – Du lịch Vịnh Hạ Long – Đảo Tuần Châu  (Ăn trưa, tối)

8.00 - 8.15: Xe đón du khách khởi hành đi tour du lịch Vịnh Hạ Long. Trên đường đi du khách dừng chân nghỉ ngơi tại thành phố Hải Dương. Sau 30 phút nghỉ ngơi, du khách tiếp tục hành trình đến với Di sản Văn hóa – Thiên nhiên thế giới Vịnh Hạ Long.

12.00: Đến thành phố Hạ Long, du khách ra bến tàu bắt đầu hành trình tham quan Vịnh Hạ Long. du khách sẽ được thưởng thức bữa trưa trên tàu với các món hải sản của vùng biển Hạ Long và tận mắt chiêm ngưỡng vẻ đẹp huyền bí mà hùng vĩ của di sản, kỳ quan thiên nhiên Vịnh Hạ Long với hàng ngàn hòn đảo lớn nhỏ khác nhau ẩn hiện trên mặt Vịnh, chương trình tham quan trong thời gian 4 tiếng, trong hành trình, du khách có cơ hội ngắm nhìn và tìm hiểu cuộc sống những người dân làng chài làm du lịch trên vịnh, sẽ đi qua những hòn núi nổi tiếng như: hòn Chó Đá, hòn Gà Chọi hay còn được gọi là núi uyên ương, thăm động Thiên Cung – hang Đầu Gỗ là những hang động đẹp nhất trong quần thể bảo tồn của vịnh Hạ Long.



16.00: Tàu quay lại bến du lịch Bãi Cháy, Hạ Long, xe đưa du khách vào khách sạn trong khu du lịch nghỉ dưỡng nổi tiếng Tuần Châu, đây là đảo du lịch nổi tiếng với những bãi cát trắng, biệt thự đồi thông lộng gió. Tại đây, du khách còn được biết là nơi thường xuyên tổ chức các sự kiện lớn và quan trọng của tỉnh và của cả nước như tổ chức sự kiện thi hoa hậu thế giới, hoa hậu Việt Nam và các sự kiên quan trọng của Carnaval Hạ Long tổ chức thường niên vào đầu mùa hè. Tại đây, du khách sẽ được thỏa sức tắm biển hoặc đạo bước trên những bãi cát trắng mịn trên đảo.

Sau bữa tối trên đảo, du khách sẽ thỏa sức dạo chơi hay đi bộ, ngắm cảnh, chụp ảnh tại khu vui chơi giải trí Tuần Châu với các trò chơi vui nhộn, hấp dẫn như xem biểu diễn xiếc cá Heo, biểu diễn nhạc nước đã được sắp xếp trong lịch trình.

Ngày 2: Du lịch Hạ Long - Đảo Tuần Châu - Hà Nội  (Ăn sáng, trưa)

7.30: Sau bữa sáng tại khách sạn, du khách sẽ tự tổ chức tắm biển, sau đó tham quan đảo Tuần Châu với các khu chợ quê (tùy theo từng thời điểm), nhà trưng bày cổ vật, xem biểu diễn nhạc dân tộc. Các chương trình tham quan này, du khách sẽ tự tổ chức theo nhu cầu, không bắt buộc nên sẽ không có hướng dẫn viên đi cùng.



12.00: du khách trở về khách sạn dùng bữa trưa. Khoảng 13:00, lái xe sẽ tới đón du khách sau khi đã hoàn thiện các thủ tục trả phòng, du khách sẽ lên xe trở về Hà Nội, trên đường về du khách sẽ dừng chân nghỉ tại Hải Dương mua sắm đặc sản miền quê Hải Dương như đặc sản: Bánh đậu xanh, bánh gai...

17.00: Du khách về tới thủ đô Hà Nội, kết thúc chuyến du lịch cuối tuần thú vị và bổ ích.', N'Images/Trang chu/Trong nuoc/du-lich-ha-long-124.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN32', N'Hà Nội - Vịnh Hạ Long - Đảo Tuần Châu ', N'Hằng ngày', N'2 ngày 1 đêm', N'Vịnh Hạ Long, Đảo Tuần Châu', N'2.400.000', N'Ngày 1: Hà Nội – Du lịch Vịnh Hạ Long – Đảo Tuần Châu (Ăn trưa, tối) 8.00 - 8.15: Xe...', N'', N'Images/Trang chu/Trong nuoc/du-lich-ha-long-124.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN33', N'Quảng Ninh - Cửa Lò - Cửa Hội - Nghệ An', N'Hàng ngày', N'2 ngày 1 đêm', N'Cửa Lò, Quê Bác, Cửa Hội', N'3.450.000', N'Công ty Cổ Phần Du Lịch Quốc Tế Asian chúng tôi với tiêu chí luôn tìm tòi và mong muốn đem lại sự mới mẻ, khác lạ, hấp dẫn...', N'Ngày thứ nhất: Hà Nội – Cửa Lò ( Ăn trưa, tối )


Cửa Lò Nghệ An

05:00 sáng, xe và hướng dẫn viên của Công ty du lịch Asian Travel đón du khách tại điểm hẹn, khởi hành đi Cửa Lò. Đoàn dừng ăn sáng tại Hải Phòng, sau bữa sáng đoàn tiếp tục hành trình đi Vinh, trên hành trình du khách sẽ dừng chân ăn trưa tại Thanh Hóa. Sau khi đến Cửa Lò, du khách nhận phòng khách sạn nghỉ ngơi và tự do dạo chơi, tắm biển hoặc tham gia các trò chơi bãi biển thú vị và hấp dẫn. Buổi tối, du khách ăn tối và ngắm nhìn Cửa Lò dưới lung linh ánh đèn.

Ngày thứ hai: Cửa Lò – Quê Bác (Ăn sáng, trưa, tối)
Buổi sáng du khách có thể dạy sớm để ngắm cảnh bình minh trên biển, sau đó quay về khách sạn ăn sáng. Sau khi ăn sáng tại khách sạn, xe và hướng dẫn viên sẽ đưa du khách đi thăm làng Kim Liên – ngôi nhà Bác ở thời niên thiếu, làng Hoàng Trù quê ngoại Bác, viếng mộ bà Hoàng Thị Loan thân mẫu của Bác, thăm quảng trường Hồ Chí Minh. Sau đó đoàn quay về khách sạn ăn trưa và nghỉ ngơi. Buổi chiều du khách tự do tắm biển và tham gia các trò chơi bãi biển, thăm quan cảng Cửa Lò.
Sau bữa ăn tối, du khách có thể dạo chơi trên bờ biển, hoặc có thể lên những chiếc mủng ra biển câu mực, thưởng thức món mực tươi ngon ngay trên thuyền hay đạp xe đạp đôi lãng mạn bên nhau trên con đường bờ biển dài như bất tận.


Ngôi nhà bác Hồ thời niên thiếu

Ngày thứ ba: Cửa Lò – Cửa Hội (Ăn sáng, trưa, tối)


Bãi biển Cửa Hội

Sau khi ăn sáng tại khách sạn, du khách lên xe để đi đến tham quan bãi biển Cửa Hội. Ẩn mình dưới rừng phi lao xanh mát, bãi biển Cửa Hội với nét đẹp còn hoang sơ nhưng cũng có đầy đủ các dịch vụ ăn uống hải sản biển, nghỉ nhà sàn riêng biệt, câu cá hồ nước ngọt, tắm biển,... Đây là địa điểm nghỉ mát lý tưởng cho những ai muốn thoát khỏi không khí ồn ào, náo nhiệt chốn thị thành để hòa mình vào với thiên nhiên trời và biển. Tại đây du khách còn được tham gia trải nghiệm vào cảnh mua bán ở chợ cá Cửa Hội. Khi ánh mặt trời vẫn còn nấp sau cửa biển thì ở nơi đây đã đầy ắp những thúng, những mẹt, những sọt đã nô

nức xếp hàng chờ những bóng tàu nơi chân trời. Những ánh mắt ngóng đợi, những khuôn mặt ưu tư đều yên lặng nhìn về phía xa. Và rồi tất cả như bừng tỉnh, cùng hớn hở lao về phía chiếc tàu cá đang cập bờ, chợ cá bỗng chốc trở lại sự ồn ã vốn có của nó với những người lao động tất tả dưới ánh bình minh.

Sau khi ăn trưa tại đây, du khách quay trở về khách sạn nghỉ ngơi. Buổi chiều có thể tham gia chơi các trò chơi Team Building do hướng dẫn viên tổ chức. Buổi tối ăn tối tại khách sạn và tự do dạo biển ngắm cảnh về đêm
.

Ngày thứ tư: Cửa Lò – Quảng Ninh ( Ăn sáng, trưa )
Sáng sau khi ăn sáng xong, du khách làm thủ tục trả phòng khách sạn và lên xe quay về Quảng Ninh. Dọc đường du khách sẽ dừng lại ăn trưa tại Thanh Hóa và mua các sản phẩm như nem chua, dừa tươi, dứa tươi,... về làm quà. Chiều tối xe đưa du khách về đến điểm hẹn và chia tay đoàn tại đây, kết thúc chương trình.', N'Images/Trang chu/Trong nuoc/20120501-hapdancualo-bookin.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN34', N'Hạ Long - Tam Đảo', N'Hàng ngày', N'2 ngày 1 đêm', N'Tam đảo', N'1.450.000', N'Tam Đảo là nơi có khí hậu mát mẻ, diện tích rừng rộng lớn là một lá phổi xanh điều hòa khí hậu cho Thủ đô Hà Nộ và...', N'Tam Đảo là nơi có khí hậu mát mẻ, diện tích rừng rộng lớn là một lá phổi xanh điều hòa khí hậu cho Thủ đô Hà Nộ và các khu vực lân cận. Đây là khu nghỉ dưỡng và tham quan rất lý tưởng trong mùa hè nóng bức. Thác Bạc là một địa danh gần gũi và quen thuộc với khách du lịch, nơi đây nguồn nước mát chảy quanh năm, đặc biệt là vào mùa mưa, thác nước cao chảy xuống đẹp như một dải lụa trải dài xuống từ trên cao. Khu nghỉ mát Tam Ðảo được người Pháp phát hiện và xây dựng từ những năm đầu thế kỷ 19.

Thiên nhiên đã ban tặng cho Tam Đảo một khung cảnh tuyệt vời: vừa thơ mộng, u tịch, vừa hùng vĩ, huyền ảo trong cảnh mây gió, sương khói vờn trên đỉnh núi rồi sà xuống những thảm cỏ, những ngôi nhà ven sườn núi. Thế nên Tam Đảo là nơi lý tưởng cho bạn nghỉ dưỡng cuối tuần sau một tuần làm việc vất vả. Cái cảm nhận đầu tiên khi bạn vừa bước chân xuống Tam Đảo là nơi đây dường như có 1 cái điều hòa thiên nhiên khổng lồ, đang lặng lẽ phun khí lạnh cho toàn khu vực, không khí trong lành, mát lạnh đến mê hồn.

Ngày 1: Hạ Long - Tam Đảo




Thiền Viện Tây Thiên Tam Đảo


Buổi sáng : Xe và hướng dẫn viên công ty du lịch Asian Travel đón quý khách tại trung tâm thành phố Hạ Long khởi hành chuyến đi thăm quan Tam Đảo, trên đường đi quý khách được chiêm ngưỡng phong cảnh miền núi Trung du.

Buổi trưa : Đoàn dừng ăn trưa, sau bữa trưa quý khách lên xe tới Tây Thiên, vào thăm quan và lễ tại Thiền viện Tây Thiên – Trụ sở của học viện phật giáo Việt Nam, một trong những trường học dành cho các tăng ni phật tử ở nước ta, thăm quan Lầu Trống, Lầu Chuông.

Buổi chiều : Đến khu nghỉ mát Tam Đảo quý khách về khách sạn nhận phòng nghỉ ngơi. Buổi chiều quý khách thăm quan thác Bạc, tắm suối hoặc tắm ở bể bơi và tham gia các trò chơi tại khu du lịch Tam Đảo

Buổi tối : Quý khách ăn tối tại nhà hàng với đặc sản ngọn su su. Tối Quý khách tự do nghỉ ngơi, khám phá thị trấn Tam Đảo về đêm hoặc (Gala diner, Show game... theo yêu cầu của đoàn nếu có).

Ngày 2: Tam Đảo – Hạ Long


07h30: Sau khi ăn sáng, quý khách leo bộ lên 1 .400 bậc đá đứng trên đỉnh Thiên Nhị, dưới chân ngọn tháp truyền hình cao hơn 100m, hòa mình vào thiên nhiên dịu mát.

12h00: Quý khách ăn trưa tại nhà hàng.

13h30: Quý khách tiếp tục leo gần 200 bậc đá đến đền bà chúa Thượng Ngàn. Ngôi đền là nơi lưu giữ một truyền thuyết đẹp

16h00: Đoàn xuất phát về Hạ Long, kết thúc chương trình thăm quan thú vị.', N'Images/Trang chu/Trong nuoc/khu-du-lich-tam-dao.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN35', N'Du lịch tuần trăng mật Sapa', N'Hằng ngày', N'2 ngày 1 đêm', N'Sapa', N'2.450.000', N'Du lịch tuần trăng mật Sapa cho những cặp đôi vợ chồng trẻ luôn là điểm đến hấp dẫn tuyệt vời nhất. Màn đêm buông xuống, sương lạnh bờ...
ĐẶT TOUR', N'', N'Images/Trang chu/Trong nuoc/ham-rong-sapa.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN36', N'Du lịch Sơn La - Điện Biên - Lai Châu', N'Hằng ngày', N'5 ngày 4 đêm', N'Hòa Bình, Sơn La, Sapa', N'6.200.000', N'Tây Bắc là sự quyến rũ bí ẩn đối với tất cả du khách. Không chỉ sắc màu của các dân tộc với nhiều phong tục lạ, mà còn...', N'', N'Images/Trang chu/Trong nuoc/1006052014033536.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN4', N'Hạ Long – Vân Đồn – Cô Tô - Hạ Long', N'Hằng ngày', N'02 ngày/01 đêm', N'Hạ Long – Vân Đồn – Cô Tô - Hạ Long', N'1.318.000', N'Chương trình du lịch biển đảo quê hương Hạ Long – Vân Đồn – Cô Tô - Hạ Long (Thời gian...
ĐẶT TOUR', N'', N'Images/Trang chu/Trong nuoc/tiec-nuong-coto.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN5', N'Làng Quê Yên Đức – Đền Chu Văn An – Công viên nước Hà Lan', N'Hàng ngày', N'02 ngày', N'Làng Quê Yên Đức – Đền CVA –CV nước Hà Lan', N'500.000', N'Chương trình trải nghiệm: Làng Quê Yên Đức – Đền Chu Văn An – Công viên nước Hà Lan (Thời gian 01...', N'6h30: Xe và hướng dẫn viên của Asiantravel đón khách tại điểm hẹn khởi hành đi Đông Triều. Trên đường đoàn tự do nghỉ ngơi, ngắm cảnh hai bên đường hoặc tham gia chương trình chúng mình hát cho nhau nghe.

8h30: Đến Đông Triều xe đưa đoàn vào con đường làng sạch sẽ, những cánh đồng lúa mênh mông, bát ngát, những ao hồ, vườn tược, những hàng cau thẳng tắp vươn mình lên trong nắng... cùng với trải nghiệm trong công việc, sinh hoạt thường ngày của những người nông dân chân chất, thật thà mến khách. Tại đây đoàn được trải nghiệm cuộc sống thường ngày của bà con nông dân. Các hoạt động mà du khách đến đây được khám phá rất đỗi bình dị, mộc mạc nhưng lại vô cùng hấp dẫn và sinh động. Du khách có thể “hoá thân” thành những người nông dân thực thụ: Xay lúa, giã gạo, cầm nơm úp cá, cầm cuốc vun trồng hay tự mình thu hoạch những luống rau xanh tốt… Sau những trải nghiệm thú vị, khách du lịch sẽ được thưởng thức các sản vật của địa phương, do chính bàn tay của những người nông dân làm ra như: Khoai lang luộc, ngô luộc, chè nấu bằng hạt nếp cái hoa vàng - sản vật nổi tiếng của địa phương v.v.. Ngoài ra, du khách còn được thưởng thức nhiều làn điệu dân ca mượt mà của vùng Đồng bằng Bắc Bộ, xem múa rối nước và tham gia vào các trò chơi dân gian hấp dẫn khác.

10h00: Quý khách rời làng Quê Yên Đức về với Sao Đỏ, từ Quốc lộ 18, vượt qua con đường đất khoảng 3km, với dốc núi quanh co giữa bạt ngàn những vườn nhãn, na, bưởi, tiếp đến là những rặng thông xanh mướt, đến với núi Phượng Hoàng vào đền thờ Chu Văn An, người thầy giáo được coi là “Vạn thế sư biểu” của Việt Nam, với chữ “Học” được đề cao, từ lâu đã trở thành địa chỉ du lịch văn hoá, là nơi đạo làm thầy và tinh thần hiếu học được tôn vinh...các bậc phụ huynh, các em học sinh đến đền xin chữ, cũng là cầu mong sự học, sự viết luôn được suôn sẻ, đỗ đạt, đơm hoa kết nụ.

11h30: Quý khách ăn trưa tại nhà hàng Sao Đỏ, thưởng thức ẩm thực địa phương.

13h00: Xe đưa Quý khách đến với Công Viên Nước Hà Lan. Trên diện tích 12.000m2, khu công viên nước có bể tạo sóng với 8 chế độ theo công nghệ Tây Ban Nha, bể thi đấu đạt chuẩn quốc tế, hệ thống máng trượt cho mọi lứa tuổi. Đây là bể nổi đầu tiên được xây dựng trong tỉnh với 10 làn bơi đạt tiêu chuẩn quốc tế cho việc tập luyện, thi đấu. Cùng với bể tạo sóng, công viên nước còn có khu vui chơi nước dành riêng cho trẻ em từ 1-6 tuổi. Hệ thống ống trượt, đồ chơi được lắp đặt khoa học, độc đáo nhằm kích thích tính sáng tạo, sự tò mò của trẻ. Công viên nước còn được đầu tư xây dựng đồng bộ với hệ thống khu nhà gửi đồ, tắm tráng, dịch vụ ăn, uống hiện đại…

16h00: Quý khách tập trung ra xe về Hạ Long, xe đưa đoàn về điểm xuất phát.     ', N'Images/Trang chu/Trong nuoc/du-lich-lang-que-yen-duc.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN6', N'HẠ LONG - HÀ NỘI - K9 ĐÁ CHÔNG – AO VUA', N'Hàng ngày', N'02 ngày 01 đêm', N'HÀ NỘI - K9 ĐÁ CHÔNG – AO VUA', N'1.196.000', N'Chương trình du lịch hè 2016 HẠ LONG - HÀ NỘI - K9 ĐÁ CHÔNG – AO VUA – ASEAN Resort ...', N'Ngày 01: Hạ Long - K9 Đá Chông – Ao Vua

 

5h00: xe và HDV của ASIAN TRAVEL đón Quý khách tại Hạ Long

5h10: khởi hành đi Uông Bí ăn sáng, sau đó xe đưa đoàn đi K9,

10h00 đến K9 tham quan khu K9 Đá Chông, vượt qua hơn 122 bậc đá đoàn thăm quan điểm đầu tiên là nhà sàn cách mạng, tiếp theo thăm quan Đá Chông với những khối đá dựng đứng như những cây chông... thăm chiếc xe đã từng bảo quản và chuyên trở thi hài Bác.

12h00 đoàn ăn trưa tại K9. Chiều đoàn rời K9 về với khu du lịch sinh thái Ao Vua, nhận phòng nghỉ ngơi, sau đó tự do leo núi, lội suối thác 1,2,3,4,5, thăm quan vườn bách thú, vườn chim, thăm động Sơn Tinh, Thuỷ Tinh, tham gia cỏc trũ chơi tại Ao Vua như : Tắm ở bể bơi, đạp vịt, leo 9 tầng thác, tham quan vườn 54 dõn tộc, Chơi các trò chơi cảm giác mạnh như: Đĩa bay, thảm bay, đi tầu siêu tốc... (tự túc kinh phí xem phim 3,4,5D).

18h30 đoàn ăn tối. Tối đoàn nghỉ đêm tại Ao Vua.

 

Ngày 02:    Trượt cỏ ASEAN Resort – Đền Chu Văn An  – Hạ Long

          Sau bữa sáng đoàn lên xe về với khu vui chơi trượt cỏ Minh Hạnh đoàn tự do vui chơi tại trượt cỏ ASEAN Resort Bạn có tin giữa chốn phồn hoa đô thị đầy khói bụi này lại xuất hiện những thảm cỏ xanh mướt với hàng nghìn mét vuông được tạo hình lượn sóng, cầu kỳ tạo cho du khách khi chơi có một cảm giác mạnh mà chỉ có ở ASEAN Resort. Đến nơi đây, bạn có thể trượt cỏ bằng xe bánh xích, pa tanh cỏ. Bạn rất ngạc nhiên phải không vì hầu hết nguời ta chỉ biết đến trượt pa tanh trong phòng tập hay trên đường nhưng ở đây bạn có thể trượt pa tanh trên cỏ mà vẫn giữ được cảm giác sảng khoái hơn bao giờ hết. Thật tuyệt 

Buổi trưa: Đoàn dùng bữa trưa tại ASEAN Resort.

Buổi chiều: Xe đưa đoàn về Sao Đỏ từ Quốc lộ 18, vượt qua con đường đất khoảng 3km, với dốc núi quanh co giữa bạt ngàn những vườn nhãn, na, bưởi, tiếp đến là những rặng thông xanh mướt, đến với núi Phượng Hoàng vào đền thờ Chu Văn An, người thầy giáo được coi là “Vạn thế sư biểu” của Việt Nam, với chữ “Học” được đề cao, từ lâu đã trở thành địa chỉ du lịch văn hoá, là nơi đạo làm thầy và tinh thần hiếu học được tôn vinh...các bậc phụ huynh, các em học sinh đến đền xin chữ, cũng là cầu mong sự học, sự viết luôn được suôn sẻ, đỗ đạt, đơm hoa kết nụ.

Buổi tối: Xe đưa đoàn về đến Hạ Long.', N'Images/Trang chu/Trong nuoc/ao-vua.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN7', N'Hà Nội - Hạ Long - Tuần Châu – Hà Nội', N'Hằng ngày', N'3 ngày/02 đêm', N'Hà Nội - Hạ Long - Tuần Châu – Hà Nội', N'2.498.000', N'Chương trình du lịch Hà Nội - Hạ Long - Tuần Châu – Hà Nội (Thời gian 3...', N'', N'Images/Trang chu/Trong nuoc/cau-long-bien.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN8', N' HẠ LONG - LĂNG BÁC – VĂN MIẾU QUỐC TỬ GIÁM', N'Hàng ngày', N'02 ngày', N'HẠ LONG - LĂNG BÁC – VĂN MIẾU QUỐC TỬ GIÁM', N'1.200.000', N'8 điều khiến bạn sẽ choáng ngợp khi "check-in" ở AEON MALL Hà Nội. Phải nói sao nhỉ? Những kết cấu cơ bản của...', N'4h00: Xe và hướng dẫn viên đón Quý khách tại Hạ Long khởi hành đi Hà Nội. Ăn sáng trên đường đi.

08h00: Đến Hà Nội, Quý khách xếp hàng vào Lăng viếng Bác, sau đó thăm quan Quảng Trường Ba Đình, tham quan phủ Chủ tịch, nhà sàn Bác ở, ao cá Bác Hồ, chùa Một Cột, bảo tàng Hồ Chí Minh. Tiếp tục hành trình quý khách đi tham quan Văn Miếu - Quốc Tử Giám. Văn Miếu - Quốc Tử Giám được coi là một biểu tượng của sự trường tồn tinh hoa văn hóa, giáo dục, truyền thống tôn sư trọng đạo, khuyến đức, khuyến tài của dân tộc Việt.

11h30: Xe đón Quý khách hành trình đi qua Hồ Tây, chùa Trấn Quốc về ăn tự trọn (Buffet) tại nhà hàng Sen Tây Hồ với những món ẩm thực đặc sắc của các vùng miền trong cả nước.

13h00 Xe đưa Quý khách đến với AEON MALL Long Biên. Quý khách tự do thỏa thích thăm quan, mua sắm tại trung tâm.  Phải nói sao nhỉ? Những kết cấu cơ bản của một trung tâm thương mại thông thường cộng thêm hơi thở đặc trưng của người Nhật đã biến nơi đây thành một địa điểm nhất định phải check-in. Với trung tâm vui chơi giáo dục trong nhà cho trẻ em lớn nhất Hà Nội. Tại đây, các bé sẽ được thỏa thích vui chơi

 

 

      trong không gian rộng lớn với nhiều khu vực trải nghiệm đa dạng như khu vận động và phát triển thể chất juNo Playland, khu công nghệ cao Techzone, khu mỹ thuật Art & Craft, lớp học nấu ăn… Tại đây cũng có các phòng chơi của những thương hiệu nổi tiếng như How Wheels, Barbie, Viking Toys. Trung tâm thương mại được phân chia hợp lí thành các khu mua sắm, khu vui chơi, giải trí, rạp chiếu phim, khu ẩm thực, tất cả đều được trang trí theo chủ đề, phong cách riêng đặc biệt thu hút. Gần như toàn bộ tầng 3 trung tâm thương mại là khu ẩm thực, gồm rất nhiều nhà hàng, quán ăn từ món Việt, món Hàn, món Nhật đến món Âu.

16h00:  Xe đưa Quý khách về Hạ Long.

19h30:  Về đến Hạ Long, đoàn dùng bữa tối tại nhà hàng, sau bữa tối đưa đoàn về điểm xuất phát. Chia tay Quý khách, kết thúc chương trình tham quan.', N'Images/Trang chu/Trong nuoc/van-mieu-quoc-tu-giam.jpg')
INSERT [dbo].[TourTN] ([IDTour], [TenTour], [NgayKH], [ThoiGian], [DiaDiem], [Gia], [MoTa], [ChiTiet], [urlTN]) VALUES (N'TN9', N'HẠ LONG - LÀNG GỐM BÁT TRÀNG', N'Hằng ngày', N'02 ngày/01 đêm', N'LÀNG GỐM BÁT TRÀNG - CÔNG VIÊN NƯỚC HỒ TÂY', N'1.268.000', N'8 điều khiến bạn sẽ choáng ngợp khi "check-in" ở AEON MALL Hà Nội . Phải nói sao nhỉ? Những kết cấu cơ...
ĐẶT TOU', N'', N'Images/Trang chu/Trong nuoc/lang-gom-bat-trang.jpg')
USE [master]
GO
ALTER DATABASE [BanTour] SET  READ_WRITE 
GO
