USE [master]
GO
/****** Object:  Database [Practica3]    Script Date: 30/04/2018 11:05:58 p. m. ******/
CREATE DATABASE [Practica3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica3', FILENAME = N'E:\BD\P3\Practica3.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Practica3_log', FILENAME = N'E:\BD\P3\Practica3_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Practica3] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica3] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Practica3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practica3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Practica3] SET  MULTI_USER 
GO
ALTER DATABASE [Practica3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica3] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Practica3]
GO
/****** Object:  Table [dbo].[COUNTRIES]    Script Date: 30/04/2018 11:05:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COUNTRIES](
	[country_id] [int] NULL,
	[country_name] [varchar](50) NULL,
	[region_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMERS]    Script Date: 30/04/2018 11:05:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMERS](
	[customer_id] [int] NULL,
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
	[income_level] [money] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DEPARTAMENTS]    Script Date: 30/04/2018 11:05:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DEPARTAMENTS](
	[departament_id] [int] NULL,
	[departament_name] [varchar](50) NULL,
	[manager_id] [int] NULL,
	[location_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPLOYEES]    Script Date: 30/04/2018 11:05:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLOYEES](
	[employee_id] [int] NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[phone_number] [nchar](10) NULL,
	[hire_date] [date] NULL,
	[job_id] [int] NULL,
	[salary] [money] NULL,
	[comission_pct] [varchar](50) NULL,
	[manager_id] [int] NULL,
	[departament_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INVENTORIES]    Script Date: 30/04/2018 11:05:58 p. m. ******/
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
/****** Object:  Table [dbo].[JOB_HISTORY]    Script Date: 30/04/2018 11:05:58 p. m. ******/
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
/****** Object:  Table [dbo].[JOBS]    Script Date: 30/04/2018 11:05:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JOBS](
	[job_id] [int] NULL,
	[job_title] [varchar](50) NULL,
	[min_salary] [money] NULL,
	[mac_salary] [money] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOCATIONS]    Script Date: 30/04/2018 11:05:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOCATIONS](
	[location_id] [int] NULL,
	[street_address] [varchar](50) NULL,
	[postal_code] [nchar](10) NULL,
	[city] [varchar](50) NULL,
	[state_province] [varchar](50) NULL,
	[country_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORDER_ITEMS]    Script Date: 30/04/2018 11:05:58 p. m. ******/
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
/****** Object:  Table [dbo].[ORDERS]    Script Date: 30/04/2018 11:05:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORDERS](
	[order_id] [int] NULL,
	[order_date] [date] NULL,
	[order_mode] [varchar](50) NULL,
	[customer_id] [int] NULL,
	[order_status] [varchar](50) NULL,
	[order_total] [varchar](50) NULL,
	[sales_rep_id] [int] NULL,
	[promotion_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCT_DESCRIPTIONS]    Script Date: 30/04/2018 11:05:58 p. m. ******/
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
/****** Object:  Table [dbo].[PRODUCT_INFORMATION]    Script Date: 30/04/2018 11:05:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCT_INFORMATION](
	[product_id] [int] NULL,
	[product_name] [varchar](50) NULL,
	[product_description] [varchar](50) NULL,
	[category_id] [int] NULL,
	[weight_class] [varchar](50) NULL,
	[warranty_period] [varchar](50) NULL,
	[supplier_id] [int] NULL,
	[product_status] [varchar](50) NULL,
	[list_price] [money] NULL,
	[min_price] [money] NULL,
	[catalog_url] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REGIONS]    Script Date: 30/04/2018 11:05:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REGIONS](
	[region_id] [int] NULL,
	[region_name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WAREHOUSES]    Script Date: 30/04/2018 11:05:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WAREHOUSES](
	[warehouse_id] [int] NULL,
	[warehouse_spec] [varchar](50) NULL,
	[warehouse_name] [varchar](50) NULL,
	[location_id] [int] NULL,
	[wh_geo_location] [geography] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Practica3] SET  READ_WRITE 
GO
