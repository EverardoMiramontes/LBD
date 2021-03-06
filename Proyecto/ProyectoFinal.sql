USE [ProyectoFinal]
GO
/****** Object:  StoredProcedure [dbo].[StoredProcedure1]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StoredProcedure1]
AS
Select * From Vista1


GO
/****** Object:  StoredProcedure [dbo].[StoredProcedure2]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StoredProcedure2]
AS
Select * From Vista2


GO
/****** Object:  StoredProcedure [dbo].[StoredProcedure3]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StoredProcedure3]
AS
Select * From VistaJoin


GO
/****** Object:  StoredProcedure [dbo].[StoredProcedure4]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StoredProcedure4]
AS
Select * From VistaJoin2


GO
/****** Object:  StoredProcedure [dbo].[StoredProcedure5]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StoredProcedure5]
AS
Select * From Vista5

GO
/****** Object:  Table [dbo].[COUNTRIES]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COUNTRIES](
	[country_id] [int] NOT NULL,
	[country_name] [varchar](50) NULL,
	[region_id] [int] NULL,
 CONSTRAINT [PK_COUNTRIES] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMERS]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMERS](
	[customer_id] [int] NOT NULL,
	[cust_first_name] [text] NULL,
	[cust_last_name] [text] NULL,
	[cust_address] [varchar](50) NULL,
	[phone_numbers] [nchar](10) NULL,
	[nls_language] [varchar](50) NULL,
	[nls_territory] [varchar](50) NULL,
	[credit_limit] [varchar](50) NULL,
	[cust_email] [varchar](50) NULL,
	[account_mgr_id] [numeric](18, 0) NULL,
	[cust_geo_location] [geography] NULL,
	[date_of_birth] [date] NULL,
	[material_status] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[income_level] [money] NULL,
 CONSTRAINT [PK_CUSTOMERS] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DEPARTAMENTS]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DEPARTAMENTS](
	[departament_id] [int] NOT NULL,
	[departament_name] [varchar](50) NULL,
	[manager_id] [varchar](50) NULL,
	[location_id] [int] NULL,
 CONSTRAINT [PK_DEPARTAMENTS] PRIMARY KEY CLUSTERED 
(
	[departament_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPLOYEES]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLOYEES](
	[employee_id] [int] NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[phone_number] [nchar](10) NULL,
	[hire_date] [date] NULL,
	[job_id] [int] NULL,
	[salary] [money] NULL,
	[comission_pct] [varchar](50) NULL,
	[manager_id] [int] NULL,
	[departament_id] [int] NULL,
 CONSTRAINT [PK_EMPLOYEES] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INVENTORIES]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INVENTORIES](
	[product_id] [int] NULL,
	[warehouse_id] [int] NULL,
	[quantity_on_hand] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JOB_HISTORY]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOB_HISTORY](
	[employee_id] [int] NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[job_id] [int] NULL,
	[departament_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JOBS]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JOBS](
	[job_id] [int] NOT NULL,
	[job_title] [varchar](50) NULL,
	[min_salary] [money] NULL,
	[max_salary] [money] NULL,
 CONSTRAINT [PK_JOBS] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOCATIONS]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOCATIONS](
	[location_id] [int] NOT NULL,
	[street_address] [varchar](50) NULL,
	[postal_code] [nchar](10) NULL,
	[city] [varchar](50) NULL,
	[state_province] [varchar](50) NULL,
	[country_id] [int] NULL,
 CONSTRAINT [PK_LOCATIONS] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORDER_ITEMS]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORDER_ITEMS](
	[order_id] [int] NULL,
	[line_item_id] [int] NULL,
	[product_id] [int] NULL,
	[unit_price] [varchar](50) NULL,
	[quantity] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORDERS](
	[order_id] [int] NOT NULL,
	[order_date] [date] NULL,
	[order_mode] [varchar](50) NULL,
	[customer_id] [int] NULL,
	[order_status] [varchar](50) NULL,
	[order_total] [varchar](50) NULL,
	[sales_rep_id] [int] NULL,
	[promotion_id] [int] NULL,
 CONSTRAINT [PK_ORDERS] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCT_DESCRIPTIONS]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCT_DESCRIPTIONS](
	[product_id] [int] NULL,
	[language_id] [int] NULL,
	[translated_name] [varchar](50) NULL,
	[translated_description] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCT_INFORMATION]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCT_INFORMATION](
	[product_id] [int] NOT NULL,
	[product_name] [varchar](50) NULL,
	[product_description] [varchar](50) NULL,
	[category_id] [int] NULL,
	[weight_class] [varchar](50) NULL,
	[warranty_period] [varchar](50) NULL,
	[supplier_id] [int] NULL,
	[product_status] [varchar](50) NULL,
	[list_price] [money] NULL,
	[min_price] [money] NULL,
	[catalog_url] [varchar](50) NULL,
 CONSTRAINT [PK_PRODUCT_INFORMATION] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REGIONS]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REGIONS](
	[region_id] [int] NOT NULL,
	[region_name] [varchar](50) NULL,
 CONSTRAINT [PK_REGIONS] PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WAREHOUSES]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WAREHOUSES](
	[warehouse_id] [int] NOT NULL,
	[warehouse_spec] [varchar](50) NULL,
	[warehouse_name] [varchar](50) NULL,
	[location_id] [int] NULL,
	[wh_geo_location] [geography] NULL,
 CONSTRAINT [PK_WAREHOUSES] PRIMARY KEY CLUSTERED 
(
	[warehouse_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[Vista1]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vista1] AS
SELECT street_address, city
FROM LOCATIONS



GO
/****** Object:  View [dbo].[Vista2]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Vista2]
AS SELECT A1.departament_name Departaments, A1.manager_id Manager,A2.street_address Direccion , SUM(A2.location_id) Location_id
FROM DEPARTAMENTS A1, LOCATIONS A2
WHERE A1.location_id = A2.location_id
GROUP BY A1.departament_name, A1.manager_id, A2.street_address


GO
/****** Object:  View [dbo].[Vista3]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Vista3]
AS SELECT l.street_address Direccion, l.state_province Estado,c.country_name Pais, SUM(c.country_id) country_id
FROM LOCATIONS l, COUNTRIES c
WHERE l.country_id = c.country_id
GROUP BY l.street_address, l.state_province, c.country_name


GO
/****** Object:  View [dbo].[Vista4]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Vista4]
AS SELECT c.country_name Pais,r.region_name Continente , SUM(r.region_id) region_id
FROM COUNTRIES c, REGIONS r
WHERE c.region_id = r.region_id
GROUP BY c.country_name, r.region_name


GO
/****** Object:  View [dbo].[Vista5]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vista5] AS
SELECT departament_name, location_id
FROM DEPARTAMENTS



GO
/****** Object:  View [dbo].[VistaJoin]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[VistaJoin] AS
SELECT departament_name, manager_id, street_address FROM DEPARTAMENTS
    JOIN LOCATIONS
    ON DEPARTAMENTS.location_id = LOCATIONS.location_id


GO
/****** Object:  View [dbo].[VistaJoin2]    Script Date: 05/05/2018 08:40:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[VistaJoin2] AS
SELECT 
   d.departament_name Departamentos,
   d.manager_id,
   l.street_address,
   c.country_name Pais
FROM LOCATIONS l
INNER JOIN DEPARTAMENTS d ON l.location_id =  d.location_id
INNER JOIN COUNTRIES c ON l.country_id =  c.country_id



GO
INSERT [dbo].[COUNTRIES] ([country_id], [country_name], [region_id]) VALUES (1, N'Angola', 1)
GO
INSERT [dbo].[COUNTRIES] ([country_id], [country_name], [region_id]) VALUES (2, N'Argelia', 1)
GO
INSERT [dbo].[COUNTRIES] ([country_id], [country_name], [region_id]) VALUES (3, N'Canadá', 2)
GO
INSERT [dbo].[COUNTRIES] ([country_id], [country_name], [region_id]) VALUES (4, N'Estados Unidos', 2)
GO
INSERT [dbo].[COUNTRIES] ([country_id], [country_name], [region_id]) VALUES (5, N'México', 2)
GO
INSERT [dbo].[COUNTRIES] ([country_id], [country_name], [region_id]) VALUES (7, N'Arabia Saudita', 3)
GO
INSERT [dbo].[COUNTRIES] ([country_id], [country_name], [region_id]) VALUES (8, N'Alemania', 4)
GO
INSERT [dbo].[COUNTRIES] ([country_id], [country_name], [region_id]) VALUES (9, N'Italia', 4)
GO
INSERT [dbo].[COUNTRIES] ([country_id], [country_name], [region_id]) VALUES (10, N'Australia', 5)
GO
INSERT [dbo].[COUNTRIES] ([country_id], [country_name], [region_id]) VALUES (11, N'Nueva Zelanda', 5)
GO
INSERT [dbo].[DEPARTAMENTS] ([departament_id], [departament_name], [manager_id], [location_id]) VALUES (1, N'Grupo Bimbo', N'Jose Martinez', 1)
GO
INSERT [dbo].[DEPARTAMENTS] ([departament_id], [departament_name], [manager_id], [location_id]) VALUES (2, N'Produccion', N'Miguel Sandoval', 1)
GO
INSERT [dbo].[DEPARTAMENTS] ([departament_id], [departament_name], [manager_id], [location_id]) VALUES (3, N'Ventas', N'Luis Hernandez', 1)
GO
INSERT [dbo].[DEPARTAMENTS] ([departament_id], [departament_name], [manager_id], [location_id]) VALUES (4, N'Martketing', N'Roberto Gonzales', 1)
GO
INSERT [dbo].[DEPARTAMENTS] ([departament_id], [departament_name], [manager_id], [location_id]) VALUES (5, N'Produccion', N'Everardo Miramontes', 10)
GO
INSERT [dbo].[DEPARTAMENTS] ([departament_id], [departament_name], [manager_id], [location_id]) VALUES (6, N'Ventas', N'Alejandro Aguilera', 10)
GO
INSERT [dbo].[DEPARTAMENTS] ([departament_id], [departament_name], [manager_id], [location_id]) VALUES (7, N'Grupo Barcel', N'Kenneth Rodriguez ', 10)
GO
INSERT [dbo].[DEPARTAMENTS] ([departament_id], [departament_name], [manager_id], [location_id]) VALUES (9, N'Recursos Humanos', N'Bryan Morales', 1)
GO
INSERT [dbo].[DEPARTAMENTS] ([departament_id], [departament_name], [manager_id], [location_id]) VALUES (10, N'Recursos Humanos', N'Dylan Gomez', 10)
GO
INSERT [dbo].[JOBS] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (1, N'Operador de Produccion', 115.0000, 500.0000)
GO
INSERT [dbo].[JOBS] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (2, N'Gerente de Ventas', 150.0000, 600.0000)
GO
INSERT [dbo].[JOBS] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (3, N'Limpieza', 115.0000, 250.0000)
GO
INSERT [dbo].[JOBS] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (4, N'Calidad', 115.0000, 450.0000)
GO
INSERT [dbo].[JOBS] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (5, N'Supervisor', 115.0000, 600.0000)
GO
INSERT [dbo].[JOBS] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (6, N'Enfermero', 115.0000, 600.0000)
GO
INSERT [dbo].[JOBS] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (7, N'Guardia', 115.0000, 500.0000)
GO
INSERT [dbo].[JOBS] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (9, N'Almacenista', 150.0000, 500.0000)
GO
INSERT [dbo].[JOBS] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (10, N'Operador de montacargas', 115.0000, 500.0000)
GO
INSERT [dbo].[LOCATIONS] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (1, N'Privada San Antonio Depadua 2371', N'66630     ', N'Apodaca', N'Nuevo Leon', 5)
GO
INSERT [dbo].[LOCATIONS] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (2, N'Lic Zeferino Fajardo Luna', N'87010     ', N'Cd Victoria', N'Tamaulipas', 5)
GO
INSERT [dbo].[LOCATIONS] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (3, N'Piedmont RD NE', N'3333      ', N'Atlanta', N'Georgia', 4)
GO
INSERT [dbo].[LOCATIONS] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (4, N'Via Esprillo', N'16535     ', N'San Diego', N'California', 4)
GO
INSERT [dbo].[LOCATIONS] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (5, N'Hedelfinger', N'70327     ', N'Stuttgart', N'Baden-Wurtemberg', 8)
GO
INSERT [dbo].[LOCATIONS] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (6, N'Perugia', N'6135      ', N'Perusa', N'Umbría', 9)
GO
INSERT [dbo].[LOCATIONS] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (8, N'Riccarton Rd', N'8041      ', N'Christchurch', N'Nueva Zelanda', 11)
GO
INSERT [dbo].[LOCATIONS] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (9, N'Dickson Ave#1100', N'V1Y       ', N'Kelowna', N'Columbia Británica', 11)
GO
INSERT [dbo].[LOCATIONS] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (10, N'Carretera Monterrey Laredo 201', N'66054     ', N'Escobedo', N'Nuevo Leon', 5)
GO
INSERT [dbo].[REGIONS] ([region_id], [region_name]) VALUES (1, N'África')
GO
INSERT [dbo].[REGIONS] ([region_id], [region_name]) VALUES (2, N'América')
GO
INSERT [dbo].[REGIONS] ([region_id], [region_name]) VALUES (3, N'Asia')
GO
INSERT [dbo].[REGIONS] ([region_id], [region_name]) VALUES (4, N'Europa')
GO
INSERT [dbo].[REGIONS] ([region_id], [region_name]) VALUES (5, N'Oceanía')
GO
ALTER TABLE [dbo].[COUNTRIES]  WITH CHECK ADD  CONSTRAINT [FK_COUNTRIES_REGIONS] FOREIGN KEY([region_id])
REFERENCES [dbo].[REGIONS] ([region_id])
GO
ALTER TABLE [dbo].[COUNTRIES] CHECK CONSTRAINT [FK_COUNTRIES_REGIONS]
GO
ALTER TABLE [dbo].[DEPARTAMENTS]  WITH CHECK ADD  CONSTRAINT [FK_DEPARTAMENTS_LOCATIONS] FOREIGN KEY([location_id])
REFERENCES [dbo].[LOCATIONS] ([location_id])
GO
ALTER TABLE [dbo].[DEPARTAMENTS] CHECK CONSTRAINT [FK_DEPARTAMENTS_LOCATIONS]
GO
ALTER TABLE [dbo].[EMPLOYEES]  WITH CHECK ADD  CONSTRAINT [FK_EMPLOYEES_DEPARTAMENTS] FOREIGN KEY([departament_id])
REFERENCES [dbo].[DEPARTAMENTS] ([departament_id])
GO
ALTER TABLE [dbo].[EMPLOYEES] CHECK CONSTRAINT [FK_EMPLOYEES_DEPARTAMENTS]
GO
ALTER TABLE [dbo].[EMPLOYEES]  WITH CHECK ADD  CONSTRAINT [FK_EMPLOYEES_JOBS] FOREIGN KEY([job_id])
REFERENCES [dbo].[JOBS] ([job_id])
GO
ALTER TABLE [dbo].[EMPLOYEES] CHECK CONSTRAINT [FK_EMPLOYEES_JOBS]
GO
ALTER TABLE [dbo].[INVENTORIES]  WITH CHECK ADD  CONSTRAINT [FK_INVENTORIES_PRODUCT_INFORMATION] FOREIGN KEY([product_id])
REFERENCES [dbo].[PRODUCT_INFORMATION] ([product_id])
GO
ALTER TABLE [dbo].[INVENTORIES] CHECK CONSTRAINT [FK_INVENTORIES_PRODUCT_INFORMATION]
GO
ALTER TABLE [dbo].[INVENTORIES]  WITH CHECK ADD  CONSTRAINT [FK_INVENTORIES_WAREHOUSES] FOREIGN KEY([warehouse_id])
REFERENCES [dbo].[WAREHOUSES] ([warehouse_id])
GO
ALTER TABLE [dbo].[INVENTORIES] CHECK CONSTRAINT [FK_INVENTORIES_WAREHOUSES]
GO
ALTER TABLE [dbo].[JOB_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_JOB_HISTORY_DEPARTAMENTS] FOREIGN KEY([departament_id])
REFERENCES [dbo].[DEPARTAMENTS] ([departament_id])
GO
ALTER TABLE [dbo].[JOB_HISTORY] CHECK CONSTRAINT [FK_JOB_HISTORY_DEPARTAMENTS]
GO
ALTER TABLE [dbo].[JOB_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_JOB_HISTORY_EMPLOYEES] FOREIGN KEY([employee_id])
REFERENCES [dbo].[EMPLOYEES] ([employee_id])
GO
ALTER TABLE [dbo].[JOB_HISTORY] CHECK CONSTRAINT [FK_JOB_HISTORY_EMPLOYEES]
GO
ALTER TABLE [dbo].[JOB_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_JOB_HISTORY_JOBS] FOREIGN KEY([job_id])
REFERENCES [dbo].[JOBS] ([job_id])
GO
ALTER TABLE [dbo].[JOB_HISTORY] CHECK CONSTRAINT [FK_JOB_HISTORY_JOBS]
GO
ALTER TABLE [dbo].[LOCATIONS]  WITH CHECK ADD  CONSTRAINT [FK_LOCATIONS_COUNTRIES] FOREIGN KEY([country_id])
REFERENCES [dbo].[COUNTRIES] ([country_id])
GO
ALTER TABLE [dbo].[LOCATIONS] CHECK CONSTRAINT [FK_LOCATIONS_COUNTRIES]
GO
ALTER TABLE [dbo].[ORDER_ITEMS]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_ITEMS_ORDERS] FOREIGN KEY([order_id])
REFERENCES [dbo].[ORDERS] ([order_id])
GO
ALTER TABLE [dbo].[ORDER_ITEMS] CHECK CONSTRAINT [FK_ORDER_ITEMS_ORDERS]
GO
ALTER TABLE [dbo].[ORDER_ITEMS]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_ITEMS_PRODUCT_INFORMATION] FOREIGN KEY([product_id])
REFERENCES [dbo].[PRODUCT_INFORMATION] ([product_id])
GO
ALTER TABLE [dbo].[ORDER_ITEMS] CHECK CONSTRAINT [FK_ORDER_ITEMS_PRODUCT_INFORMATION]
GO
ALTER TABLE [dbo].[ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_CUSTOMERS] FOREIGN KEY([customer_id])
REFERENCES [dbo].[CUSTOMERS] ([customer_id])
GO
ALTER TABLE [dbo].[ORDERS] CHECK CONSTRAINT [FK_ORDERS_CUSTOMERS]
GO
ALTER TABLE [dbo].[PRODUCT_DESCRIPTIONS]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_DESCRIPTIONS_PRODUCT_INFORMATION] FOREIGN KEY([product_id])
REFERENCES [dbo].[PRODUCT_INFORMATION] ([product_id])
GO
ALTER TABLE [dbo].[PRODUCT_DESCRIPTIONS] CHECK CONSTRAINT [FK_PRODUCT_DESCRIPTIONS_PRODUCT_INFORMATION]
GO
ALTER TABLE [dbo].[WAREHOUSES]  WITH CHECK ADD  CONSTRAINT [FK_WAREHOUSES_LOCATIONS] FOREIGN KEY([location_id])
REFERENCES [dbo].[LOCATIONS] ([location_id])
GO
ALTER TABLE [dbo].[WAREHOUSES] CHECK CONSTRAINT [FK_WAREHOUSES_LOCATIONS]
GO
/****** Object:  Trigger [dbo].[TggDep]    Script Date: 05/05/2018 08:40:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TggDep]
   ON [dbo].[DEPARTAMENTS]
   AFTER INSERT
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO DEPARTAMENTS   
    (departament_name,manager_id)  
    SELECT '',''
    FROM INSERTED 

END


GO
/****** Object:  Trigger [dbo].[TggLoca]    Script Date: 05/05/2018 08:40:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TggLoca] on [dbo].[LOCATIONS]
INSTEAD OF INSERT
AS
BEGIN
INSERT INTO LOCATIONS
	(street_address,postal_code,city, state_province)
   SELECT '','','',''
   FROM inserted
END


GO
