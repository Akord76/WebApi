USE [TestBI]
GO
/****** Object:  Table [dbo].[MENU_ANAK]    Script Date: 8/2/2021 12:28:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU_ANAK](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MENU_INDUK_ID] [char](10) NULL,
	[MENU_NAME] [varchar](50) NULL,
	[MENU_CAPTION] [varchar](50) NULL,
 CONSTRAINT [PK_MENU_ANAK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU_INDUK]    Script Date: 8/2/2021 12:28:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU_INDUK](
	[ID] [char](10) NOT NULL,
	[MENU_NAME] [varchar](100) NULL,
	[MENU_CAPTION] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TM_LOGIN]    Script Date: 8/2/2021 12:28:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TM_LOGIN](
	[USERID] [varchar](35) NOT NULL,
	[NAMA] [varchar](35) NULL,
	[PASSWORD] [varchar](10) NOT NULL,
	[Bagian] [varchar](35) NULL,
	[HAK_AKSES] [varchar](100) NULL,
 CONSTRAINT [PK_TM_LOGIN] PRIMARY KEY CLUSTERED 
(
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MENU_ANAK] ON 

INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (0, N'1         ', N'mnuBarang', N'&Obat')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (1, N'1         ', N'mnuBarang_1', N'&Input Barang')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (2, N'1         ', N'mnuBarang_2', N'Stok &Opname')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (3, N'1         ', N'mnuPelanggan', N'&Pelanggan')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (4, N'1         ', N'mnuSuplier', N'&Suplier')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (5, N'1         ', N'MnuPromoDisc', N'&Promo Discount')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (6, N'2         ', N'mnuPem', N'Pembelian')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (7, N'2         ', N'mnuSale', N'Penjualan')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (8, N'2         ', N'MnuSet', N'Setoran Kas')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (9, N'2         ', N'MnuRetur', N'Retur Barang')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (10, N'3         ', N'mnuLap', N'&Laporan')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (11, N'3         ', N'mnuLapMaster', N'Master')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (12, N'3         ', N'smlapBarang_0', N'Barang')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (13, N'3         ', N'smLapBrg_1', N'&Barang')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (14, N'3         ', N'lsb', N'&Kartu Stok Barang')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (15, N'3         ', N'smLapBrg_2', N'Stok Opname')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (16, N'3         ', N'mnuPrintBarcode', N'&Print Barcode')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (17, N'3         ', N'smlapPel', N'&Pelanggan')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (18, N'3         ', N'smlapSup', N'&Suplier')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (19, N'3         ', N'smlap1', N'Pembelian')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (20, N'3         ', N'mnulap4', N'Penjualan')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (21, N'3         ', N'MnuLapSJ', N'Cetak Surat Jalan')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (22, N'3         ', N'submnulap_5', N'Mutasi Barang')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (23, N'3         ', N'subMutasiSaldo', N'Mutasi Saldo ')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (24, N'3         ', N'subRugiLaba', N'Rugi Laba')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (25, N'3         ', N'MnuSetup', N'Setup &User')
INSERT [dbo].[MENU_ANAK] ([ID], [MENU_INDUK_ID], [MENU_NAME], [MENU_CAPTION]) VALUES (26, N'3         ', N'mnuPrintBarcode', N'&Print Barcode')
SET IDENTITY_INSERT [dbo].[MENU_ANAK] OFF
GO
INSERT [dbo].[MENU_INDUK] ([ID], [MENU_NAME], [MENU_CAPTION]) VALUES (N'1         ', N'mnuMaster', N'&Master')
INSERT [dbo].[MENU_INDUK] ([ID], [MENU_NAME], [MENU_CAPTION]) VALUES (N'2         ', N'mnuTransaksi', N'&Transaksi')
INSERT [dbo].[MENU_INDUK] ([ID], [MENU_NAME], [MENU_CAPTION]) VALUES (N'3         ', N'mnuLaporan', N'&Laporan')
GO
INSERT [dbo].[TM_LOGIN] ([USERID], [NAMA], [PASSWORD], [Bagian], [HAK_AKSES]) VALUES (N'admin', N'admin', N'admin1', N'ADMINISTRATOR', N'0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26')
INSERT [dbo].[TM_LOGIN] ([USERID], [NAMA], [PASSWORD], [Bagian], [HAK_AKSES]) VALUES (N'Akord76', N'user', N'user1', N'KASIR', N'0,1,2,3,4,6,7,8,10,11,12,13,14,16')
INSERT [dbo].[TM_LOGIN] ([USERID], [NAMA], [PASSWORD], [Bagian], [HAK_AKSES]) VALUES (N'KASIR', N'kasir', N'kasir', N'KASIR', N'0,1,2,3,7,8,10,11,12,13,14,15,16,17,18,21,26')
GO
/****** Object:  StoredProcedure [dbo].[Api_sp_GetUserAll]    Script Date: 8/2/2021 12:28:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[Api_sp_GetUserAll]--'ADMIN','ADMIN1'
 AS
 BEGIN
     SET NOCOUNT ON;

     SELECT  [NAMA], [PASSWORD], [HAK_AKSES] 
	 FROM TM_LOGIN 
   
 END
GO
/****** Object:  StoredProcedure [dbo].[Api_sp_GetUserById]    Script Date: 8/2/2021 12:28:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create PROCEDURE [dbo].[Api_sp_GetUserById]--'ADMIN','ADMIN1'
 @Name Nvarchar(50)

 AS
 BEGIN
     SET NOCOUNT ON;

     SELECT  [NAMA], [PASSWORD], [HAK_AKSES] 
	 FROM TM_LOGIN WHERE NAMA=@Name
   
 END
GO
/****** Object:  StoredProcedure [dbo].[Api_sp_GetUserLog]    Script Date: 8/2/2021 12:28:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[Api_sp_GetUserLog]--'admin','admin1'
 @Name Nvarchar(50) , @Password nvarchar(50)
 --, @retVal Nvarchar(50) output
 AS
 BEGIN
     SET NOCOUNT ON;

     SELECT  [NAMA], [PASSWORD], [HAK_AKSES] 
	 FROM TM_LOGIN WHERE NAMA=@Name AND [PASSWORD]=@Password
   
 END
GO
