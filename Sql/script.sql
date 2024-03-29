USE [PRJ301_SU23_BL5]
GO
/****** Object:  Table [dbo].[Account_HE170027]    Script Date: 8/15/2023 01:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_HE170027](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[account_name] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[customer_name] [nvarchar](50) NULL,
	[phone] [varchar](10) NULL,
	[address] [nvarchar](255) NULL,
	[email] [varchar](255) NULL,
	[role_id] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart_HE170027]    Script Date: 8/15/2023 01:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart_HE170027](
	[account_id] [int] NULL,
	[product_id] [int] NULL,
	[ammount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_HE170027]    Script Date: 8/15/2023 01:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_HE170027](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_HE170027]    Script Date: 8/15/2023 01:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_HE170027](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [date] NULL,
	[account_id] [int] NULL,
	[total] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail_HE170027]    Script Date: 8/15/2023 01:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail_HE170027](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
 CONSTRAINT [PK_LineItem] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_HE170027]    Script Date: 8/15/2023 01:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_HE170027](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[list_price] [money] NULL,
	[category_id] [int] NULL,
	[img] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_HE170027]    Script Date: 8/15/2023 01:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_HE170027](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account_HE170027] ON 

INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (1, N'ManhNK', N'123456', N'Nguyễn KHánh MẠnh', N'0123456788', N'Hà Nộii', N'a@gmail.com', 1, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (2, N'MinhNT', N'123456', N'Nguyễn Thành Minh', N'0123456789', N'Hà Nội', N'abcxyz2@gmail.com', 1, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (3, N'MaiNT', N'123456', N'Nguyễn Thị Mai', N'0123456789', N'Hà Nội', N'abcxyz3@gmail.com', 1, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (4, N'AnNB', N'123456', N'Nguyễn Bảo An', N'0123456789', N'Hà Nội', N'abcxyz4@gmail.com', 1, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (5, N'AnND', N'123456', N'Nguyễn Duy An', N'0123456789', N'Hà Nội', N'abcxyz5@gmail.com', 1, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (6, N'AnNB', N'123456', N'Nguyễn Bình An', N'0123456789', N'Hà Nội', N'abcxyz6@gmail.com', 1, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (7, N'NamLM', N'123456', N'Lê Mạnh Nam', N'0123456789', N'Hà Nội', N'abcxyz7@gmail.com', 1, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (8, N'HaiLT', N'123456', N'Lê Tú Hải', N'0123456789', N'Hà Nội', N'abcxyz8@gmail.com', 1, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (9, N'MinhLV', N'123456', N'Lê Vũ Minh', N'0123456789', N'Hà Nội', N'abcxyz9@gmail.com', 1, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (10, N'HanDT', N'123456', N'Đặng Thành Hân', N'0123456789', N'Hà Nội', N'abcxyz10@gmail.com', 1, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (13, N'manager11', N'123456', N'', N'', N'', N'admin@gmail.com', 2, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (14, N'manager2', N'123456', NULL, NULL, NULL, N'abcxyz12@gmail.com', 2, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (15, N'manager3', N'123456', NULL, NULL, NULL, N'abcxyz13@gmail.com', 2, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (16, N'admin1', N'123456', NULL, NULL, NULL, N'c@gmail.com', 3, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (17, N'admin2', N'123456', NULL, NULL, NULL, N'abcxyz15@gmail.com', 3, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (21, N'addaccount', N'12345', N'Thành', N'0365879260', N'23', N'abcxyz@gmail.com', 1, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (22, N'manh', N'123456', N'khanh manh', N'0375801453', N'lâm thao-phú tho', N'b@gmail.com', 1, 1)
INSERT [dbo].[Account_HE170027] ([account_id], [account_name], [password], [customer_name], [phone], [address], [email], [role_id], [status]) VALUES (24, N'manh', N'123456', N'khanh manh', N'1232456576', N'lâm thao-phú tho', N'd@gmail.com', 1, NULL)
SET IDENTITY_INSERT [dbo].[Account_HE170027] OFF
GO
SET IDENTITY_INSERT [dbo].[Category_HE170027] ON 

INSERT [dbo].[Category_HE170027] ([category_id], [category_name]) VALUES (1, N'T-Shirt')
INSERT [dbo].[Category_HE170027] ([category_id], [category_name]) VALUES (2, N'Model')
INSERT [dbo].[Category_HE170027] ([category_id], [category_name]) VALUES (3, N'Coat')
INSERT [dbo].[Category_HE170027] ([category_id], [category_name]) VALUES (4, N'Sweater')
INSERT [dbo].[Category_HE170027] ([category_id], [category_name]) VALUES (5, N'Jean')
INSERT [dbo].[Category_HE170027] ([category_id], [category_name]) VALUES (6, N'Pant')
SET IDENTITY_INSERT [dbo].[Category_HE170027] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_HE170027] ON 

INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (1, CAST(N'2023-03-09' AS Date), 1, 150000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (2, CAST(N'2023-03-09' AS Date), 1, 150000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (3, CAST(N'2023-03-09' AS Date), 1, 150000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (4, CAST(N'2023-03-09' AS Date), 1, 150000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (5, CAST(N'2023-03-09' AS Date), 1, 150000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (6, CAST(N'2023-03-09' AS Date), 1, 150000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (7, CAST(N'2023-03-09' AS Date), 1, 150000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (8, CAST(N'2023-03-09' AS Date), 1, 300000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (9, CAST(N'2023-03-09' AS Date), 1, 150000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (10, CAST(N'2023-03-09' AS Date), 1, 300000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (11, CAST(N'2023-07-10' AS Date), 1, 150000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (12, CAST(N'2023-07-10' AS Date), 1, 300000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (13, CAST(N'2023-07-10' AS Date), 1, 300000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (14, CAST(N'2023-07-10' AS Date), 1, 300000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (15, CAST(N'2023-07-10' AS Date), 1, 300000)
INSERT [dbo].[Order_HE170027] ([order_id], [order_date], [account_id], [total]) VALUES (16, CAST(N'2023-08-15' AS Date), 1, 300000)
SET IDENTITY_INSERT [dbo].[Order_HE170027] OFF
GO
INSERT [dbo].[OrderDetail_HE170027] ([order_id], [product_id], [quantity], [price]) VALUES (1, 1, 1, 150000.0000)
INSERT [dbo].[OrderDetail_HE170027] ([order_id], [product_id], [quantity], [price]) VALUES (1, 2, 1, 150000.0000)
INSERT [dbo].[OrderDetail_HE170027] ([order_id], [product_id], [quantity], [price]) VALUES (9, 2, 1, 150000.0000)
INSERT [dbo].[OrderDetail_HE170027] ([order_id], [product_id], [quantity], [price]) VALUES (10, 2, 1, 150000.0000)
INSERT [dbo].[OrderDetail_HE170027] ([order_id], [product_id], [quantity], [price]) VALUES (13, 1, 1, 150000.0000)
INSERT [dbo].[OrderDetail_HE170027] ([order_id], [product_id], [quantity], [price]) VALUES (14, 1, 1, 150000.0000)
INSERT [dbo].[OrderDetail_HE170027] ([order_id], [product_id], [quantity], [price]) VALUES (15, 1, 1, 150000.0000)
INSERT [dbo].[OrderDetail_HE170027] ([order_id], [product_id], [quantity], [price]) VALUES (15, 2, 1, 150000.0000)
INSERT [dbo].[OrderDetail_HE170027] ([order_id], [product_id], [quantity], [price]) VALUES (16, 1, 1, 150000.0000)
INSERT [dbo].[OrderDetail_HE170027] ([order_id], [product_id], [quantity], [price]) VALUES (16, 2, 1, 150000.0000)
GO
SET IDENTITY_INSERT [dbo].[Product_HE170027] ON 

INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (1, N'Áo hình OnePiece', 150000.0000, 1, N'https://cf.shopee.vn/file/64eaf6f289ca14bfd9e4c13571182e8a')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (2, N'Áo hình DragonBall', 150000.0000, 1, N'https://cf.shopee.vn/file/4e6a07f9ad806d1ee1820036053fb9cd')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (3, N'Áo hình Gintama', 150000.0000, 1, N'https://cf.shopee.vn/file/378ed6765b43fc9a93e4962b56c09acf')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (4, N'Áo hình Bleach', 150000.0000, 1, N'https://cf.shopee.vn/file/56a33a6e0722ed7cfaad4d5d63875477')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (5, N'Áo hình HeroAcademia', 150000.0000, 1, N'https://cf.shopee.vn/file/aa88d8f03e1ed5d86f33a5ecf41f8869')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (6, N'Áo hình Jujutsukaisen', 150000.0000, 1, N'https://cf.shopee.vn/file/dcfab500bd2f7c2d3176583f83240034')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (7, N'Áo hình BlackClover', 150000.0000, 1, N'https://cf.shopee.vn/file/f1885afe814a8bd03e41b781875a2ecb')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (8, N'Model OnePiece', 350000.0000, 2, N'https://i.ebayimg.com/images/g/vssAAOSwsXpdN8w3/s-l1600.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (9, N'Model DragonBall', 350000.0000, 2, N'http://gundamchat.com/wp-content/uploads/2021/08/M%C3%B4-h%C3%ACnh-l%E1%BA%AFp-r%C3%A1p-Figure-rise-Standard-Super-Saiyan-Vegetto-Plastic-model-Bandai-Dragonball-Z-8.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (10, N'Model Gintama', 350000.0000, 2, N'https://ae01.alicdn.com/kf/H76d5c13cac7544b59664483cd61cb6edb/18cm-Gintama-Figure-Toy-Sakata-Gintoki-Shiroyasha-White-Demon-with-Sword-DX-Anime-Model-Dolls.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (11, N'Model Bleach', 350000.0000, 2, N'https://ae01.alicdn.com/kf/Hadff26c7ea3847dfb4f22ffb8f06c99cd/2-Heads-Anime-Bleach-GK-Kurosaki-Ichigo-Action-Figure-PVC-Excellent-Model-Figurine-Toy-Top-Gift.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (12, N'Model HeroAcademia', 350000.0000, 2, N'https://ae01.alicdn.com/kf/H3ca5bc19cc16432baa28adcb0f787630u/Bandai-Genuine-Gacha-Anime-My-Hero-Academia-Modeling-Keychain-Pendant-Toys-UDM2-Deku-FROPPY-Tokoyami-Fumikage.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (13, N'Model Jujutsukaisen', 350000.0000, 2, N'https://cdn.shopify.com/s/files/1/0408/1097/1288/products/1_dcfdd2db-8bf4-44a7-925e-682fa53077d5.jpg?v=1667278829&width=533')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (14, N'Model BlackClover', 350000.0000, 2, N'https://i.pinimg.com/originals/20/f7/cd/20f7cd71b526f994415a079a16145c3b.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (15, N'Áo Khoác Lông', 500000.0000, 3, N'https://file.hstatic.net/200000503583/file/ao-khoac-long__3__98d6c006e8e14fa49543c44f5433196a_grande.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (16, N'Áo Khoác Da', 500000.0000, 3, N'https://product.hstatic.net/200000366789/product/erk08423_0c57a6eaefac408fb50f3124728d4b87_master.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (17, N'Áo Khoác Vải', 500000.0000, 3, N'https://cf.shopee.vn/file/f0d9e0324e43ad73cc55d2c201dcc6d3')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (18, N'Áo Khoác Ngắn', 500000.0000, 3, N'http://channel.vcmedia.vn/2020/11/3/k1-16043778826391361488796.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (19, N'Áo Phao', 500000.0000, 3, N'https://aothudong.com/upload/product/atd-031/ao-khoac-long-vu-cao-cap.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (20, N'Áo Khoác Xì Tin', 500000.0000, 3, N'https://cf.shopee.vn/file/427ebd20c99304c3c73c70849651e53b')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (21, N'Áo Len Dài Tay', 300000.0000, 4, N'https://image.uniqlo.com/GU/ST3/AsianCommon/imagesgoods/336517/item/goods_01_336517.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (22, N'Áo Len Ngắn Tay', 300000.0000, 4, N'https://cf.shopee.vn/file/2c305063a9d8d9e49e3fcdd76ac5fcc3')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (23, N'Áo Lên Hai Lớp', 300000.0000, 4, N'https://caravnxk.com/admin/sanpham/5360_2785_anh1.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (24, N'Áo Len Nike', 300000.0000, 4, N'https://cf.shopee.vn/file/3feefafafecd5673facf1f063e5301f8')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (25, N'Áo Len Supreme', 300000.0000, 4, N'https://cf.shopee.vn/file/67360014199db1d60a4e9e6c085c9f64')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (26, N'Áo Len LouisVulton', 300000.0000, 4, N'https://cf.shopee.vn/file/sg-11134201-22100-ue59rsy9s8hv3b')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (27, N'Quần bò xì teen', 300000.0000, 5, N'https://vn-test-11.slatic.net/p/f5bf53b71bb7c068b719fd29e2c038b6.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (28, N'Quần da bò ngắn', 300000.0000, 5, N'https://cf.shopee.vn/file/4a8dd4eb63159c00b4d8a8d4aab2c501')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (29, N'Quần rộng gối', 300000.0000, 5, N'https://cf.shopee.vn/file/2c3f42507ea42e3abe75516224ab97a9')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (30, N'Quần bó', 300000.0000, 5, N'https://cf.shopee.vn/file/a3bab1175af20a065003452215ba754b')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (31, N'Quần đùi', 100000.0000, 6, N'https://cf.shopee.vn/file/aa02567dcbe0710ff304f42abbf06b24')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (32, N'Quần dài', 100000.0000, 6, N'https://product.hstatic.net/200000346443/product/z3955399552540_0f60e7d96660fadfd4082c6b74baa513_7da437a3f6dd455ebe5dc68c03643ab6_master.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (33, N'Quần tây', 100000.0000, 6, N'https://i0.wp.com/salt.tikicdn.com/cache/w1200/ts/product/e7/0c/27/73a9c08fdfec39ab3d98b0320041c278.jpg')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (34, N'Quần ngủ', 100000.0000, 6, N'https://bizweb.dktcdn.net/100/042/968/products/qc1611-e1999022-385d-4c2a-92e2-5676f884b5ef.jpg?v=1656391521000')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (35, N'Quần Naruto', 100000.0000, 6, N'https://cf.shopee.vn/file/sg-11134201-22100-gl2x3ik6e5hv34')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (36, N'Quần Doraemon', 100000.0000, 6, N'https://order.tokago.vn/uploads/2019/6/8/23/9/c4259eb54fc29cae6927da218ec78f9a.png')
INSERT [dbo].[Product_HE170027] ([product_id], [product_name], [list_price], [category_id], [img]) VALUES (37, N'Quần vải', 100000.0000, 6, N'https://lzd-img-global.slatic.net/g/p/567a9d96281655a96dff12b2a0255485.jpg_720x720q80.jpg_.webp')
SET IDENTITY_INSERT [dbo].[Product_HE170027] OFF
GO
SET IDENTITY_INSERT [dbo].[Role_HE170027] ON 

INSERT [dbo].[Role_HE170027] ([role_id], [role_name]) VALUES (1, N'customer')
INSERT [dbo].[Role_HE170027] ([role_id], [role_name]) VALUES (2, N'manager')
INSERT [dbo].[Role_HE170027] ([role_id], [role_name]) VALUES (3, N'admin')
SET IDENTITY_INSERT [dbo].[Role_HE170027] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__AB6E61641018AF61]    Script Date: 8/15/2023 01:30:28 PM ******/
ALTER TABLE [dbo].[Account_HE170027] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__AB6E616434E31D0D]    Script Date: 8/15/2023 01:30:28 PM ******/
ALTER TABLE [dbo].[Account_HE170027] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__AB6E6164D627C885]    Script Date: 8/15/2023 01:30:28 PM ******/
ALTER TABLE [dbo].[Account_HE170027] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account_HE170027] ADD  DEFAULT ((1)) FOR [role_id]
GO
ALTER TABLE [dbo].[Cart_HE170027] ADD  DEFAULT ((1)) FOR [ammount]
GO
ALTER TABLE [dbo].[OrderDetail_HE170027] ADD  DEFAULT ((1)) FOR [quantity]
GO
ALTER TABLE [dbo].[Product_HE170027] ADD  DEFAULT ('https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930') FOR [img]
GO
ALTER TABLE [dbo].[Account_HE170027]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role_HE170027] ([role_id])
GO
ALTER TABLE [dbo].[Account_HE170027]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role_HE170027] ([role_id])
GO
ALTER TABLE [dbo].[Account_HE170027]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role_HE170027] ([role_id])
GO
ALTER TABLE [dbo].[Cart_HE170027]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account_HE170027] ([account_id])
GO
ALTER TABLE [dbo].[Cart_HE170027]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account_HE170027] ([account_id])
GO
ALTER TABLE [dbo].[Cart_HE170027]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account_HE170027] ([account_id])
GO
ALTER TABLE [dbo].[Cart_HE170027]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product_HE170027] ([product_id])
GO
ALTER TABLE [dbo].[Cart_HE170027]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product_HE170027] ([product_id])
GO
ALTER TABLE [dbo].[Cart_HE170027]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product_HE170027] ([product_id])
GO
ALTER TABLE [dbo].[Order_HE170027]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account_HE170027] ([account_id])
GO
ALTER TABLE [dbo].[Order_HE170027]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account_HE170027] ([account_id])
GO
ALTER TABLE [dbo].[Order_HE170027]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account_HE170027] ([account_id])
GO
ALTER TABLE [dbo].[OrderDetail_HE170027]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Order_HE170027] ([order_id])
GO
ALTER TABLE [dbo].[OrderDetail_HE170027]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Order_HE170027] ([order_id])
GO
ALTER TABLE [dbo].[OrderDetail_HE170027]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Order_HE170027] ([order_id])
GO
ALTER TABLE [dbo].[OrderDetail_HE170027]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product_HE170027] ([product_id])
GO
ALTER TABLE [dbo].[OrderDetail_HE170027]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product_HE170027] ([product_id])
GO
ALTER TABLE [dbo].[OrderDetail_HE170027]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product_HE170027] ([product_id])
GO
ALTER TABLE [dbo].[Product_HE170027]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Category_HE170027] ([category_id])
GO
ALTER TABLE [dbo].[Product_HE170027]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Category_HE170027] ([category_id])
GO
ALTER TABLE [dbo].[Product_HE170027]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Category_HE170027] ([category_id])
GO
