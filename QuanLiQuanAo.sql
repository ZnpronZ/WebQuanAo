USE [QuanLiQuanAo]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 7/20/2021 10:37:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[MaBlog] [nvarchar](50) NOT NULL,
	[AnhBlog] [nvarchar](50) NOT NULL,
	[TieuDe] [nvarchar](30) NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[NgPost] [nvarchar](50) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[AnhBlog_nho] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBlog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 7/20/2021 10:37:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaSP] [nvarchar](50) NOT NULL,
	[MaHD] [int] NULL,
	[SoLuong] [int] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongTy]    Script Date: 7/20/2021 10:37:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongTy](
	[TenCty] [nvarchar](50) NOT NULL,
	[DiaChiCty] [nvarchar](50) NOT NULL,
	[SdtCty] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenCty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanhThu]    Script Date: 7/20/2021 10:37:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhThu](
	[MaNgayThang] [nvarchar](30) NOT NULL,
	[DoanhThu] [float] NULL,
	[TongSLBanDc] [int] NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[SoDonBan] [int] NULL,
	[DoanhThuNV] [float] NULL,
	[TenSpBanChay] [nvarchar](50) NULL,
	[SLBan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNgayThang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 7/20/2021 10:37:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiTinh](
	[MaGT] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 7/20/2021 10:37:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[MaKH] [nvarchar](50) NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMobile] [nvarchar](50) NULL,
	[ShipAdress] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/20/2021 10:37:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Sdt] [nvarchar](50) NOT NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 7/20/2021 10:37:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [nvarchar](50) NOT NULL,
	[Loai] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 7/20/2021 10:37:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Luong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/20/2021 10:37:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](50) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[GiaBan] [float] NOT NULL,
	[Loai] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[Anh] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[MoTa] [nvarchar](200) NULL,
	[Anh_hover] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Blog] ([MaBlog], [AnhBlog], [TieuDe], [ThoiGian], [NgPost], [NoiDung], [AnhBlog_nho]) VALUES (N'MB01', N'blog-post-1.jpg', N'Quần Âu ống rộng', CAST(N'2021-01-16T00:00:00.000' AS DateTime), N'Mr Vinh', N'Quần ống rộng đã không còn quá xa lạ đối với phái nữ, nhưng hiện tại thì phái nam đã có quần âu ống rộng với phong cách trẻ đẹp nhưng vẫn toát lên vẻ lịch lãm.', N'blog-post-1-blog.jpg')
INSERT [dbo].[Blog] ([MaBlog], [AnhBlog], [TieuDe], [ThoiGian], [NgPost], [NoiDung], [AnhBlog_nho]) VALUES (N'MB02', N'blog-post-2.jpg', N'Quần áo lịch lãm', CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Mr Quang', N'Đàn ông ai cũng muốn bản thân mình đẹp, lịch lãm nhất trong mắt người khác. Và ăn mặc đẹp cho nam là một trong những cách để thể hiện điều đó. Một trong cách phối đồ đẹp là áo sơ mi kết hợp với quần âu. Với phong cách này luôn luôn là điểm cộng với các bạn gái. Cách phối đồ này vô cùng đơn giản do đó các bạn nam nên thử chắc chắn sẽ rất hiệu quả.', N'blog-post-2-blog.jpg')
INSERT [dbo].[Blog] ([MaBlog], [AnhBlog], [TieuDe], [ThoiGian], [NgPost], [NoiDung], [AnhBlog_nho]) VALUES (N'MB03', N'blog-post-3.jpg', N'Xếp đồ', CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'Mr Đat', N'Để có quần áo đẹp và ngăn nắp thì không thể thiếu sự ngăn nắp đó là xếp đồ. Việc xếp đồ gọn gàng sẽ luôn để được quần áo lâu dài, không bị nhăn. Do đó việc xếp đồ cần những đôi tay mềm mại khéo léo của người con gái, vì thế cánh mày râu cố gắng kiếm cho mình cô người yêu để luôn có được những bộ quần áo sạch đẹp ngăn nắp', N'blog-post-3-blog.jpg')
INSERT [dbo].[Blog] ([MaBlog], [AnhBlog], [TieuDe], [ThoiGian], [NgPost], [NoiDung], [AnhBlog_nho]) VALUES (N'MB04', N'ao-phong.png', N'Áo phông có cổ', CAST(N'2020-05-10T00:00:00.000' AS DateTime), N'Mrs Linh', N'Khi nhắc đến áo phông người ta thường liên tưởng đến sự thoải mái, năng động có thể mặc ở nhà hay đi chơi, nhưng với thiết kế áo phông nam có cổ lại mang đến cảm giác gọn gàng, nghiêm chỉnh và đầy nam tính cho các chàng trai. Chính vì vậy, một chiếc áo phông có cổ vừa thích hợp với môi trường công sở, vừa không mất đi sự thoải mái của áo phông, lại không quá gò bó như áo sơ mi, tạo cho người mặc nét ấn tượng về sự lịch sự, nghiêm túc trong công việc.', N'ao-phong-blog.png')
INSERT [dbo].[Blog] ([MaBlog], [AnhBlog], [TieuDe], [ThoiGian], [NgPost], [NoiDung], [AnhBlog_nho]) VALUES (N'MB05', N'cotton.png', N'Quần áo cotton bị xù', CAST(N'2020-04-07T00:00:00.000' AS DateTime), N'Mrs Oang', N'Giặt quần áo cotton bằng máy giặt làm quần áo bị ma sát nhiều và mạnh hơn bao giờ hết, có thể ban đầu áo chỉ bị xù lông nhẹ. Nhưng sau khi bước từ máy giặt ra thì lại là một bộ mặt sần sùi, xấu xí. Cộng thêm việc những cục bông xù lại được dịp xoắn lại với vải ở các bộ trang phục khác khiến cả tủ quần áo của bạn chẳng cái nào còn nguyên vẹn.', N'cotton-blog.png')
GO
INSERT [dbo].[ChiTietHoaDon] ([MaSP], [MaHD], [SoLuong], [TongTien]) VALUES (N'SP01', 2, 1, 420192)
GO
INSERT [dbo].[CongTy] ([TenCty], [DiaChiCty], [SdtCty]) VALUES (N'Atrino', N'Hà Nội', N'077777777')
INSERT [dbo].[CongTy] ([TenCty], [DiaChiCty], [SdtCty]) VALUES (N'DatVinhQuang', N'Cầu Giấy', N'0386259007')
INSERT [dbo].[CongTy] ([TenCty], [DiaChiCty], [SdtCty]) VALUES (N'HANSAE ', N'Hà Nội', N'033222232')
INSERT [dbo].[CongTy] ([TenCty], [DiaChiCty], [SdtCty]) VALUES (N'May10', N'Gia Lâm', N'099999999')
INSERT [dbo].[CongTy] ([TenCty], [DiaChiCty], [SdtCty]) VALUES (N'Owen', N'Hải Phòng', N'033333333')
INSERT [dbo].[CongTy] ([TenCty], [DiaChiCty], [SdtCty]) VALUES (N'Shein', N'Đống Đa', N'0322988444')
INSERT [dbo].[CongTy] ([TenCty], [DiaChiCty], [SdtCty]) VALUES (N'VietTien', N'Bắc Giang', N'099999999')
GO
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00032020', 15000, 50, N'Bùi Quang Hậu', 34, 200000, N'Quần Short ', 60)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00042019', 98980, 100, N'Vương Toàn Đạt', 40, 200000, N'Áo Jean', 6)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00042020', 12100, 70, N'Nguyễn Trung Giang', 24, 200000, N'Quần Short ', 45)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00052019', 28968, 70, N'Bùi Quang Hậu', 20, 200000, N'Quần Jean', 10)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00052020', 30000, 100, N'Bùi Thị Vân', 58, 200000, N'Váy Đen', 8)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00062019', 32100, 30, N'Nguyễn Trung Giang', 9, 200000, N'Quần Short ', 40)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00062020', 32100, 60, N'Nguyễn Thị Bông', 45, 200000, N'Áo Jean', 9)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00072019', 40975, 60, N'Bùi Thị Vân', 16, 200000, N'Áo Jean', 23)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00072020', 12000, 150, N'Lại Thị Phương', 60, 200000, N'Quần Short ', 12)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00082019', 30000, 40, N'Nguyễn Thị Bông', 35, 200000, N'Áo Ba Lỗ', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00082020', 20000, 70, N'Nguyễn Sỹ Thể', 4, 200000, N'Sơ Mi', 3)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00092019', 20000, 50, N'Lại Thị Phương', 24, 200000, N'Quần Jean', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00092020', 18000, 80, N'Nguyễn Văn Bình', 6, 200000, N'Quần Short ', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00102019', 90000, 20, N'Nguyễn Sỹ Thể', 18, 200000, N'Áo Ba Lỗ', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00102020', 26000, 85, N'Vương Toàn Đạt', 3, 200000, N'Áo Jean', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00112019', 10000, 80, N'Nguyễn Văn Bình', 49, 200000, N'Áo Phông', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00112020', 21000, 100, N'Bùi Quang Hậu', 7, 200000, N'ComBo Quần+Áo', 24)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00112021', 21000, 100, N'Bùi Quang Hậu', 7, 200000, N'ComBo Quần+Áo', 30)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00112028', 21000, 45, N'Bùi Quang Hậu', 20, 200000, N'Áo Jean', 30)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00122019', 15000, 90, N'Vương Toàn Đạt', 56, 200000, N'Quần Short ', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'00122020', 34000, 115, N'Nguyễn Trung Giang', 3, 200000, N'ComBo Quần+Áo', 3)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'01012019', 56000, 55, N'Nguyễn Thị Bông', 10, 300000, N'Váy Đen', 10)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'01012020', 33000, 10, N'Bùi Quang Hậu', 5, 200000, N'ComBo Quần+Áo', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'01022019', 64500, 10, N'Vương Toàn Đạt', 5, 200000, N'Quần Short ', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'01022020', 83400, 50, N'Lại Thị Phương', 34, 200000, N'Quần beijing', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'01032019', 30000, 90, N'Nguyễn Thị Bông', 30, 200000, N'Quần beijing', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'02012019', 72400, 35, N'Lại Thị Phương', 15, 200000, N'Quần Short ', 20)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'02012020', 62100, 35, N'Nguyễn Trung Giang', 37, 200000, N'Áo Jean', 20)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'02022019', 45000, 70, N'Bùi Quang Hậu', 50, 200000, N'Quần Short ', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'02022020', 56000, 70, N'Nguyễn Sỹ Thể', 23, 200000, N'Quần Short ', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'02032019', 30000, 40, N'Lại Thị Phương', 20, 200000, N'Quần Short ', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'0231312', 34324, 55, N'Vương Toàn Đạt', 36, 865713, N'Quần Short ', 10)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'0231317', 34324, 37, N'Vương Toàn Đạt', 18, 865713, N'Quần beijing', 30)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'0231318', 34324, 77, N'Vương Toàn Đạt', 32, 865713, N'Quần Short ', 28)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'03012019', 95760, 20, N'Nguyễn Sỹ Thể', 25, 400000, N'Quần Jean', 30)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'03012020', 71000, 55, N'Bùi Thị Vân', 32, 400000, N'Váy Đen', 30)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'03022019', 33000, 30, N'Nguyễn Trung Giang', 15, 200000, N'Quần Short ', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'03022020', 42400, 30, N'Nguyễn Văn Bình', 32, 200000, N'ComBo Quần+Áo', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'03032019', 30000, 60, N'Nguyễn Sỹ Thể', 50, 200000, N'Quần Short ', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'03124344', 34324, 66, N'Nguyễn Trung Giang', 22, 432434, N'Quần beijing', 27)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'0321443', 84700, 13, N'Vương Toàn Đạt', 6, 664343, N'Áo Jean', 8)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'0324344', 32434, 55, N'Bùi Thị Vân', 22, 545355, N'Quần Short ', 11)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'04012019', 37680, 60, N'Nguyễn Văn Bình', 40, 200000, N'Quần Jean', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'04012020', 94600, 40, N'Nguyễn Thị Bông', 30, 200000, N'Quần Short ', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'04022019', 84700, 50, N'Bùi Thị Vân', 10, 200000, N'Quần Jean', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'04022020', 39000, 45, N'Vương Toàn Đạt', 15, 200000, N'Quần Short ', 20)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'04032019', 30000, 30, N'Nguyễn Văn Bình', 20, 200000, N'Váy Đen', 5)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'0523123', 43423, 36, N'Vương Toàn Đạt', 33, 432434, N'Quần Jean', 33)
INSERT [dbo].[DoanhThu] ([MaNgayThang], [DoanhThu], [TongSLBanDc], [TenNhanVien], [SoDonBan], [DoanhThuNV], [TenSpBanChay], [SLBan]) VALUES (N'0988443', 14234, 66, N'Lại Thị Phương', 7, 324324, N'Váy Đen', 10)
GO
INSERT [dbo].[GioiTinh] ([MaGT], [GioiTinh]) VALUES (N'Nam', N'Nam')
INSERT [dbo].[GioiTinh] ([MaGT], [GioiTinh]) VALUES (N'Nu', N'Nữ')
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [MaKH], [ShipName], [ShipMobile], [ShipAdress], [ShipEmail], [Status]) VALUES (1, CAST(N'2021-05-06T21:16:36.793' AS DateTime), NULL, N'Vương Đạt', N'1658421958', N'gg', N'vuongdatpro@gmail.com', NULL)
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [MaKH], [ShipName], [ShipMobile], [ShipAdress], [ShipEmail], [Status]) VALUES (2, CAST(N'2021-05-06T22:06:00.363' AS DateTime), NULL, N'Vương Đạt', N'1658421958', N'kkkk', N'vuongdatpro@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [TaiKhoan], [MatKhau]) VALUES (N'KH01', N'Đồng Văn Vinh', N'Cầu Giấy', N'0333333333', N'Admin1', N'Admin1')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [TaiKhoan], [MatKhau]) VALUES (N'KH02', N'Vương Toàn Đạt', N'Quan Hoa', N'0999999999', N'Admin2', N'Admin2')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [TaiKhoan], [MatKhau]) VALUES (N'KH03', N'Trần Minh Quang', N'Cầu Giấy', N'0444444444', N'Admin3', N'Admin3')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [TaiKhoan], [MatKhau]) VALUES (N'KH04', N'Nguyễn Thị Hoa', N'Linh Đàm', N'0313323322', N'Admin4', N'Admin4')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [TaiKhoan], [MatKhau]) VALUES (N'KH05', N'Thân Văn Thìn', N'Nhổn', N'0932332333', N'Admin5', N'Admin5')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [TaiKhoan], [MatKhau]) VALUES (N'KH06', N'Hoàng Văn Cảnh', N'Phạm Hùng', N'031121212', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [TaiKhoan], [MatKhau]) VALUES (N'KH08', N'Linh Văn Dương', N'Văn Cao', N'0392002122', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [TaiKhoan], [MatKhau]) VALUES (N'KH09', N'Nguyễn Viết Hòa', N'Thái Bình', N'03232312212', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [Sdt], [TaiKhoan], [MatKhau]) VALUES (N'KH10', N'Nguyễn Thị Nhung', N'Bắc Giang', N'032222222', N'Admin10', N'Admin10')
GO
INSERT [dbo].[LoaiSP] ([MaLoai], [Loai]) VALUES (N'Ao', N'Áo')
INSERT [dbo].[LoaiSP] ([MaLoai], [Loai]) VALUES (N'Combo', N'Combo')
INSERT [dbo].[LoaiSP] ([MaLoai], [Loai]) VALUES (N'Quan', N'Quần')
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [SDT], [DiaChi], [Luong]) VALUES (N'NV01', N'Vương Toàn Đạt', N'09999999', N'Hà Nội', 99999)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [SDT], [DiaChi], [Luong]) VALUES (N'NV02', N'Trần Minh Quang', N'08989899', N'Nam Định', 40000)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [SDT], [DiaChi], [Luong]) VALUES (N'NV03', N'Đồng Văn Vinh', N'07734552', N'Bắc Giang', 40000)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [SDT], [DiaChi], [Luong]) VALUES (N'NV04', N'Nguyên Văn A', N'01234155', N'Ninh Bình ', 35000)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [SDT], [DiaChi], [Luong]) VALUES (N'NV05', N'Kiều Văn Cường', N'09546525', N'Thanh Hóa', 37000)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [SDT], [DiaChi], [Luong]) VALUES (N'NV06', N'Nguyễn Ngọc Phong ', N'03542544', N'Bắc Giang', 40000)
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP01', N'Quần đùi', 420192, N'Quan', N'Còn Hàng', N'product1.jpg', N'Nu', N'Sản phẩm được may từ chất liệu thun cotton 4 chiều, phần kẻ ngang co giãn nhiều hơn, khiến người mặc thật sự thoải mái với bộ đồ.', N'product2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP02', N'Áo Jean', 310000, N'Ao', N'Còn Hàng', N'product2.jpg', N'Nu', N'Sản phẩm được may từ chất liệu thun cotton 4 chiều, phần kẻ ngang co giãn nhiều hơn, khiến người mặc thật sự thoải mái với bộ đồ.', N'product1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP03', N'Quần Jean', 210000, N'Quan', N'Còn Hàng', N'product3.jpg', N'Nu', N'Chất liệu hút mồ hôi rất nhanh, do đó rất phù hợp cho việc tập thể thao hàng ngày.', N'product13.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP04', N'Váy Đen', 500000, N'Ao', N'Còn Hàng', N'product4.jpg', N'Nu', N'Chất Liệu Vải Tốt ,Chất lượng Bạn có thể thoái mái Giặt Máy, không bong tróc trong quá trình sử dụng.  hoặc giặt tay tùy thích.', N'product5.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP05', N'Áo Ba Lỗ', 150000, N'Ao', N'Hết Hàng', N'product5.jpg', N'Nu', N'Sản phẩm được may từ chất liệu thun cotton 4 chiều, phần kẻ ngang co giãn nhiều hơn, khiến người mặc thật sự thoải mái với bộ đồ.', N'product4.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP06', N'Sơ Mi', 450000, N'Ao', N'Còn Hàng', N'product6.jpg', N'Nu', N'Chất liệu hút mồ hôi rất nhanh, do đó rất phù hợp cho việc tập thể thao hàng ngày.', N'product1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP07', N'Áo Phông', 120000, N'Ao', N'Hết Hàng', N'product7.jpg', N'Nu', N'Chất liệu hút mồ hôi rất nhanh, do đó rất phù hợp cho việc tập thể thao hàng ngày.', N'product16.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP08', N'Áo Phông', 200000, N'Ao', N'Còn Hàng', N'product8.jpg', N'Nu', N'Chất liệu hút mồ hôi rất nhanh, do đó rất phù hợp cho việc tập thể thao hàng ngày.', N'product9.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP09', N'Áo Phông', 250000, N'Ao', N'Còn Hàng', N'product9.jpg', N'Nu', N'Chất liệu hút mồ hôi rất nhanh, do đó rất phù hợp cho việc tập thể thao hàng ngày.', N'product8.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP10', N'Quần Short', 130000, N'Quan', N'Còn Hàng', N'product10.jpg', N'Nam', N'Chất lượng đường may tốt, sản phẩm được sản xuất trên chuyền may loại 1, đội ngũ thợ lành nghề, kinh nghiệm lâu năm.', N'product12.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP11', N'Quần Short', 230000, N'Quan', N'Còn Hàng', N'product11.jpg', N'Nam', N'Sản phẩm được may từ chất liệu thun cotton 4 chiều, phần kẻ ngang co giãn nhiều hơn, khiến người mặc thật sự thoải mái với bộ đồ.', N'product13.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP12', N'ComBo Quần+Áo', 400000, N'Combo', N'Còn Hàng', N'product12.jpg', N'Nam', N'Chất Liệu Vải Tốt ,Chất lượng Bạn có thể thoái mái Giặt Máy, không bong tróc trong quá trình sử dụng.  hoặc giặt tay tùy thích.', N'product13.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP13', N'Áo Jean', 123000, N'Ao', N'Hết Hàng', N'product13.jpg', N'Nam', N'Chất Liệu Vải Tốt ,Chất lượng Bạn có thể thoái mái Giặt Máy, không bong tróc trong quá trình sử dụng.  hoặc giặt tay tùy thích.', N'product12.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP14', N'ComBo Quần+Áo', 320000, N'Combo', N'Còn Hàng', N'product14.jpg', N'Nu', N'Chất lượng đường may tốt, sản phẩm được sản xuất trên chuyền may loại 1, đội ngũ thợ lành nghề, kinh nghiệm lâu năm.', N'product15.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP15', N'Quần beijing', 200000, N'Quan', N'Hết Hàng', N'product15.jpg', N'Nu', N'Chất liệu hút mồ hôi rất nhanh, do đó rất phù hợp cho việc tập thể thao hàng ngày.', N'product14.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Loai], [TinhTrang], [Anh], [GioiTinh], [MoTa], [Anh_hover]) VALUES (N'SP16', N'Quần beijing', 230000, N'Quan', N'Còn Hàng', N'product16.jpg', N'Nu', N'Chất Liệu Vải Tốt ,Chất lượng Bạn có thể thoái mái Giặt Máy, không bong tróc trong quá trình sử dụng.  hoặc giặt tay tùy thích.', N'product7.jpg')
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_htk_gioitinh] FOREIGN KEY([GioiTinh])
REFERENCES [dbo].[GioiTinh] ([MaGT])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_htk_gioitinh]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_htk_LoaiSP] FOREIGN KEY([Loai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_htk_LoaiSP]
GO
