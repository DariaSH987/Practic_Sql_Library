USE [pr]
GO
/****** Object:  Table [dbo].[Assortment]    Script Date: 05.12.2024 11:02:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assortment](
	[id_assortment] [int] IDENTITY(1,1) NOT NULL,
	[Product_name] [nvarchar](50) NOT NULL,
	[Stuffing] [nvarchar](50) NOT NULL,
	[Decor] [nvarchar](50) NULL,
	[SupplierId] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Assortment] PRIMARY KEY CLUSTERED 
(
	[id_assortment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 05.12.2024 11:02:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[id_client] [int] IDENTITY(1,1) NOT NULL,
	[First_name] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 05.12.2024 11:02:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id_orders] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NULL,
	[Price] [int] NULL,
	[Date_of_issue] [date] NULL,
	[Data_order] [date] NULL,
	[ClientId] [int] NULL,
	[AssortmentId] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id_orders] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 05.12.2024 11:02:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[id_suppliers] [int] IDENTITY(1,1) NOT NULL,
	[Suppliers_name] [nvarchar](50) NOT NULL,
	[Goods] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[id_suppliers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assortment] ON 

INSERT [dbo].[Assortment] ([id_assortment], [Product_name], [Stuffing], [Decor], [SupplierId], [Price]) VALUES (1, N'Торт "Красный бархат"', N'Малиновое конфитюр', N'Шоколадная фигурка', 10, 2300)
INSERT [dbo].[Assortment] ([id_assortment], [Product_name], [Stuffing], [Decor], [SupplierId], [Price]) VALUES (2, N'Торт "Фисташка малина"', N'Малиновый мусс', N'Вафельная бумага', 38, 2600)
INSERT [dbo].[Assortment] ([id_assortment], [Product_name], [Stuffing], [Decor], [SupplierId], [Price]) VALUES (3, N'Торт "Сникерс"', N'Карамель', N'Шоколад', 23, 2450)
INSERT [dbo].[Assortment] ([id_assortment], [Product_name], [Stuffing], [Decor], [SupplierId], [Price]) VALUES (4, N'Торт "Клубника сливки"', N'Клубничный конфитюр', N'Ягоды', 2, 2100)
INSERT [dbo].[Assortment] ([id_assortment], [Product_name], [Stuffing], [Decor], [SupplierId], [Price]) VALUES (5, N'Капкейки "Летние"', N'Шоколадный ганаш', N'Шоколадные фигурки', 20, 1200)
INSERT [dbo].[Assortment] ([id_assortment], [Product_name], [Stuffing], [Decor], [SupplierId], [Price]) VALUES (6, N'Капкейки "Празничные"', N'Вишнёвое кули', N'Ягоды', 13, 1260)
INSERT [dbo].[Assortment] ([id_assortment], [Product_name], [Stuffing], [Decor], [SupplierId], [Price]) VALUES (7, N'Капкейки "Весенние"', N'Абрикосовое кофи', N'Шоколад', 18, 1180)
INSERT [dbo].[Assortment] ([id_assortment], [Product_name], [Stuffing], [Decor], [SupplierId], [Price]) VALUES (8, N'Чизкейк', N'Шоколадный', N'Шоколадные фигурки', 1, 650)
INSERT [dbo].[Assortment] ([id_assortment], [Product_name], [Stuffing], [Decor], [SupplierId], [Price]) VALUES (9, N'Пирожное "Ренессанс"', N'Вишнёво-лимонный курт', N'Мастика', 13, 350)
INSERT [dbo].[Assortment] ([id_assortment], [Product_name], [Stuffing], [Decor], [SupplierId], [Price]) VALUES (11, N'Вишнёвый пирог', N'Вишня', N'Шоколадная фигурка', 13, 850)
SET IDENTITY_INSERT [dbo].[Assortment] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (1, N'Кузнецова Алиса', N'7(495)692-76-60', N'Москва, проезд Балканская, 10')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (2, N'Белов Константин', N'7(495)678-54-32', N'Москва, бульвар Космонавтов, 91')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (3, N'Скворцова Алёна', N'7(495)159-00-27', NULL)
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (4, N'Назарова Полина', N'7(495)633-01-97', NULL)
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (5, N'Громова Ариана', N'7(495)932-12-03', N'Москва, шоссе Гоголя, 96')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (6, N'Терехова Ева', N'7(495)524-64-24', NULL)
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (7, N'Уткин Лев', N'7(495)332-64-86', NULL)
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (8, N'Маслова Ксения', N'7(495)798-35-86', N'Москва, спуск Домодедовская, 23')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (9, N'Романов Михаил', N'7(495)196-49-98', NULL)
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (10, N'Власова Виктория', N'7(495)222-74-61', N'Москва,проезд Ладыгина, 43')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (11, N'Высоцкая София', N'7(495)044-42-15', NULL)
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (12, N'Захарова Вера', N'7(495)044-52-01', NULL)
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (13, N'Виноградов Богдан', N'7(495)978-97-74', N'Москва, ул. Домодедовская, 47')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (14, N'Смирнов Александр', N'7(495)067-53-83', NULL)
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (15, N'Матвеев Кирилл', N'7(495)288-59-45', NULL)
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (16, N'Екатерина', N'7(495)895-10-76', N'Москва, бульвар Ломоносова, 24')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (17, N'Жуков Даниил', N'7(495)098-37-17', N'Москва, проезд Гагарина, 07')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (18, N'Юдин Макар', N'7(495)955-90-19', NULL)
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (19, N'Карпов Максим', N'7(495)051-02-70', NULL)
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (20, N'Попов Василий', N'7(495)399-53-19', N'Москва, наб. Бухарестская, 37')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (21, N'Федотов Антон', N'7(495)077-89-48', NULL)
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (22, N'Демидов Никита', N'7(495)048-05-70', N'Москва, спуск Ладыгина, 50')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (23, N'Павлова Алия', N'7(495)217-49-81', N'Москва, въезд Ломоносова, 17')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (24, N'Антипова Амира', N'7(495)808-12-74', N'Москва,спуск Ленина, 15')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (25, N'Антонова Ульяна', N'7(495)520-46-93', N'')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (26, N'Волкова Мария', N'7(495)317-98-86', N'Москва,шоссе Будапештсткая, 01')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (27, N'Орлова Элина', N'7(495)202-03-43', N'Москва, шоссе Ладыгина, 10')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (28, N'Анисимова Елизавета', N'7(495)691-37-49', NULL)
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (30, N'Вишневский Евгений', N'7(495)672-19-95', NULL)
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (36, N'Астахова Ольга', N'7(495)345-45-54', N'Москва, ул.Ленина, дом 3')
INSERT [dbo].[Clients] ([id_client], [First_name], [Phone], [Address]) VALUES (37, N'Кондратов Роман', N'7(495)789-34-32', N'Москва, ул.Первомайская, дом 9, кв.1')
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (1, 1, 2300, CAST(N'2024-11-23' AS Date), CAST(N'2024-11-21' AS Date), 1, 1)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (2, 2, 1900, CAST(N'2023-09-12' AS Date), CAST(N'2023-09-09' AS Date), 6, 3)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (3, 1, 2100, CAST(N'2019-12-19' AS Date), CAST(N'2019-12-10' AS Date), 23, 4)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (4, 3, 3540, CAST(N'2021-10-02' AS Date), CAST(N'2021-09-29' AS Date), 4, 7)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (5, 1, 2450, CAST(N'2005-05-31' AS Date), CAST(N'2005-05-28' AS Date), 14, 3)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (6, 2, 2520, CAST(N'2024-03-12' AS Date), CAST(N'2024-03-10' AS Date), 26, 6)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (7, 1, 650, CAST(N'2011-02-20' AS Date), CAST(N'2022-02-18' AS Date), 8, 8)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (8, 1, 1200, CAST(N'2020-08-14' AS Date), CAST(N'2020-08-12' AS Date), 17, 5)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (9, 1, 2300, CAST(N'2022-02-12' AS Date), CAST(N'2022-02-10' AS Date), 2, 1)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (10, 1, 2450, CAST(N'2021-10-22' AS Date), CAST(N'2021-10-20' AS Date), 3, 3)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (11, 1, 2600, CAST(N'2020-02-07' AS Date), CAST(N'2020-02-05' AS Date), 5, 2)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (12, 2, 1300, CAST(N'2018-06-17' AS Date), CAST(N'2018-06-15' AS Date), 8, 8)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (13, 3, 1950, CAST(N'2017-04-12' AS Date), CAST(N'2017-04-10' AS Date), 19, 8)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (14, 2, 4900, CAST(N'2024-08-31' AS Date), CAST(N'2024-08-29' AS Date), 4, 3)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (15, 1, 1200, CAST(N'2023-05-27' AS Date), CAST(N'2023-05-25' AS Date), 20, 5)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (16, 3, 7800, CAST(N'2022-02-09' AS Date), CAST(N'2022-02-06' AS Date), 7, 2)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (17, 1, 2450, CAST(N'2023-04-13' AS Date), CAST(N'2023-04-10' AS Date), 12, 3)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (18, 1, 1180, CAST(N'2021-04-06' AS Date), CAST(N'2021-04-02' AS Date), 18, 7)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (19, 1, 1200, CAST(N'2021-04-04' AS Date), CAST(N'2021-04-01' AS Date), 11, 5)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (20, 1, 2100, CAST(N'2024-08-27' AS Date), CAST(N'2024-08-25' AS Date), 15, 4)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (21, 2, 4900, CAST(N'2019-02-20' AS Date), CAST(N'2019-02-17' AS Date), 10, 3)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (22, 2, 2360, CAST(N'2021-09-21' AS Date), CAST(N'2021-09-18' AS Date), 17, 7)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (23, 3, 7800, CAST(N'2019-05-30' AS Date), CAST(N'2019-05-27' AS Date), 13, 2)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (24, 2, 1520, CAST(N'2022-07-29' AS Date), CAST(N'2022-07-27' AS Date), 16, 6)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (25, 1, 1180, CAST(N'2024-02-17' AS Date), CAST(N'2024-02-15' AS Date), 21, 7)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (26, 1, 2600, CAST(N'2021-04-29' AS Date), CAST(N'2021-04-27' AS Date), 25, 2)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (27, 3, 7350, CAST(N'2023-08-11' AS Date), CAST(N'2023-08-08' AS Date), 24, 3)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (28, 4, 9200, CAST(N'2021-04-29' AS Date), CAST(N'2021-04-26' AS Date), 27, 1)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (29, 1, 2600, CAST(N'2024-03-12' AS Date), CAST(N'2024-03-10' AS Date), 22, 2)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (30, 1, 2600, CAST(N'2021-09-30' AS Date), CAST(N'2021-09-29' AS Date), 28, 2)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (31, 2, 2360, CAST(N'2023-08-14' AS Date), CAST(N'2023-08-12' AS Date), 30, 7)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (32, 3, 6900, CAST(N'2012-05-31' AS Date), CAST(N'2012-05-29' AS Date), 4, 1)
INSERT [dbo].[Orders] ([id_orders], [Quantity], [Price], [Date_of_issue], [Data_order], [ClientId], [AssortmentId]) VALUES (33, 2, 1700, CAST(N'2024-03-14' AS Date), CAST(N'2024-03-11' AS Date), 9, 11)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (1, N'Красный октябрь', N'Шоколад белый')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (2, N'Фуддеск', N'Клубника')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (3, N'Эрманн', N'Сливки')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (5, N'Эрманн', N'Молоко')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (6, N'Эрманн', N'Сметана')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (7, N'Эрманн', N'Творожный сыр')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (10, N'Фуддеск', N'Малина')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (12, N'Фуддеск', N'Смородина')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (13, N'Фуддеск', N'Вишня')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (14, N'Фуддеск', N'Лимон')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (15, N'Фуддеск', N'Лайм')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (16, N'Фуддеск', N'Персик')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (17, N'Фуддеск', N'Клюква')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (18, N'Фуддеск', N'Абрикос')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (19, N'Красный октябрь', N'Шоколад тёмный')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (20, N'Красный октябрь', N'Шоколад молочный')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (21, N'Красный октябрь', N'Какао масло')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (23, N'Ситифуд', N'Сахар белый')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (24, N'Ситифуд', N'Сахар коричневы')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (26, N'Ситифуд', N'Мука')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (27, N'Ситифуд', N'Яйца')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (28, N'Ситифуд', N'Разрыхлитель теста ')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (29, N'Ситифуд', N'Растительное масло')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (30, N'Ситифуд', N'Сливочное масло')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (31, N'Ситифуд', N'Сахарная пудра')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (32, N'Ситифуд', N'Желатин пищевой')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (33, N'Ситифуд', N'Крахмал')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (35, N'Эрманн', N'Сгущёнка')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (37, N'Хеппиил', N'Мастика')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (38, N'Хеппиил', N'Вафельная бумага')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (39, N'Хеппиил', N'Пряники')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (40, N'Фуддеск', N'Земляника')
INSERT [dbo].[Suppliers] ([id_suppliers], [Suppliers_name], [Goods]) VALUES (42, N'Свечно', N'Свечи')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
ALTER TABLE [dbo].[Assortment]  WITH CHECK ADD  CONSTRAINT [FK_Assortment_Suppliers] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([id_suppliers])
GO
ALTER TABLE [dbo].[Assortment] CHECK CONSTRAINT [FK_Assortment_Suppliers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Assortment] FOREIGN KEY([AssortmentId])
REFERENCES [dbo].[Assortment] ([id_assortment])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Assortment]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([id_client])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Clients]
GO
