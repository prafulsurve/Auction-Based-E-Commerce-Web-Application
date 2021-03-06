USE [master]
GO
/****** Object:  Database [Software]    Script Date: 11/27/2016 4:30:05 PM ******/
CREATE DATABASE [Software]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Software', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Software.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Software_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Software_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Software] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Software].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Software] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Software] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Software] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Software] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Software] SET ARITHABORT OFF 
GO
ALTER DATABASE [Software] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Software] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Software] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Software] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Software] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Software] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Software] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Software] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Software] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Software] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Software] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Software] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Software] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Software] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Software] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Software] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Software] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Software] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Software] SET  MULTI_USER 
GO
ALTER DATABASE [Software] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Software] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Software] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Software] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Software]
GO
/****** Object:  Table [dbo].[product]    Script Date: 11/27/2016 4:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](max) NOT NULL,
	[category_id] [int] NOT NULL,
	[product_describe] [varchar](max) NOT NULL,
	[img1] [varchar](max) NOT NULL,
	[img2] [varchar](max) NOT NULL,
	[img3] [varchar](max) NOT NULL,
	[base_price] [bigint] NOT NULL,
	[seller_id] [int] NOT NULL,
	[buyer_id] [int] NOT NULL,
	[start_time] [datetime] NOT NULL,
	[end_time] [datetime] NOT NULL,
	[is_sold] [int] NOT NULL,
	[update_date] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product_category]    Script Date: 11/27/2016 4:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](max) NOT NULL,
	[date_update] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Registration]    Script Date: 11/27/2016 4:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[register_id] [int] IDENTITY(1,1) NOT NULL,
	[f_name] [varchar](max) NOT NULL,
	[l_name] [varchar](max) NOT NULL,
	[email] [varchar](max) NOT NULL,
	[mobile] [bigint] NULL,
	[country] [varchar](max) NOT NULL,
	[state] [varchar](max) NOT NULL,
	[city] [varchar](max) NOT NULL,
	[address] [varchar](max) NOT NULL,
	[password] [varchar](max) NOT NULL,
	[date_update] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([product_id], [product_name], [category_id], [product_describe], [img1], [img2], [img3], [base_price], [seller_id], [buyer_id], [start_time], [end_time], [is_sold], [update_date]) VALUES (1, N'Apple iphone', 10, N'iPhone 7 dramatically improves the most important aspects of the iPhone experience. It introduces advanced new camera systems. The best performance and battery life ever in an iPhone.', N'1.jpg', N'2.jpg', N'3.jpg', 100, 1, 2, CAST(N'2016-11-22T20:26:30.000' AS DateTime), CAST(N'2016-11-22T20:28:30.000' AS DateTime), 1, CAST(N'2016-11-24T01:18:54.000' AS DateTime))
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [product_describe], [img1], [img2], [img3], [base_price], [seller_id], [buyer_id], [start_time], [end_time], [is_sold], [update_date]) VALUES (2, N'Samsung Refrigerator', 6, N'If you’re always forgetting what food you need to buy, the Samsung Family Hub Refrigerator may come in quite useful.', N'1.jpg', N'2.png', N'3.jpg', 20, 1, 0, CAST(N'2016-11-22T20:42:52.000' AS DateTime), CAST(N'2016-11-22T20:44:52.000' AS DateTime), 0, CAST(N'2016-11-22T20:42:52.000' AS DateTime))
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [product_describe], [img1], [img2], [img3], [base_price], [seller_id], [buyer_id], [start_time], [end_time], [is_sold], [update_date]) VALUES (3, N'Air Conditioner', 10, N'Stay comfortable year round when you shop air conditioner products and services at The Home Depot. We’ve got everything you need to beat extreme temps and humidity, whether you’re looking for an oscillating fan for your bedroom or a dehumidifier for your basement.', N'1.jpg', N'2.jpg', N'3.jpg', 101, 1, 2, CAST(N'2016-11-26T01:00:52.000' AS DateTime), CAST(N'2016-11-26T23:33:52.000' AS DateTime), 1, CAST(N'2016-11-26T23:33:51.000' AS DateTime))
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [product_describe], [img1], [img2], [img3], [base_price], [seller_id], [buyer_id], [start_time], [end_time], [is_sold], [update_date]) VALUES (4, N'Lasko Fan', 10, N'Lasko fans come in a variety of styles that are sure to meet your needs. Whether it’s moving air through a big room or cooling you off in the hot summer, Lasko’s safe and reliable products get the job done right. Browse our collection of tower fans, window fans, pedestal fans- all types of fans for home- to find the one that’s right for you.', N'1.jpg', N'2.jpg', N'3.jpg', 50, 2, 1, CAST(N'2016-11-27T13:50:54.000' AS DateTime), CAST(N'2016-11-27T13:56:54.000' AS DateTime), 1, CAST(N'2016-11-27T13:58:08.000' AS DateTime))
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [product_describe], [img1], [img2], [img3], [base_price], [seller_id], [buyer_id], [start_time], [end_time], [is_sold], [update_date]) VALUES (5, N'T Shirt', 3, N'A T-shirt is a style of unisex fabric shirt, named after the T shape of the body and sleeves. It is normally associated with short sleeves, a round neck line known as a crew neck, with no collar.', N'1.jpg', N'2.jpg', N'3.jpg', 51, 2, 1, CAST(N'2016-11-27T14:03:53.000' AS DateTime), CAST(N'2016-11-27T14:05:53.000' AS DateTime), 1, CAST(N'2016-11-27T14:05:52.000' AS DateTime))
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [product_describe], [img1], [img2], [img3], [base_price], [seller_id], [buyer_id], [start_time], [end_time], [is_sold], [update_date]) VALUES (6, N'Mercedes Car', 7, N'Mercedes-Benz is a global automobile manufacturer and a division of the German company Daimler AG. The brand is known for luxury vehicles, buses, coaches, and trucks. The headquarters of Mercedes-Benz is in Stuttgart, Baden-Württemberg, Germany.', N'1.jpg', N'2.jpg', N'3.jpg', 5000, 1, 2, CAST(N'2016-11-27T14:21:04.000' AS DateTime), CAST(N'2016-11-27T14:23:04.000' AS DateTime), 1, CAST(N'2016-11-27T14:27:24.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[product] OFF
SET IDENTITY_INSERT [dbo].[product_category] ON 

INSERT [dbo].[product_category] ([category_id], [category], [date_update]) VALUES (1, N'Books', CAST(N'2016-10-18T18:37:46.683' AS DateTime))
INSERT [dbo].[product_category] ([category_id], [category], [date_update]) VALUES (2, N'Computers', CAST(N'2016-10-18T18:37:46.683' AS DateTime))
INSERT [dbo].[product_category] ([category_id], [category], [date_update]) VALUES (3, N'Clothing', CAST(N'2016-10-18T18:37:46.683' AS DateTime))
INSERT [dbo].[product_category] ([category_id], [category], [date_update]) VALUES (4, N'Footwear', CAST(N'2016-10-18T18:37:46.683' AS DateTime))
INSERT [dbo].[product_category] ([category_id], [category], [date_update]) VALUES (5, N'Jewellery', CAST(N'2016-10-18T18:37:46.683' AS DateTime))
INSERT [dbo].[product_category] ([category_id], [category], [date_update]) VALUES (6, N'Kitchen', CAST(N'2016-10-18T18:37:46.697' AS DateTime))
INSERT [dbo].[product_category] ([category_id], [category], [date_update]) VALUES (7, N'Vehicles', CAST(N'2016-10-18T18:37:46.697' AS DateTime))
INSERT [dbo].[product_category] ([category_id], [category], [date_update]) VALUES (8, N'Musical', CAST(N'2016-10-18T18:37:46.697' AS DateTime))
INSERT [dbo].[product_category] ([category_id], [category], [date_update]) VALUES (9, N'Beauty', CAST(N'2016-10-18T18:37:46.697' AS DateTime))
INSERT [dbo].[product_category] ([category_id], [category], [date_update]) VALUES (10, N'Electronics', CAST(N'2016-10-18T18:37:46.697' AS DateTime))
INSERT [dbo].[product_category] ([category_id], [category], [date_update]) VALUES (11, N'Games', CAST(N'2016-10-18T18:37:46.697' AS DateTime))
INSERT [dbo].[product_category] ([category_id], [category], [date_update]) VALUES (12, N'Other', CAST(N'2016-10-18T18:37:46.697' AS DateTime))
SET IDENTITY_INSERT [dbo].[product_category] OFF
SET IDENTITY_INSERT [dbo].[Registration] ON 

INSERT [dbo].[Registration] ([register_id], [f_name], [l_name], [email], [mobile], [country], [state], [city], [address], [password], [date_update]) VALUES (1, N'Bhaviya', N'Gandani', N'bhaviyagandani@gmail.com', 7147251068, N'United States', N'California', N'Fullerton', N'2404, Nutwood Avenue, UCA L12', N'abcd1234', CAST(N'2016-11-22T13:55:39.000' AS DateTime))
INSERT [dbo].[Registration] ([register_id], [f_name], [l_name], [email], [mobile], [country], [state], [city], [address], [password], [date_update]) VALUES (2, N'Akash', N'Shah', N'akashgandani@gmail.com', NULL, N'United States', N'Texas', N'Houston', N'2405, Houston Avenue, UCA L12', N'abcd1234', CAST(N'2016-11-24T01:18:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Registration] OFF
USE [master]
GO
ALTER DATABASE [Software] SET  READ_WRITE 
GO
