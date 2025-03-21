USE [master]
GO
/****** Object:  Database [AccountingAndSalesAnalysis]    Script Date: 11.03.2025 20:41:51 ******/
CREATE DATABASE [AccountingAndSalesAnalysis]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AccountingAndSalesAnalysis', FILENAME = N'D:\SQL\MSSQL16.SQLEXPRESS\MSSQL\DATA\AccountingAndSalesAnalysis.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AccountingAndSalesAnalysis_log', FILENAME = N'D:\SQL\MSSQL16.SQLEXPRESS\MSSQL\DATA\AccountingAndSalesAnalysis_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AccountingAndSalesAnalysis].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET ARITHABORT OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET  MULTI_USER 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET QUERY_STORE = OFF
GO
USE [AccountingAndSalesAnalysis]
GO
/****** Object:  Table [dbo].[CashRegister]    Script Date: 11.03.2025 20:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CashRegister](
	[Id] [int] NOT NULL,
	[Number] [nvarchar](20) NOT NULL,
	[StoreId] [int] NOT NULL,
	[CashRegisterTypeId] [int] NOT NULL,
 CONSTRAINT [PK_CashRegister] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CashRegisterType]    Script Date: 11.03.2025 20:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CashRegisterType](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CashRegisterType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11.03.2025 20:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 11.03.2025 20:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 11.03.2025 20:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[PositionId] [int] NOT NULL,
	[Login] [nvarchar](20) NULL,
	[Password] [nvarchar](20) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 11.03.2025 20:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11.03.2025 20:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Cost] [decimal](10, 2) NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 11.03.2025 20:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SaleTypeId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[TotalCost] [decimal](10, 2) NOT NULL,
	[CashRegisterId] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleProduct]    Script Date: 11.03.2025 20:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleProduct](
	[SaleId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[TotalCost] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_BasketProduct] PRIMARY KEY CLUSTERED 
(
	[SaleId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleType]    Script Date: 11.03.2025 20:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleType](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SaleType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 11.03.2025 20:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (1, N'К-001', 1, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (2, N'К-002', 1, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (3, N'К-003', 1, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (4, N'К-004', 1, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (5, N'К-005', 1, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (6, N'К-006', 1, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (7, N'К-007', 2, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (8, N'К-008', 2, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (9, N'К-009', 2, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (10, N'К-010', 2, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (11, N'К-011', 2, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (12, N'К-012', 2, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (13, N'К-013', 3, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (14, N'К-014', 3, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (15, N'К-015', 3, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (16, N'К-016', 3, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (17, N'К-017', 3, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (18, N'К-018', 3, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (19, N'К-019', 4, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (20, N'К-020', 4, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (21, N'К-021', 4, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (22, N'К-022', 4, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (23, N'К-023', 4, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (24, N'К-024', 4, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (25, N'К-025', 5, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (26, N'К-026', 5, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (27, N'К-027', 5, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (28, N'К-028', 5, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (29, N'К-029', 5, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (30, N'К-030', 5, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (31, N'К-031', 6, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (32, N'К-032', 6, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (33, N'К-033', 6, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (34, N'К-034', 6, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (35, N'К-035', 6, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (36, N'К-036', 6, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (37, N'К-037', 7, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (38, N'К-038', 7, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (39, N'К-039', 7, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (40, N'К-040', 7, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (41, N'К-041', 7, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (42, N'К-042', 7, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (43, N'К-043', 8, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (44, N'К-044', 8, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (45, N'К-045', 8, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (46, N'К-046', 8, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (47, N'К-047', 8, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (48, N'К-048', 8, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (49, N'К-049', 9, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (50, N'К-050', 9, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (51, N'К-051', 9, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (52, N'К-052', 9, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (53, N'К-053', 9, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (54, N'К-054', 9, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (55, N'К-055', 10, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (56, N'К-056', 10, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (57, N'К-057', 10, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (58, N'К-058', 10, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (59, N'К-059', 10, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (60, N'К-060', 10, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (61, N'К-061', 11, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (62, N'К-062', 11, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (63, N'К-063', 11, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (64, N'К-064', 11, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (65, N'К-065', 11, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (66, N'К-066', 11, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (67, N'К-067', 12, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (68, N'К-068', 12, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (69, N'К-069', 12, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (70, N'К-070', 12, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (71, N'К-071', 12, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (72, N'К-072', 12, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (73, N'К-073', 13, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (74, N'К-074', 13, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (75, N'К-075', 13, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (76, N'К-076', 13, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (77, N'К-077', 13, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (78, N'К-078', 13, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (79, N'К-079', 14, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (80, N'К-080', 14, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (81, N'К-081', 14, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (82, N'К-082', 14, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (83, N'К-083', 14, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (84, N'К-084', 14, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (85, N'К-085', 15, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (86, N'К-086', 15, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (87, N'К-087', 15, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (88, N'К-088', 15, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (89, N'К-089', 15, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (90, N'К-090', 15, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (91, N'К-091', 16, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (92, N'К-092', 16, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (93, N'К-093', 16, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (94, N'К-094', 16, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (95, N'К-095', 16, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (96, N'К-096', 16, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (97, N'К-097', 17, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (98, N'К-098', 17, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (99, N'К-099', 17, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (100, N'К-100', 17, 1)
GO
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (101, N'К-101', 17, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (102, N'К-102', 17, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (103, N'К-103', 18, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (104, N'К-104', 18, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (105, N'К-105', 18, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (106, N'К-106', 18, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (107, N'К-107', 18, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (108, N'К-108', 18, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (109, N'К-109', 19, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (110, N'К-110', 19, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (111, N'К-111', 19, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (112, N'К-112', 19, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (113, N'К-113', 19, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (114, N'К-114', 19, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (115, N'К-115', 20, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (116, N'К-116', 20, 2)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (117, N'К-117', 20, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (118, N'К-118', 20, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (119, N'К-119', 20, 1)
INSERT [dbo].[CashRegister] ([Id], [Number], [StoreId], [CashRegisterTypeId]) VALUES (120, N'К-120', 20, 1)
GO
INSERT [dbo].[CashRegisterType] ([Id], [Name]) VALUES (1, N'Самообслуживания')
INSERT [dbo].[CashRegisterType] ([Id], [Name]) VALUES (2, N'Касса')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Продукты питания')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Напитки')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Хозтовары')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Бытовая химия')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (5, N'Текстиль для дома')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (6, N'Мебель')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (7, N'Декор и интерьеры')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (8, N'Одежда')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (9, N'Обувь')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (10, N'Аксессуары')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (11, N'Электроника')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (12, N'Гаджеты и аксессуары')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (13, N'Косметика и уход')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (14, N'Товары для здоровья')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (15, N'Органические продукты')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (16, N'Детские товары')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (17, N'Игрушки')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (18, N'Канцелярия')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (19, N'Кухонная утварь')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (20, N'Посуда')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (21, N'Сад и огород')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (22, N'Спортивные товары')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (23, N'Книги и журналы')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (24, N'Сувениры и подарки')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (25, N'Хозинвентарь')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (26, N'Освещение')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (27, N'Строительные материалы')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (28, N'Автотовары')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (29, N'Товары для животных')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (30, N'Сезонные товары')
GO
INSERT [dbo].[Company] ([Id], [Name]) VALUES (1, N'МаркетПлюс')
INSERT [dbo].[Company] ([Id], [Name]) VALUES (2, N'Уютный Дом')
INSERT [dbo].[Company] ([Id], [Name]) VALUES (3, N'СтильМаркет')
INSERT [dbo].[Company] ([Id], [Name]) VALUES (4, N'Товары&Ко')
INSERT [dbo].[Company] ([Id], [Name]) VALUES (5, N'Городской Базар')
INSERT [dbo].[Company] ([Id], [Name]) VALUES (6, N'ЛайтШоп')
INSERT [dbo].[Company] ([Id], [Name]) VALUES (7, N'Простор Торг')
INSERT [dbo].[Company] ([Id], [Name]) VALUES (8, N'ВесьДом')
INSERT [dbo].[Company] ([Id], [Name]) VALUES (9, N'ЭкоЛавка')
INSERT [dbo].[Company] ([Id], [Name]) VALUES (10, N'Семейный Выбор')
GO
INSERT [dbo].[Employee] ([Id], [Surname], [FirstName], [MiddleName], [Phone], [Email], [PositionId], [Login], [Password]) VALUES (1, N'Иванов', N'Иван', N'Иванович', N'+7(999) 333-33-33', N'ivanov@mail.ru', 1, N'ivanov', N'123')
INSERT [dbo].[Employee] ([Id], [Surname], [FirstName], [MiddleName], [Phone], [Email], [PositionId], [Login], [Password]) VALUES (2, N'Сергеев', N'Сергей', N'Сергеевич', N'+7(999) 333-43-43', N'sergeev@mail.ru', 2, N'admin', N'123')
GO
INSERT [dbo].[Position] ([Id], [Name]) VALUES (1, N'Кассир')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (2, N'Администратор')
GO
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (1, N'Молоко "Деревенское"', CAST(80.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (2, N'Сок апельсиновый "Фруктовый сад"', CAST(120.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (3, N'Ведро пластмассовое', CAST(150.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (4, N'Стиральный порошок "Чистота"', CAST(300.00 AS Decimal(10, 2)), 4)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (5, N'Полотенце махровое', CAST(400.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (6, N'Диван угловой', CAST(15000.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (7, N'Картина "Морской пейзаж"', CAST(2500.00 AS Decimal(10, 2)), 7)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (8, N'Джинсы классические', CAST(2000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (9, N'Кроссовки спортивные', CAST(3500.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (10, N'Ремень кожаный', CAST(800.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (11, N'Смартфон "SuperPhone"', CAST(25000.00 AS Decimal(10, 2)), 11)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (12, N'Наушники беспроводные', CAST(1500.00 AS Decimal(10, 2)), 12)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (13, N'Крем для лица "Увлажняющий"', CAST(700.00 AS Decimal(10, 2)), 13)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (14, N'Витаминный комплекс "Здоровье"', CAST(1200.00 AS Decimal(10, 2)), 14)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (15, N'Яблоки органические', CAST(200.00 AS Decimal(10, 2)), 15)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (16, N'Подгузники детские', CAST(1000.00 AS Decimal(10, 2)), 16)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (17, N'Конструктор "Строитель"', CAST(1500.00 AS Decimal(10, 2)), 17)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (18, N'Ручка шариковая', CAST(50.00 AS Decimal(10, 2)), 18)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (19, N'Набор кастрюль', CAST(3000.00 AS Decimal(10, 2)), 19)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (20, N'Тарелка керамическая', CAST(300.00 AS Decimal(10, 2)), 20)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (21, N'Садовые грабли', CAST(500.00 AS Decimal(10, 2)), 21)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (22, N'Мяч футбольный', CAST(1000.00 AS Decimal(10, 2)), 22)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (23, N'Книга "Приключения"', CAST(400.00 AS Decimal(10, 2)), 23)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (24, N'Сувенирная кружка', CAST(250.00 AS Decimal(10, 2)), 24)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (25, N'Лестница стремянка', CAST(2000.00 AS Decimal(10, 2)), 25)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (26, N'Лампа настольная', CAST(800.00 AS Decimal(10, 2)), 26)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (27, N'Краска акриловая', CAST(300.00 AS Decimal(10, 2)), 27)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (28, N'Автомобильное масло', CAST(1500.00 AS Decimal(10, 2)), 28)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (29, N'Корм для кошек "Мурзик"', CAST(600.00 AS Decimal(10, 2)), 29)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (30, N'Новогодняя гирлянда', CAST(500.00 AS Decimal(10, 2)), 30)
GO
SET IDENTITY_INSERT [dbo].[Sale] ON 

INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (2, 1, CAST(N'2025-03-09' AS Date), CAST(1000.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (3, 1, CAST(N'2025-03-09' AS Date), CAST(1000.00 AS Decimal(10, 2)), 50, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (4, 2, CAST(N'2025-03-09' AS Date), CAST(2000.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (5, 1, CAST(N'2025-03-08' AS Date), CAST(2000.00 AS Decimal(10, 2)), 67, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (6, 2, CAST(N'2025-03-08' AS Date), CAST(2000.00 AS Decimal(10, 2)), 67, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (7, 2, CAST(N'2025-03-07' AS Date), CAST(3000.00 AS Decimal(10, 2)), 67, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (8, 1, CAST(N'2025-03-07' AS Date), CAST(3000.00 AS Decimal(10, 2)), 67, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (9, 1, CAST(N'2025-03-06' AS Date), CAST(3000.00 AS Decimal(10, 2)), 100, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (10, 2, CAST(N'2025-03-06' AS Date), CAST(800.00 AS Decimal(10, 2)), 100, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (11, 1, CAST(N'2025-03-05' AS Date), CAST(500.00 AS Decimal(10, 2)), 32, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (12, 1, CAST(N'2025-03-05' AS Date), CAST(80.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (13, 1, CAST(N'2025-03-04' AS Date), CAST(120.00 AS Decimal(10, 2)), 2, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (14, 1, CAST(N'2025-03-03' AS Date), CAST(150.00 AS Decimal(10, 2)), 7, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (15, 2, CAST(N'2025-03-02' AS Date), CAST(300.00 AS Decimal(10, 2)), 8, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (16, 2, CAST(N'2025-03-01' AS Date), CAST(400.00 AS Decimal(10, 2)), 13, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (17, 2, CAST(N'2025-02-28' AS Date), CAST(15000.00 AS Decimal(10, 2)), 14, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (18, 1, CAST(N'2025-02-27' AS Date), CAST(2500.00 AS Decimal(10, 2)), 19, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (19, 2, CAST(N'2025-02-26' AS Date), CAST(2000.00 AS Decimal(10, 2)), 20, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (20, 2, CAST(N'2025-02-25' AS Date), CAST(3500.00 AS Decimal(10, 2)), 25, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (21, 1, CAST(N'2025-02-24' AS Date), CAST(800.00 AS Decimal(10, 2)), 26, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (22, 1, CAST(N'2025-02-23' AS Date), CAST(25000.00 AS Decimal(10, 2)), 31, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (23, 1, CAST(N'2025-02-22' AS Date), CAST(1500.00 AS Decimal(10, 2)), 32, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (24, 2, CAST(N'2025-02-21' AS Date), CAST(700.00 AS Decimal(10, 2)), 37, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (25, 1, CAST(N'2025-02-20' AS Date), CAST(1200.00 AS Decimal(10, 2)), 38, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (26, 2, CAST(N'2025-02-19' AS Date), CAST(200.00 AS Decimal(10, 2)), 43, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (27, 2, CAST(N'2025-02-18' AS Date), CAST(1000.00 AS Decimal(10, 2)), 44, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (28, 1, CAST(N'2025-02-17' AS Date), CAST(1500.00 AS Decimal(10, 2)), 49, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (29, 1, CAST(N'2025-02-16' AS Date), CAST(50.00 AS Decimal(10, 2)), 50, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (30, 1, CAST(N'2025-02-15' AS Date), CAST(3000.00 AS Decimal(10, 2)), 55, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (31, 2, CAST(N'2025-02-14' AS Date), CAST(300.00 AS Decimal(10, 2)), 56, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (32, 2, CAST(N'2025-02-13' AS Date), CAST(500.00 AS Decimal(10, 2)), 61, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (33, 2, CAST(N'2025-02-12' AS Date), CAST(1000.00 AS Decimal(10, 2)), 62, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (34, 1, CAST(N'2025-02-11' AS Date), CAST(400.00 AS Decimal(10, 2)), 67, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (35, 1, CAST(N'2025-02-10' AS Date), CAST(250.00 AS Decimal(10, 2)), 68, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (36, 1, CAST(N'2025-03-05' AS Date), CAST(300.00 AS Decimal(10, 2)), 56, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (37, 1, CAST(N'2025-03-05' AS Date), CAST(500.00 AS Decimal(10, 2)), 61, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (38, 1, CAST(N'2025-03-03' AS Date), CAST(1000.00 AS Decimal(10, 2)), 62, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (39, 2, CAST(N'2025-03-02' AS Date), CAST(400.00 AS Decimal(10, 2)), 67, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (40, 2, CAST(N'2025-03-01' AS Date), CAST(250.00 AS Decimal(10, 2)), 68, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (41, 2, CAST(N'2025-02-28' AS Date), CAST(80.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (42, 1, CAST(N'2025-02-27' AS Date), CAST(120.00 AS Decimal(10, 2)), 2, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (43, 2, CAST(N'2025-02-26' AS Date), CAST(150.00 AS Decimal(10, 2)), 7, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (44, 2, CAST(N'2025-02-25' AS Date), CAST(300.00 AS Decimal(10, 2)), 8, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (45, 1, CAST(N'2025-02-25' AS Date), CAST(400.00 AS Decimal(10, 2)), 13, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (46, 1, CAST(N'2025-02-25' AS Date), CAST(200.00 AS Decimal(10, 2)), 43, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (47, 1, CAST(N'2025-02-22' AS Date), CAST(1000.00 AS Decimal(10, 2)), 44, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (48, 2, CAST(N'2025-02-21' AS Date), CAST(1500.00 AS Decimal(10, 2)), 49, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (49, 1, CAST(N'2025-02-21' AS Date), CAST(50.00 AS Decimal(10, 2)), 50, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (50, 2, CAST(N'2025-02-19' AS Date), CAST(3000.00 AS Decimal(10, 2)), 55, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (51, 2, CAST(N'2025-02-18' AS Date), CAST(25000.00 AS Decimal(10, 2)), 31, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (52, 1, CAST(N'2025-02-17' AS Date), CAST(1500.00 AS Decimal(10, 2)), 32, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (53, 1, CAST(N'2025-02-16' AS Date), CAST(700.00 AS Decimal(10, 2)), 37, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (54, 1, CAST(N'2025-02-15' AS Date), CAST(1200.00 AS Decimal(10, 2)), 38, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (55, 2, CAST(N'2025-02-13' AS Date), CAST(15000.00 AS Decimal(10, 2)), 14, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (56, 2, CAST(N'2025-02-13' AS Date), CAST(2500.00 AS Decimal(10, 2)), 19, 1)
INSERT [dbo].[Sale] ([Id], [SaleTypeId], [Date], [TotalCost], [CashRegisterId], [EmployeeId]) VALUES (57, 2, CAST(N'2025-02-13' AS Date), CAST(2000.00 AS Decimal(10, 2)), 20, 1)
SET IDENTITY_INSERT [dbo].[Sale] OFF
GO
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (2, 22, 1, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (3, 22, 1, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (4, 22, 2, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (5, 8, 1, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (6, 25, 1, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (7, 19, 1, CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (8, 17, 2, CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (9, 12, 2, CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (10, 10, 1, CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (11, 30, 1, CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (12, 1, 1, CAST(80.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (13, 2, 1, CAST(120.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (14, 3, 1, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (15, 4, 1, CAST(300.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (16, 5, 1, CAST(400.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (17, 6, 1, CAST(15000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (18, 7, 1, CAST(2500.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (19, 8, 1, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (20, 9, 1, CAST(3500.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (21, 10, 1, CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (22, 11, 1, CAST(25000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (23, 12, 1, CAST(1500.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (24, 13, 1, CAST(700.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (25, 14, 1, CAST(1200.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (26, 15, 1, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (27, 16, 1, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (28, 17, 1, CAST(1500.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (29, 18, 1, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (30, 19, 1, CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (31, 20, 1, CAST(300.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (32, 21, 1, CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (33, 22, 1, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (34, 23, 1, CAST(400.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (35, 24, 1, CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (36, 1, 1, CAST(80.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (37, 2, 1, CAST(120.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (38, 3, 1, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (39, 4, 1, CAST(300.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (40, 5, 1, CAST(400.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (41, 6, 1, CAST(15000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (42, 7, 1, CAST(2500.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (43, 8, 1, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (44, 11, 1, CAST(25000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (45, 12, 1, CAST(1500.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (46, 13, 1, CAST(700.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (47, 14, 1, CAST(1200.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (48, 15, 1, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (49, 16, 1, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (50, 17, 1, CAST(1500.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (51, 18, 1, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (52, 19, 1, CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (53, 20, 1, CAST(300.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (54, 21, 1, CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (55, 22, 1, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (56, 23, 1, CAST(400.00 AS Decimal(10, 2)))
INSERT [dbo].[SaleProduct] ([SaleId], [ProductId], [Quantity], [TotalCost]) VALUES (57, 24, 1, CAST(250.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[SaleType] ([Id], [Name]) VALUES (1, N'Наличными')
INSERT [dbo].[SaleType] ([Id], [Name]) VALUES (2, N'Безналичными')
GO
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (1, N'МаркетПлюс: Городской', 1, N'ул. Центральная, д. 15')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (2, N'МаркетПлюс: Экспресс', 1, N'пр. Ленина, д. 45')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (3, N'Уютный Дом: Интерьеры', 2, N'ул. Садовая, д. 10')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (4, N'Уютный Дом: Текстиль', 2, N'ул. Парковая, д. 30')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (5, N'СтильМаркет: Одежда', 3, N'ТЦ "Галерея", ул. Торговая, д. 5')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (6, N'СтильМаркет: Аксессуары', 3, N'ул. Модная, д. 20')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (7, N'Товары&Ко: Универсам', 4, N'ул. Промышленная, д. 8')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (8, N'Товары&Ко: Домашний', 4, N'ул. Заречная, д. 12')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (9, N'Городской Базар: Продукты', 5, N'ул. Рынковая, д. 1')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (10, N'Городской Базар: Сувениры', 5, N'ул. Туристическая, д. 7')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (11, N'ЛайтШоп: Электроника', 6, N'ТЦ "Электроник", ул. Техническая, д. 3')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (12, N'ЛайтШоп: Гаджеты', 6, N'ул. Мира, д. 25')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (13, N'Простор Торг: Мебель', 7, N'ул. Мебельная, д. 18')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (14, N'Простор Торг: Декор', 7, N'ул. Дизайнерская, д. 9')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (15, N'ВесьДом: Хозтовары', 8, N'ул. Хозяйственная, д. 14')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (16, N'ВесьДом: Кухня', 8, N'ул. Кулинарная, д. 22')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (17, N'ЭкоЛавка: Органика', 9, N'ул. Зеленая, д. 6')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (18, N'ЭкоЛавка: Здоровье', 9, N'ул. Витаминная, д. 11')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (19, N'Семейный Выбор: Детский мир', 10, N'ул. Детская, д. 3')
INSERT [dbo].[Store] ([Id], [Name], [CompanyId], [Address]) VALUES (20, N'Семейный Выбор: Для дома', 10, N'ул. Семейная, д. 17')
GO
ALTER TABLE [dbo].[CashRegister]  WITH CHECK ADD  CONSTRAINT [FK_CashRegister_CashRegisterType] FOREIGN KEY([CashRegisterTypeId])
REFERENCES [dbo].[CashRegisterType] ([Id])
GO
ALTER TABLE [dbo].[CashRegister] CHECK CONSTRAINT [FK_CashRegister_CashRegisterType]
GO
ALTER TABLE [dbo].[CashRegister]  WITH CHECK ADD  CONSTRAINT [FK_CashRegister_Store] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Store] ([Id])
GO
ALTER TABLE [dbo].[CashRegister] CHECK CONSTRAINT [FK_CashRegister_Store]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_CashRegister] FOREIGN KEY([CashRegisterId])
REFERENCES [dbo].[CashRegister] ([Id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_CashRegister]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Employee]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_SaleType] FOREIGN KEY([SaleTypeId])
REFERENCES [dbo].[SaleType] ([Id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_SaleType]
GO
ALTER TABLE [dbo].[SaleProduct]  WITH CHECK ADD  CONSTRAINT [FK_SaleProduct_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[SaleProduct] CHECK CONSTRAINT [FK_SaleProduct_Product]
GO
ALTER TABLE [dbo].[SaleProduct]  WITH CHECK ADD  CONSTRAINT [FK_SaleProduct_Sale] FOREIGN KEY([SaleId])
REFERENCES [dbo].[Sale] ([Id])
GO
ALTER TABLE [dbo].[SaleProduct] CHECK CONSTRAINT [FK_SaleProduct_Sale]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Company]
GO
USE [master]
GO
ALTER DATABASE [AccountingAndSalesAnalysis] SET  READ_WRITE 
GO
