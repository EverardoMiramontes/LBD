USE [master]
GO
/****** Object:  Database [Practica_2]    Script Date: 17/03/2018 11:15:05 a.m. ******/
CREATE DATABASE [Practica_2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica_2', FILENAME = N'D:\Datos\Practica_2.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Practica_2_log', FILENAME = N'D:\Datos\Practica_2_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Practica_2] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica_2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica_2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica_2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica_2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica_2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica_2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica_2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica_2] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Practica_2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica_2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica_2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica_2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica_2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica_2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica_2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica_2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica_2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practica_2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica_2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica_2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica_2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica_2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica_2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica_2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica_2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Practica_2] SET  MULTI_USER 
GO
ALTER DATABASE [Practica_2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica_2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica_2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica_2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Practica_2]
GO
/****** Object:  Table [dbo].[INVENTORIES]    Script Date: 17/03/2018 11:15:05 a.m. ******/
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
/****** Object:  Table [dbo].[ORDER_ITEMS]    Script Date: 17/03/2018 11:15:05 a.m. ******/
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
/****** Object:  Table [dbo].[ORDERS]    Script Date: 17/03/2018 11:15:05 a.m. ******/
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
/****** Object:  Table [dbo].[PRODUCT_DESCRIPTIONS]    Script Date: 17/03/2018 11:15:05 a.m. ******/
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
/****** Object:  Table [dbo].[PRODUCT_INFORMATION]    Script Date: 17/03/2018 11:15:05 a.m. ******/
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
USE [master]
GO
ALTER DATABASE [Practica_2] SET  READ_WRITE 
GO
