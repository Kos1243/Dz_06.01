USE [CLirk]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 29.02.2024 9:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buyer](
	[id] [int] NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[jnchestvo] [nvarchar](50) NOT NULL,
	[adress] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[number] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Pocupatel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicines]    Script Date: 29.02.2024 9:32:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicines](
	[id] [int] NOT NULL,
	[pokupatel] [int] NOT NULL,
	[prodav] [nvarchar](50) NOT NULL,
	[recrpt] [nvarchar](50) NOT NULL,
	[prodaja] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Medicines] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipe]    Script Date: 29.02.2024 9:32:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipe](
	[id] [int] NOT NULL,
	[data] [nvarchar](50) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[FIO_vrach] [nvarchar](50) NOT NULL,
	[diagnoz] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Recept] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 29.02.2024 9:32:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[id] [int] NOT NULL,
	[data] [nvarchar](50) NOT NULL,
	[col] [nvarchar](50) NOT NULL,
	[id_rec] [int] NOT NULL,
	[id_prod] [int] NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seller]    Script Date: 29.02.2024 9:32:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seller](
	[id] [int] NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[otchestvo] [nvarchar](50) NOT NULL,
	[data] [nvarchar](50) NOT NULL,
	[obrazovanie] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Seller] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Buyer] ([id], [surname], [name], [jnchestvo], [adress], [city], [number]) VALUES (1, N'Казанцев', N'Илья', N'Викторович', N'Улица пушкина 69', N'Лукоянов', N'+799999123')
INSERT [dbo].[Buyer] ([id], [surname], [name], [jnchestvo], [adress], [city], [number]) VALUES (2, N'Некрасов', N'Анатолий', N'Павлович', N'Ул.Краная 41', N'Москва', N'+79123213')
GO
INSERT [dbo].[Medicines] ([id], [pokupatel], [prodav], [recrpt], [prodaja]) VALUES (1, 1, N'1', N'1', N'1')
INSERT [dbo].[Medicines] ([id], [pokupatel], [prodav], [recrpt], [prodaja]) VALUES (2, 2, N'2', N'2', N'2')
GO
INSERT [dbo].[Recipe] ([id], [data], [FIO], [FIO_vrach], [diagnoz]) VALUES (1, N'22.02.23', N'Казанович Илья Владимирович', N'Вранцов Григорий Макарович', N'Аутизм')
INSERT [dbo].[Recipe] ([id], [data], [FIO], [FIO_vrach], [diagnoz]) VALUES (2, N'22.04.24', N'Гриоренка Пвел Аврадьевич', N'Горшков Андрй Викторович', N'ОРВИ')
GO
INSERT [dbo].[Sales] ([id], [data], [col], [id_rec], [id_prod]) VALUES (1, N'22.09.24', N'1', 1, 1)
INSERT [dbo].[Sales] ([id], [data], [col], [id_rec], [id_prod]) VALUES (2, N'22.08.24', N'2', 1, 1)
GO
INSERT [dbo].[Seller] ([id], [surname], [name], [otchestvo], [data], [obrazovanie]) VALUES (1, N'Паршинов ', N'Эдуард', N'Викторович', N'22.04.24', N'1')
INSERT [dbo].[Seller] ([id], [surname], [name], [otchestvo], [data], [obrazovanie]) VALUES (2, N'Маршалов', N'Артур', N'Барсович', N'13.07.21', N'2')
GO
ALTER TABLE [dbo].[Medicines]  WITH CHECK ADD  CONSTRAINT [FK_Medicines_Buyer] FOREIGN KEY([pokupatel])
REFERENCES [dbo].[Buyer] ([id])
GO
ALTER TABLE [dbo].[Medicines] CHECK CONSTRAINT [FK_Medicines_Buyer]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Recipe] FOREIGN KEY([id_rec])
REFERENCES [dbo].[Recipe] ([id])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Recipe]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Seller] FOREIGN KEY([id_prod])
REFERENCES [dbo].[Seller] ([id])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Seller]
GO
