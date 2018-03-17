USE [Practica_2]
GO
/****** Object:  Table [dbo].[INVENTORIES]    Script Date: 17/03/2018 11:09:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTORIES](
	[product_id] [nchar](10) NULL,
	[werehouse_id] [nchar](10) NULL,
	[quantity_on_hand] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ORDER_ITEMS]    Script Date: 17/03/2018 11:09:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_ITEMS](
	[order_id] [nchar](10) NULL,
	[linr_item_id] [nchar](10) NULL,
	[product_id] [nchar](10) NULL,
	[unit_price] [nchar](10) NULL,
	[quantity] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 17/03/2018 11:09:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDERS](
	[order_id] [nchar](10) NULL,
	[order_date] [nchar](10) NULL,
	[order_mode] [nchar](10) NULL,
	[customer_id] [nchar](10) NULL,
	[order_status] [nchar](10) NULL,
	[order_total] [nchar](10) NULL,
	[sales_rep_id] [nchar](10) NULL,
	[promotion_id] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRODUCT_DESCRIPTIONS]    Script Date: 17/03/2018 11:09:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_DESCRIPTIONS](
	[product_id] [nchar](10) NULL,
	[language_id] [nchar](10) NULL,
	[translated_name] [nchar](10) NULL,
	[translated_description] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRODUCT_INFORMATION]    Script Date: 17/03/2018 11:09:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_INFORMATION](
	[product_id] [nchar](10) NULL,
	[product_name] [nchar](10) NULL,
	[product_description] [nchar](10) NULL,
	[category_id] [nchar](10) NULL,
	[weight_class] [nchar](10) NULL,
	[warranty_period] [nchar](10) NULL,
	[supplier_id] [nchar](10) NULL,
	[product_status] [nchar](10) NULL,
	[list_price] [nchar](10) NULL,
	[catalog_url] [nchar](10) NULL
) ON [PRIMARY]

GO
