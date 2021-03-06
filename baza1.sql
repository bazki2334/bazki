USE [master]
GO
/****** Object:  Database [nowa]    Script Date: 14.05.2020 09:42:33 ******/
CREATE DATABASE [nowa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'nowa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\nowa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'nowa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\nowa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [nowa] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [nowa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [nowa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [nowa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [nowa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [nowa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [nowa] SET ARITHABORT OFF 
GO
ALTER DATABASE [nowa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [nowa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [nowa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [nowa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [nowa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [nowa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [nowa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [nowa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [nowa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [nowa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [nowa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [nowa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [nowa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [nowa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [nowa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [nowa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [nowa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [nowa] SET RECOVERY FULL 
GO
ALTER DATABASE [nowa] SET  MULTI_USER 
GO
ALTER DATABASE [nowa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [nowa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [nowa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [nowa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [nowa] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'nowa', N'ON'
GO
ALTER DATABASE [nowa] SET QUERY_STORE = OFF
GO
USE [nowa]
GO
/****** Object:  Table [dbo].[Atrakcja]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atrakcja](
	[id] [int] NOT NULL,
	[nazwa] [nchar](30) NULL,
	[id_typAtrakcji] [int] NULL,
	[id_miasto] [int] NULL,
	[cena_wstep_d] [decimal](18, 0) NULL,
	[cena_wstep_dz] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Atrakcja] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Atrakcje_program]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atrakcje_program](
	[nr_dnia] [int] NOT NULL,
	[id_oferta] [int] NOT NULL,
	[id_atrakcje] [int] NOT NULL,
	[cena_wstepu_dz] [decimal](18, 0) NULL,
	[cena_wstepu_d] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Atrakcje_program_1] PRIMARY KEY CLUSTERED 
(
	[nr_dnia] ASC,
	[id_oferta] ASC,
	[id_atrakcje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Biuro]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Biuro](
	[id] [int] NOT NULL,
	[nazwa] [nchar](20) NULL,
	[ulica] [nchar](10) NULL,
	[nr_tel] [int] NULL,
	[id_miasto] [int] NULL,
 CONSTRAINT [PK_Biuro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[biuroP]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[biuroP](
	[column1] [nvarchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grafik]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grafik](
	[id_Pracownika] [int] NOT NULL,
	[godzina_roz] [time](7) NULL,
	[godzina_zak] [time](7) NULL,
	[Data_] [date] NOT NULL,
 CONSTRAINT [PK_Grafik] PRIMARY KEY CLUSTERED 
(
	[id_Pracownika] ASC,
	[Data_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klienci]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klienci](
	[id_umowa] [int] NOT NULL,
	[id_klient] [int] NOT NULL,
 CONSTRAINT [PK_Klienci] PRIMARY KEY CLUSTERED 
(
	[id_umowa] ASC,
	[id_klient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klient]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klient](
	[id] [int] NOT NULL,
	[imie] [nchar](50) NULL,
	[nazwisko] [nchar](50) NULL,
	[nr_telefonu] [int] NULL,
	[nr_paszportu] [nchar](50) NULL,
 CONSTRAINT [PK_Klient] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kontynent]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kontynent](
	[id] [int] NOT NULL,
	[nazwa] [nchar](20) NULL,
 CONSTRAINT [PK_Kontynent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Miasto]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Miasto](
	[id] [int] NOT NULL,
	[id_region] [int] NULL,
	[nazwa] [nchar](30) NULL,
 CONSTRAINT [PK_Miasto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oferta]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oferta](
	[id] [int] NOT NULL,
	[id_typWyzywienia] [int] NULL,
	[nazwa] [nchar](30) NULL,
	[id_typOferty] [int] NULL,
 CONSTRAINT [PK_Oferta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oferty_wPanstwie]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oferty_wPanstwie](
	[id_oferty] [int] NOT NULL,
	[id_panstwa] [int] NOT NULL,
 CONSTRAINT [PK_Oferty_wPanstwie] PRIMARY KEY CLUSTERED 
(
	[id_oferty] ASC,
	[id_panstwa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Panstwo]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Panstwo](
	[id] [int] NOT NULL,
	[id_kontynent] [int] NULL,
	[nazwa] [nchar](20) NULL,
 CONSTRAINT [PK_Panstwo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pracownik]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pracownik](
	[id] [int] NOT NULL,
	[imie] [nchar](20) NULL,
	[nazwisko] [nchar](30) NULL,
	[id_biura] [int] NULL,
 CONSTRAINT [PK_Pracownik] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Program_oferty]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Program_oferty](
	[nr_dnia] [int] NOT NULL,
	[id_typTransportu] [int] NULL,
	[id_typNoclegu] [int] NULL,
	[id_oferta] [int] NOT NULL,
 CONSTRAINT [PK_Program_oferty] PRIMARY KEY CLUSTERED 
(
	[nr_dnia] ASC,
	[id_oferta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[id] [int] NOT NULL,
	[id_panstwo] [int] NULL,
	[nazwa] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezerwacja]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezerwacja](
	[id] [int] NOT NULL,
	[id_oferty] [int] NULL,
	[data_tournusu] [date] NULL,
	[id_Pracownika] [int] NULL,
	[data_] [date] NULL,
	[id_klient] [int] NULL,
	[kwota_zaliczki] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Rezerwacja] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Terminy]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Terminy](
	[data_] [date] NOT NULL,
	[cena_dz] [decimal](18, 0) NULL,
	[cena_d] [decimal](18, 0) NULL,
	[id_oferta] [int] NOT NULL,
 CONSTRAINT [PK_Terminy_1] PRIMARY KEY CLUSTERED 
(
	[data_] ASC,
	[id_oferta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Typ_atrakcji]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Typ_atrakcji](
	[id] [int] NOT NULL,
	[nazwa] [nchar](30) NULL,
 CONSTRAINT [PK_Typ_atrakcji] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Typ_noclegu]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Typ_noclegu](
	[id] [int] NOT NULL,
	[nazwa] [nchar](30) NULL,
 CONSTRAINT [PK_Typ_noclegu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Typ_oferty]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Typ_oferty](
	[id] [int] NOT NULL,
	[nazwa] [nchar](40) NULL,
 CONSTRAINT [PK_Typ_oferty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Typ_transportu]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Typ_transportu](
	[id] [int] NOT NULL,
	[nazwa] [nchar](30) NULL,
 CONSTRAINT [PK_Typ_transportu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Typ_ubezpieczenia]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Typ_ubezpieczenia](
	[id] [int] NOT NULL,
	[nazwa] [nchar](15) NULL,
 CONSTRAINT [PK_Typ_ubezpieczenia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Typ_wyzywienia]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Typ_wyzywienia](
	[id] [int] NOT NULL,
	[nazwa] [nchar](30) NULL,
 CONSTRAINT [PK_Typ_wyzywienia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubez_uczest]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubez_uczest](
	[id_umowa] [int] NOT NULL,
	[id_klient] [int] NOT NULL,
	[id_typUbez] [int] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id_umowa] ASC,
	[id_klient] ASC,
	[id_typUbez] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubezpieczenia_oferta]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubezpieczenia_oferta](
	[id_typUbezpieczenia] [int] NOT NULL,
	[id_oferta] [int] NOT NULL,
	[cena] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Ubezpieczenia_oferta] PRIMARY KEY CLUSTERED 
(
	[id_typUbezpieczenia] ASC,
	[id_oferta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Umowa]    Script Date: 14.05.2020 09:42:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Umowa](
	[id_rezerwacji] [int] NOT NULL,
	[Data_] [date] NULL,
	[id_pracownika] [int] NULL,
	[kwota_umowa] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Umowa] PRIMARY KEY CLUSTERED 
(
	[id_rezerwacji] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[biuroP] ([column1]) VALUES (N'USE [master]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'GO')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Database [biuroPodrozy]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE DATABASE [biuroPodrozy]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONTAINMENT = NONE')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ON  PRIMARY')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'( NAME = N''biuroPodrozy'', FILENAME = N''C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\biuroPodrozy.mdf'' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'LOG ON')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'( NAME = N''biuroPodrozy_log'', FILENAME = N''C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\biuroPodrozy_log.ldf'' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'WITH CATALOG_COLLATION = DATABASE_DEFAULT')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET COMPATIBILITY_LEVEL = 150')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'IF (1 = FULLTEXTSERVICEPROPERTY(''IsFullTextInstalled''))')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'begin')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'EXEC [biuroPodrozy].[dbo].[sp_fulltext_database] @action = ''enable''')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'end')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET ANSI_NULL_DEFAULT OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET ANSI_NULLS OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET ANSI_PADDING OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET ANSI_WARNINGS OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET ARITHABORT OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET AUTO_CLOSE OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET AUTO_SHRINK OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET AUTO_UPDATE_STATISTICS ON')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET CURSOR_CLOSE_ON_COMMIT OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET CURSOR_DEFAULT  GLOBAL')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET CONCAT_NULL_YIELDS_NULL OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET NUMERIC_ROUNDABORT OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET QUOTED_IDENTIFIER OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET RECURSIVE_TRIGGERS OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET  DISABLE_BROKER')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET DATE_CORRELATION_OPTIMIZATION OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET TRUSTWORTHY OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET ALLOW_SNAPSHOT_ISOLATION OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET PARAMETERIZATION SIMPLE')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET READ_COMMITTED_SNAPSHOT OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET HONOR_BROKER_PRIORITY OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET RECOVERY FULL')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET  MULTI_USER')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET PAGE_VERIFY CHECKSUM')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET DB_CHAINING OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET TARGET_RECOVERY_TIME = 60 SECONDS')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET DELAYED_DURABILITY = DISABLED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'EXEC sys.sp_db_vardecimal_storage_format N''biuroPodrozy'', N''ON''')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET QUERY_STORE = OFF')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'USE [biuroPodrozy]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Atrakcja]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'SET ANSI_NULLS ON')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'SET QUOTED_IDENTIFIER ON')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Atrakcja](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nazwa] [nchar](30) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_typAtrakcji] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_miasto] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[cena_wstep_d] [decimal](18, 0) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[cena_wstep_dz] [decimal](18, 0) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Atrakcja] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'(')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id] ASC')
INSERT [dbo].[biuroP] ([column1]) VALUES (N')WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N') ON [PRIMARY]')
GO
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Atrakcje_program]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'SET ANSI_NULLS ON')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'GO')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'SET QUOTED_IDENTIFIER ON')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Atrakcje_program](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nr_dnia] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_oferta] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_atrakcje] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[cena_wstepu_dz] [decimal](18, 0) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[cena_wstepu_d] [decimal](18, 0) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Atrakcje_program_1] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'(')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nr_dnia] ASC,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_oferta] ASC,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_atrakcje] ASC')
INSERT [dbo].[biuroP] ([column1]) VALUES (N')WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N') ON [PRIMARY]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Biuro]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Biuro](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nazwa] [nchar](20) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[ulica] [nchar](10) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nr_tel] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_miasto] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Biuro] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id] ASC')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Grafik]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Grafik](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_Pracownika] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[godzina_roz] [time](7) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[godzina_zak] [time](7) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[Data] [date] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Grafik] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_Pracownika] ASC,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[Data] ASC')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Klient]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Klient](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[imie] [nchar](50) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nazwisko] [nchar](50) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nr_telefonu] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nr_paszportu] [nchar](50) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Klient] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Kontynent]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Kontynent](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Kontynent] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Miasto]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Miasto](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_region] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nazwa] [nchar](30) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Miasto] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Oferta]    Script Date: 28.04.2020 12:21:08 ******/')
GO
INSERT [dbo].[biuroP] ([column1]) VALUES (N'SET ANSI_NULLS ON')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'GO')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'SET QUOTED_IDENTIFIER ON')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Oferta](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_typWyzywienia] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nazwa] [nchar](30) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_typOferty] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Oferta] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'(')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id] ASC')
INSERT [dbo].[biuroP] ([column1]) VALUES (N')WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N') ON [PRIMARY]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Oferty_wPanstwie]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Oferty_wPanstwie](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_oferty] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_panstwa] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Oferty_wPanstwie] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_oferty] ASC,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_panstwa] ASC')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Panstwo]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Panstwo](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_kontynent] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nazwa] [nchar](20) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Panstwo] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Pracownik]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Pracownik](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[imie] [nchar](20) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nazwisko] [nchar](30) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_biura] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Pracownik] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Program_oferty]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Program_oferty](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nr_dnia] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_typTransportu] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_typNoclegu] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_oferta] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Program_oferty] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nr_dnia] ASC,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_oferta] ASC')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Region]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Region](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_panstwo] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nazwa] [nchar](30) NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Rezerwacja]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Rezerwacja](')
GO
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_oferty] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[data_tournusu] [date] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_Pracownika] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[Data] [date] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_klient] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[kwota_zaliczki] [decimal](18, 0) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Rezerwacja] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'(')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id] ASC')
INSERT [dbo].[biuroP] ([column1]) VALUES (N')WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N') ON [PRIMARY]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'GO')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Terminy]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'SET ANSI_NULLS ON')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'SET QUOTED_IDENTIFIER ON')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Terminy](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[Data] [date] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[cena_dz] [decimal](18, 0) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[cena_d] [decimal](18, 0) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_oferta] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Terminy_1] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[Data] ASC,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_oferta] ASC')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Typ_atrakcji]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Typ_atrakcji](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nazwa] [nchar](30) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Typ_atrakcji] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Typ_noclegu]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Typ_noclegu](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Typ_noclegu] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Typ_oferty]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Typ_oferty](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nazwa] [nchar](40) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Typ_oferty] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Typ_transportu]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Typ_transportu](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Typ_transportu] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Typ_ubezpieczenia]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Typ_ubezpieczenia](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nazwa] [nchar](15) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Typ_ubezpieczenia] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Typ_wyzywienia]    Script Date: 28.04.2020 12:21:08 ******/')
GO
INSERT [dbo].[biuroP] ([column1]) VALUES (N'SET ANSI_NULLS ON')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'GO')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'SET QUOTED_IDENTIFIER ON')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Typ_wyzywienia](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[nazwa] [nchar](30) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Typ_wyzywienia] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'(')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id] ASC')
INSERT [dbo].[biuroP] ([column1]) VALUES (N')WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N') ON [PRIMARY]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Ubezpieczenia_oferta]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Ubezpieczenia_oferta](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_typUbezpieczenia] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_oferta] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[cena] [decimal](18, 0) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Ubezpieczenia_oferta] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_typUbezpieczenia] ASC,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_oferta] ASC')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Ubezpieczenie_uczestnikow]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Ubezpieczenie_uczestnikow](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_klient] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_umowa] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Ubezpieczenie_uczestnikow_1] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_klient] ASC,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_umowa] ASC,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_typUbezpieczenia] ASC')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Uczestnicy]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Uczestnicy](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Uczestnicy] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_klient] ASC')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'/****** Object:  Table [dbo].[Umowa]    Script Date: 28.04.2020 12:21:08 ******/')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CREATE TABLE [dbo].[Umowa](')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_rezerwacji] [int] NOT NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[Data] [date] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_pracownika] [int] NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[kwota_umowa] [decimal](18, 0) NULL,')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'CONSTRAINT [PK_Umowa] PRIMARY KEY CLUSTERED')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'[id_rezerwacji] ASC')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Atrakcja]  WITH CHECK ADD  CONSTRAINT [FK_Atrakcja_Miasto] FOREIGN KEY([id_miasto])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Miasto] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Atrakcja] CHECK CONSTRAINT [FK_Atrakcja_Miasto]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Atrakcja]  WITH CHECK ADD  CONSTRAINT [FK_Atrakcja_Typ_atrakcji] FOREIGN KEY([id_typAtrakcji])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Typ_atrakcji] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Atrakcja] CHECK CONSTRAINT [FK_Atrakcja_Typ_atrakcji]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Atrakcje_program]  WITH CHECK ADD  CONSTRAINT [FK_Atrakcje_program_Atrakcja] FOREIGN KEY([id_atrakcje])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Atrakcja] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Atrakcje_program] CHECK CONSTRAINT [FK_Atrakcje_program_Atrakcja]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Atrakcje_program]  WITH CHECK ADD  CONSTRAINT [FK_Atrakcje_program_Atrakcje_program1] FOREIGN KEY([nr_dnia], [id_oferta])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Program_oferty] ([nr_dnia], [id_oferta])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Atrakcje_program] CHECK CONSTRAINT [FK_Atrakcje_program_Atrakcje_program1]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Biuro]  WITH CHECK ADD  CONSTRAINT [FK_Biuro_Miasto] FOREIGN KEY([id_miasto])')
GO
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Biuro] CHECK CONSTRAINT [FK_Biuro_Miasto]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'GO')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Grafik]  WITH CHECK ADD  CONSTRAINT [FK_Grafik_Pracownik] FOREIGN KEY([id_Pracownika])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Pracownik] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Grafik] CHECK CONSTRAINT [FK_Grafik_Pracownik]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Miasto]  WITH CHECK ADD  CONSTRAINT [FK_Miasto_Region] FOREIGN KEY([id_region])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Region] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Miasto] CHECK CONSTRAINT [FK_Miasto_Region]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Oferta]  WITH CHECK ADD  CONSTRAINT [FK_Oferta_Typ_oferty] FOREIGN KEY([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Typ_oferty] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Oferta] CHECK CONSTRAINT [FK_Oferta_Typ_oferty]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Oferta]  WITH CHECK ADD  CONSTRAINT [FK_Oferta_Typ_wyzywienia] FOREIGN KEY([id_typWyzywienia])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Typ_wyzywienia] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Oferta] CHECK CONSTRAINT [FK_Oferta_Typ_wyzywienia]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Oferty_wPanstwie]  WITH CHECK ADD  CONSTRAINT [FK_Oferty_wPanstwie_Oferta] FOREIGN KEY([id_oferty])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Oferta] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Oferty_wPanstwie] CHECK CONSTRAINT [FK_Oferty_wPanstwie_Oferta]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Oferty_wPanstwie]  WITH CHECK ADD  CONSTRAINT [FK_Oferty_wPanstwie_Panstwo] FOREIGN KEY([id_panstwa])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Panstwo] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Oferty_wPanstwie] CHECK CONSTRAINT [FK_Oferty_wPanstwie_Panstwo]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Panstwo]  WITH CHECK ADD  CONSTRAINT [FK_Panstwo_Kontynent] FOREIGN KEY([id_kontynent])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Kontynent] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Panstwo] CHECK CONSTRAINT [FK_Panstwo_Kontynent]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Pracownik]  WITH CHECK ADD  CONSTRAINT [FK_Pracownik_Biuro] FOREIGN KEY([id_biura])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Biuro] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Pracownik] CHECK CONSTRAINT [FK_Pracownik_Biuro]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Program_oferty]  WITH CHECK ADD  CONSTRAINT [FK_Program_oferty_Oferta] FOREIGN KEY([id_oferta])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Program_oferty] CHECK CONSTRAINT [FK_Program_oferty_Oferta]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Program_oferty]  WITH CHECK ADD  CONSTRAINT [FK_Program_oferty_Typ_noclegu] FOREIGN KEY([id_typNoclegu])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Typ_noclegu] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Program_oferty] CHECK CONSTRAINT [FK_Program_oferty_Typ_noclegu]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Program_oferty]  WITH CHECK ADD  CONSTRAINT [FK_Program_oferty_Typ_transportu] FOREIGN KEY([id_typTransportu])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Typ_transportu] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Program_oferty] CHECK CONSTRAINT [FK_Program_oferty_Typ_transportu]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_Panstwo] FOREIGN KEY([id_panstwo])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_Panstwo]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Rezerwacja]  WITH CHECK ADD  CONSTRAINT [FK_Rezerwacja_Grafik] FOREIGN KEY([id_Pracownika], [Data])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Grafik] ([id_Pracownika], [Data])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Rezerwacja] CHECK CONSTRAINT [FK_Rezerwacja_Grafik]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Rezerwacja]  WITH CHECK ADD  CONSTRAINT [FK_Rezerwacja_Rezerwacja] FOREIGN KEY([id_klient])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Klient] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Rezerwacja] CHECK CONSTRAINT [FK_Rezerwacja_Rezerwacja]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Rezerwacja]  WITH CHECK ADD  CONSTRAINT [FK_Rezerwacja_Terminy] FOREIGN KEY([data_tournusu], [id_oferty])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Terminy] ([Data], [id_oferta])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Rezerwacja] CHECK CONSTRAINT [FK_Rezerwacja_Terminy]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Terminy]  WITH CHECK ADD  CONSTRAINT [FK_Terminy_Oferta] FOREIGN KEY([id_oferta])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Terminy] CHECK CONSTRAINT [FK_Terminy_Oferta]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Ubezpieczenia_oferta]  WITH CHECK ADD  CONSTRAINT [FK_Ubezpieczenia_oferta_Oferta] FOREIGN KEY([id_oferta])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Ubezpieczenia_oferta] CHECK CONSTRAINT [FK_Ubezpieczenia_oferta_Oferta]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Ubezpieczenia_oferta]  WITH CHECK ADD  CONSTRAINT [FK_Ubezpieczenia_oferta_Oferta1] FOREIGN KEY([id_oferta])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Ubezpieczenia_oferta] CHECK CONSTRAINT [FK_Ubezpieczenia_oferta_Oferta1]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Ubezpieczenia_oferta]  WITH CHECK ADD  CONSTRAINT [FK_Ubezpieczenia_oferta_Typ_ubezpieczenia] FOREIGN KEY([id_typUbezpieczenia])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Typ_ubezpieczenia] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Ubezpieczenia_oferta] CHECK CONSTRAINT [FK_Ubezpieczenia_oferta_Typ_ubezpieczenia]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Ubezpieczenia_oferta]  WITH CHECK ADD  CONSTRAINT [FK_Ubezpieczenia_oferta_Typ_ubezpieczenia1] FOREIGN KEY([id_typUbezpieczenia])')
GO
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Ubezpieczenia_oferta] CHECK CONSTRAINT [FK_Ubezpieczenia_oferta_Typ_ubezpieczenia1]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'GO')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Ubezpieczenie_uczestnikow]  WITH CHECK ADD  CONSTRAINT [FK_Ubezpieczenie_uczestnikow_Typ_ubezpieczenia] FOREIGN KEY([id_typUbezpieczenia])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Typ_ubezpieczenia] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Ubezpieczenie_uczestnikow] CHECK CONSTRAINT [FK_Ubezpieczenie_uczestnikow_Typ_ubezpieczenia]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Uczestnicy]  WITH CHECK ADD  CONSTRAINT [FK_Uczestnicy_Klient] FOREIGN KEY([id_klient])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Klient] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Uczestnicy] CHECK CONSTRAINT [FK_Uczestnicy_Klient]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Uczestnicy]  WITH CHECK ADD  CONSTRAINT [FK_Uczestnicy_Umowa] FOREIGN KEY([id_umowa])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Umowa] ([id_rezerwacji])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Uczestnicy] CHECK CONSTRAINT [FK_Uczestnicy_Umowa]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Umowa]  WITH CHECK ADD  CONSTRAINT [FK_Umowa_Grafik] FOREIGN KEY([id_pracownika], [Data])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Grafik] ([id_Pracownika], [Data])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Umowa] CHECK CONSTRAINT [FK_Umowa_Grafik]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Umowa]  WITH CHECK ADD  CONSTRAINT [FK_Umowa_Rezerwacja] FOREIGN KEY([id_rezerwacji])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'REFERENCES [dbo].[Rezerwacja] ([id])')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER TABLE [dbo].[Umowa] CHECK CONSTRAINT [FK_Umowa_Rezerwacja]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'USE [master]')
INSERT [dbo].[biuroP] ([column1]) VALUES (N'ALTER DATABASE [biuroPodrozy] SET  READ_WRITE')
GO
ALTER TABLE [dbo].[Atrakcja]  WITH CHECK ADD  CONSTRAINT [FK_Atrakcja_Miasto] FOREIGN KEY([id_miasto])
REFERENCES [dbo].[Miasto] ([id])
GO
ALTER TABLE [dbo].[Atrakcja] CHECK CONSTRAINT [FK_Atrakcja_Miasto]
GO
ALTER TABLE [dbo].[Atrakcja]  WITH CHECK ADD  CONSTRAINT [FK_Atrakcja_Typ_atrakcji] FOREIGN KEY([id_typAtrakcji])
REFERENCES [dbo].[Typ_atrakcji] ([id])
GO
ALTER TABLE [dbo].[Atrakcja] CHECK CONSTRAINT [FK_Atrakcja_Typ_atrakcji]
GO
ALTER TABLE [dbo].[Atrakcje_program]  WITH CHECK ADD  CONSTRAINT [FK_Atrakcje_program_Atrakcja] FOREIGN KEY([id_atrakcje])
REFERENCES [dbo].[Atrakcja] ([id])
GO
ALTER TABLE [dbo].[Atrakcje_program] CHECK CONSTRAINT [FK_Atrakcje_program_Atrakcja]
GO
ALTER TABLE [dbo].[Atrakcje_program]  WITH CHECK ADD  CONSTRAINT [FK_Atrakcje_program_Atrakcje_program1] FOREIGN KEY([nr_dnia], [id_oferta])
REFERENCES [dbo].[Program_oferty] ([nr_dnia], [id_oferta])
GO
ALTER TABLE [dbo].[Atrakcje_program] CHECK CONSTRAINT [FK_Atrakcje_program_Atrakcje_program1]
GO
ALTER TABLE [dbo].[Biuro]  WITH CHECK ADD  CONSTRAINT [FK_Biuro_Miasto] FOREIGN KEY([id_miasto])
REFERENCES [dbo].[Miasto] ([id])
GO
ALTER TABLE [dbo].[Biuro] CHECK CONSTRAINT [FK_Biuro_Miasto]
GO
ALTER TABLE [dbo].[Grafik]  WITH CHECK ADD  CONSTRAINT [FK_Grafik_Pracownik] FOREIGN KEY([id_Pracownika])
REFERENCES [dbo].[Pracownik] ([id])
GO
ALTER TABLE [dbo].[Grafik] CHECK CONSTRAINT [FK_Grafik_Pracownik]
GO
ALTER TABLE [dbo].[Klienci]  WITH CHECK ADD  CONSTRAINT [FK_Klienci_Klienci] FOREIGN KEY([id_umowa])
REFERENCES [dbo].[Umowa] ([id_rezerwacji])
GO
ALTER TABLE [dbo].[Klienci] CHECK CONSTRAINT [FK_Klienci_Klienci]
GO
ALTER TABLE [dbo].[Klienci]  WITH CHECK ADD  CONSTRAINT [FK_Klienci_Klienci1] FOREIGN KEY([id_klient])
REFERENCES [dbo].[Klient] ([id])
GO
ALTER TABLE [dbo].[Klienci] CHECK CONSTRAINT [FK_Klienci_Klienci1]
GO
ALTER TABLE [dbo].[Miasto]  WITH CHECK ADD  CONSTRAINT [FK_Miasto_Region] FOREIGN KEY([id_region])
REFERENCES [dbo].[Region] ([id])
GO
ALTER TABLE [dbo].[Miasto] CHECK CONSTRAINT [FK_Miasto_Region]
GO
ALTER TABLE [dbo].[Oferta]  WITH CHECK ADD  CONSTRAINT [FK_Oferta_Typ_oferty] FOREIGN KEY([id])
REFERENCES [dbo].[Typ_oferty] ([id])
GO
ALTER TABLE [dbo].[Oferta] CHECK CONSTRAINT [FK_Oferta_Typ_oferty]
GO
ALTER TABLE [dbo].[Oferta]  WITH CHECK ADD  CONSTRAINT [FK_Oferta_Typ_wyzywienia] FOREIGN KEY([id_typWyzywienia])
REFERENCES [dbo].[Typ_wyzywienia] ([id])
GO
ALTER TABLE [dbo].[Oferta] CHECK CONSTRAINT [FK_Oferta_Typ_wyzywienia]
GO
ALTER TABLE [dbo].[Oferty_wPanstwie]  WITH CHECK ADD  CONSTRAINT [FK_Oferty_wPanstwie_Oferta] FOREIGN KEY([id_oferty])
REFERENCES [dbo].[Oferta] ([id])
GO
ALTER TABLE [dbo].[Oferty_wPanstwie] CHECK CONSTRAINT [FK_Oferty_wPanstwie_Oferta]
GO
ALTER TABLE [dbo].[Oferty_wPanstwie]  WITH CHECK ADD  CONSTRAINT [FK_Oferty_wPanstwie_Panstwo] FOREIGN KEY([id_panstwa])
REFERENCES [dbo].[Panstwo] ([id])
GO
ALTER TABLE [dbo].[Oferty_wPanstwie] CHECK CONSTRAINT [FK_Oferty_wPanstwie_Panstwo]
GO
ALTER TABLE [dbo].[Panstwo]  WITH CHECK ADD  CONSTRAINT [FK_Panstwo_Kontynent] FOREIGN KEY([id_kontynent])
REFERENCES [dbo].[Kontynent] ([id])
GO
ALTER TABLE [dbo].[Panstwo] CHECK CONSTRAINT [FK_Panstwo_Kontynent]
GO
ALTER TABLE [dbo].[Pracownik]  WITH CHECK ADD  CONSTRAINT [FK_Pracownik_Biuro] FOREIGN KEY([id_biura])
REFERENCES [dbo].[Biuro] ([id])
GO
ALTER TABLE [dbo].[Pracownik] CHECK CONSTRAINT [FK_Pracownik_Biuro]
GO
ALTER TABLE [dbo].[Program_oferty]  WITH CHECK ADD  CONSTRAINT [FK_Program_oferty_Oferta] FOREIGN KEY([id_oferta])
REFERENCES [dbo].[Oferta] ([id])
GO
ALTER TABLE [dbo].[Program_oferty] CHECK CONSTRAINT [FK_Program_oferty_Oferta]
GO
ALTER TABLE [dbo].[Program_oferty]  WITH CHECK ADD  CONSTRAINT [FK_Program_oferty_Typ_noclegu] FOREIGN KEY([id_typNoclegu])
REFERENCES [dbo].[Typ_noclegu] ([id])
GO
ALTER TABLE [dbo].[Program_oferty] CHECK CONSTRAINT [FK_Program_oferty_Typ_noclegu]
GO
ALTER TABLE [dbo].[Program_oferty]  WITH CHECK ADD  CONSTRAINT [FK_Program_oferty_Typ_transportu] FOREIGN KEY([id_typTransportu])
REFERENCES [dbo].[Typ_transportu] ([id])
GO
ALTER TABLE [dbo].[Program_oferty] CHECK CONSTRAINT [FK_Program_oferty_Typ_transportu]
GO
ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_Panstwo] FOREIGN KEY([id_panstwo])
REFERENCES [dbo].[Panstwo] ([id])
GO
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_Panstwo]
GO
ALTER TABLE [dbo].[Rezerwacja]  WITH CHECK ADD  CONSTRAINT [FK_Rezerwacja_Grafik] FOREIGN KEY([id_Pracownika], [data_])
REFERENCES [dbo].[Grafik] ([id_Pracownika], [Data_])
GO
ALTER TABLE [dbo].[Rezerwacja] CHECK CONSTRAINT [FK_Rezerwacja_Grafik]
GO
ALTER TABLE [dbo].[Rezerwacja]  WITH CHECK ADD  CONSTRAINT [FK_Rezerwacja_Rezerwacja] FOREIGN KEY([id_klient])
REFERENCES [dbo].[Klient] ([id])
GO
ALTER TABLE [dbo].[Rezerwacja] CHECK CONSTRAINT [FK_Rezerwacja_Rezerwacja]
GO
ALTER TABLE [dbo].[Rezerwacja]  WITH CHECK ADD  CONSTRAINT [FK_Rezerwacja_Terminy] FOREIGN KEY([data_tournusu], [id_oferty])
REFERENCES [dbo].[Terminy] ([data_], [id_oferta])
GO
ALTER TABLE [dbo].[Rezerwacja] CHECK CONSTRAINT [FK_Rezerwacja_Terminy]
GO
ALTER TABLE [dbo].[Terminy]  WITH CHECK ADD  CONSTRAINT [FK_Terminy_Oferta] FOREIGN KEY([id_oferta])
REFERENCES [dbo].[Oferta] ([id])
GO
ALTER TABLE [dbo].[Terminy] CHECK CONSTRAINT [FK_Terminy_Oferta]
GO
ALTER TABLE [dbo].[Ubez_uczest]  WITH CHECK ADD  CONSTRAINT [FK_Ubez_uczest_Klienci] FOREIGN KEY([id_umowa], [id_klient])
REFERENCES [dbo].[Klienci] ([id_umowa], [id_klient])
GO
ALTER TABLE [dbo].[Ubez_uczest] CHECK CONSTRAINT [FK_Ubez_uczest_Klienci]
GO
ALTER TABLE [dbo].[Ubez_uczest]  WITH CHECK ADD  CONSTRAINT [FK_Ubez_uczest_Typ_ubezpieczenia] FOREIGN KEY([id_typUbez])
REFERENCES [dbo].[Typ_ubezpieczenia] ([id])
GO
ALTER TABLE [dbo].[Ubez_uczest] CHECK CONSTRAINT [FK_Ubez_uczest_Typ_ubezpieczenia]
GO
ALTER TABLE [dbo].[Ubezpieczenia_oferta]  WITH CHECK ADD  CONSTRAINT [FK_Ubezpieczenia_oferta_Oferta] FOREIGN KEY([id_oferta])
REFERENCES [dbo].[Oferta] ([id])
GO
ALTER TABLE [dbo].[Ubezpieczenia_oferta] CHECK CONSTRAINT [FK_Ubezpieczenia_oferta_Oferta]
GO
ALTER TABLE [dbo].[Ubezpieczenia_oferta]  WITH CHECK ADD  CONSTRAINT [FK_Ubezpieczenia_oferta_Typ_ubezpieczenia] FOREIGN KEY([id_typUbezpieczenia])
REFERENCES [dbo].[Typ_ubezpieczenia] ([id])
GO
ALTER TABLE [dbo].[Ubezpieczenia_oferta] CHECK CONSTRAINT [FK_Ubezpieczenia_oferta_Typ_ubezpieczenia]
GO
ALTER TABLE [dbo].[Umowa]  WITH CHECK ADD  CONSTRAINT [FK_Umowa_Grafik] FOREIGN KEY([id_pracownika], [Data_])
REFERENCES [dbo].[Grafik] ([id_Pracownika], [Data_])
GO
ALTER TABLE [dbo].[Umowa] CHECK CONSTRAINT [FK_Umowa_Grafik]
GO
ALTER TABLE [dbo].[Umowa]  WITH CHECK ADD  CONSTRAINT [FK_Umowa_Rezerwacja] FOREIGN KEY([id_rezerwacji])
REFERENCES [dbo].[Rezerwacja] ([id])
GO
ALTER TABLE [dbo].[Umowa] CHECK CONSTRAINT [FK_Umowa_Rezerwacja]
GO
/****** Object:  Trigger [dbo].[Kontrola_Atrakcja]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Atrakcja]
ON [dbo].[Atrakcja]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_typAtrakcji FROM deleted
	if NOT exists(SELECT * FROM Atrakcja WHERE id_typAtrakcji=@id_p)
		DELETE FROM Typ_atrakcji WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Atrakcja] ENABLE TRIGGER [Kontrola_Atrakcja]
GO
/****** Object:  Trigger [dbo].[Kontrola_delete_atrakcja1]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create TRIGGER [dbo].[Kontrola_delete_atrakcja1]
ON [dbo].[Atrakcja]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_miasto FROM deleted
	if NOT exists(SELECT * FROM Atrakcja WHERE id_miasto=@id_p)
		DELETE FROM Miasto WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Atrakcja] ENABLE TRIGGER [Kontrola_delete_atrakcja1]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Atrakcja]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Atrakcja]
ON [dbo].[Atrakcja]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_typAtrakcji)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_typAtrakcji FROM deleted
			if NOT exists (SELECT * FROM Atrakcja WHERE id_typAtrakcji=@id)
				DELETE FROM Typ_atrakcji WHERE id=@id
	END
END
GO
ALTER TABLE [dbo].[Atrakcja] ENABLE TRIGGER [Kontrola_Update_Atrakcja]
GO
/****** Object:  Trigger [dbo].[Kontrola_delete_Atrakcje_Program]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_delete_Atrakcje_Program]
ON [dbo].[Atrakcje_program]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	DECLARE @id_p1 int
	SELECT @id_p=id_oferta FROM deleted
	SELECT @id_p1=nr_dnia FROM deleted

	if NOT exists(SELECT * FROM Atrakcje_program WHERE id_oferta=@id_p and nr_dnia=@id_p1)
		DELETE FROM Program_oferty WHERE id_oferta=@id_p and nr_dnia=@id_p1

	END
GO
ALTER TABLE [dbo].[Atrakcje_program] ENABLE TRIGGER [Kontrola_delete_Atrakcje_Program]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_AtrakcjeP]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_AtrakcjeP]
ON [dbo].[Atrakcje_program]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if (UPDATE (nr_dnia) OR UPDATE (id_oferta))
	  BEGIN
		DECLARE @id int
		DECLARE @id1 int
		SELECT @id=nr_dnia FROM deleted
		SELECT @id1=id_oferta FROM deleted
			if NOT exists (SELECT * FROM Atrakcje_program WHERE nr_dnia=@id and id_oferta=@id1)
				DELETE FROM Program_oferty WHERE nr_dnia=@id and id_oferta=@id1
	END
END
GO
ALTER TABLE [dbo].[Atrakcje_program] ENABLE TRIGGER [Kontrola_Update_AtrakcjeP]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_Biuro]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_Biuro]
ON [dbo].[Biuro]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Biura',16,10);
GO
ALTER TABLE [dbo].[Biuro] ENABLE TRIGGER [Blokuj_insert_Biuro]
GO
/****** Object:  Trigger [dbo].[Kontrola_delete_Grafik]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_delete_Grafik]
ON [dbo].[Grafik]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_Pracownika FROM deleted
	if NOT exists(SELECT * FROM Grafik WHERE id_Pracownika=@id_p)
		DELETE FROM Pracownik WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Grafik] ENABLE TRIGGER [Kontrola_delete_Grafik]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Grafik]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Grafik]
ON [dbo].[Grafik]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if (UPDATE (id_pracownika))
	  BEGIN
		DECLARE @id int
		SELECT @id=id_Pracownika FROM deleted
			if NOT exists (SELECT * FROM Grafik WHERE id_Pracownika=@id )
				DELETE FROM Pracownik WHERE id=@id
	END
END
GO
ALTER TABLE [dbo].[Grafik] ENABLE TRIGGER [Kontrola_Update_Grafik]
GO
/****** Object:  Trigger [dbo].[Kontrola_delete_Klienci]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_delete_Klienci]
ON [dbo].[Klienci]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_umowa FROM deleted
	if NOT exists(SELECT * FROM Klienci WHERE id_umowa=@id_p)
		DELETE FROM Umowa WHERE id_rezerwacji=@id_p

	END
GO
ALTER TABLE [dbo].[Klienci] ENABLE TRIGGER [Kontrola_delete_Klienci]
GO
/****** Object:  Trigger [dbo].[Kontrola_delete_Klienci1]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create TRIGGER [dbo].[Kontrola_delete_Klienci1]
ON [dbo].[Klienci]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_klient FROM deleted
	if NOT exists(SELECT * FROM Klienci WHERE id_klient=@id_p)
		DELETE FROM Klient WHERE id=@id_p

	END

GO
ALTER TABLE [dbo].[Klienci] ENABLE TRIGGER [Kontrola_delete_Klienci1]
GO
/****** Object:  Trigger [dbo].[Kontrola_insert_Klienci]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_insert_Klienci]
ON [dbo].[Klienci]
INSTEAD OF INSERT
AS
BEGIN 
	SET NOCOUNT ON;
	DECLARE @id_klient int
	DECLARE @id_umowa int
	Select  @id_klient=id_klient from inserted;
	Select  @id_umowa=id_umowa from inserted;
	

	if not exists(SELECT * from Umowa where id_rezerwacji=@id_umowa)
		Print 'umowa nie istnieje';
	ELSE
	BEGIN
		if NOT exists(SELECT * FROM Klient where id=@id_klient)
			Print 'nie mozna dodac'
	END
END
GO
ALTER TABLE [dbo].[Klienci] ENABLE TRIGGER [Kontrola_insert_Klienci]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Klienci]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create TRIGGER [dbo].[Kontrola_Update_Klienci]
ON [dbo].[Klienci]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_umowa)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_umowa FROM deleted
			if NOT exists (SELECT * FROM Klienci WHERE id_umowa=@id)
				DELETE FROM Umowa WHERE id_rezerwacji=@id
	END
END
GO
ALTER TABLE [dbo].[Klienci] ENABLE TRIGGER [Kontrola_Update_Klienci]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Klienci1]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Klienci1]
ON [dbo].[Klienci]
INSTEAD OF UPDATE
AS
BEGIN 
	SET NOCOUNT ON;
	if UPDATE(id_klient)
	BEGIN
	DECLARE @id_klient int
	DECLARE @id_umowa int
	Select  @id_klient=id_klient from inserted;
	Select  @id_umowa=id_umowa from inserted;
	

	if not exists(SELECT * from Umowa where id_rezerwacji=@id_umowa)
		Print 'umowa nie istnieje';
	ELSE
	BEGIN
		if NOT exists(SELECT * FROM Klient where id=@id_klient)
			Print 'nie mozna dodac'
		ELSE
			UPDATE Klienci set id_klient=@id_klient
	END
	END
END
GO
ALTER TABLE [dbo].[Klienci] ENABLE TRIGGER [Kontrola_Update_Klienci1]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert]
ON [dbo].[Klient]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Klienta',16,10);
GO
ALTER TABLE [dbo].[Klient] ENABLE TRIGGER [Blokuj_insert]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_Kontynent]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_Kontynent]
ON [dbo].[Kontynent]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Kontynentu',16,10);
GO
ALTER TABLE [dbo].[Kontynent] ENABLE TRIGGER [Blokuj_insert_Kontynent]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_Miasto]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_Miasto]
ON [dbo].[Miasto]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Miasta',16,10);
GO
ALTER TABLE [dbo].[Miasto] ENABLE TRIGGER [Blokuj_insert_Miasto]
GO
/****** Object:  Trigger [dbo].[Kontrola_Miasto]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Miasto]
ON [dbo].[Miasto]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_region FROM deleted
	if NOT exists(SELECT * FROM Miasto WHERE id_region=@id_p)
		DELETE FROM Region WHERE id=@id_p

	END

GO
ALTER TABLE [dbo].[Miasto] ENABLE TRIGGER [Kontrola_Miasto]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Miasto]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Miasto]
ON [dbo].[Miasto]
AFTER UPDATE
AS
BEGIN
       DECLARE @id int
       SELECT @id = id_region FROM inserted

       IF (NOT EXISTS(SELECT id FROM Region
                            WHERE id = @id))
              BEGIN
                     INSERT INTO Region
                     (id,id_panstwo,nazwa)
                     VALUES
                     (@id, 0, 0)
              END
END
GO
ALTER TABLE [dbo].[Miasto] ENABLE TRIGGER [Kontrola_Update_Miasto]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_Oferta]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_Oferta]
ON [dbo].[Oferta]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Oferty',16,10);
GO
ALTER TABLE [dbo].[Oferta] ENABLE TRIGGER [Blokuj_insert_Oferta]
GO
/****** Object:  Trigger [dbo].[Kontrola_Oferta]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Oferta]
ON [dbo].[Oferta]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id FROM deleted
	if NOT exists(SELECT * FROM Oferta WHERE id_typWyzywienia=@id_p)
		DELETE FROM Typ_wyzywienia WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Oferta] ENABLE TRIGGER [Kontrola_Oferta]
GO
/****** Object:  Trigger [dbo].[Kontrola_Oferta1]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Oferta1]
ON [dbo].[Oferta]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_typOferty FROM deleted
	if NOT exists(SELECT * FROM Oferta WHERE id_typOferty=@id_p)
		DELETE FROM Typ_oferty WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Oferta] ENABLE TRIGGER [Kontrola_Oferta1]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Oferta]    Script Date: 14.05.2020 09:42:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Oferta]
ON [dbo].[Oferta]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_typWyzywienia)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_typWyzywienia FROM deleted
			if NOT exists (SELECT * FROM Oferta WHERE id_typWyzywienia=@id)
				DELETE FROM Typ_wyzywienia WHERE id=@id
	END
END
GO
ALTER TABLE [dbo].[Oferta] ENABLE TRIGGER [Kontrola_Update_Oferta]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Oferta1]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Oferta1]
ON [dbo].[Oferta]
AFTER UPDATE
AS
Begin
	SET NOCOUNT ON
      if UPDATE(id_typOferty)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_typOferty FROM deleted
			if NOT exists (SELECT * FROM Oferta WHERE id_typOferty=@id)
				DELETE FROM Typ_oferty WHERE id=@id
	END
	End
GO
ALTER TABLE [dbo].[Oferta] ENABLE TRIGGER [Kontrola_Update_Oferta1]
GO
/****** Object:  Trigger [dbo].[Blokuj_delete_ofertywPanstwie]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create TRIGGER [dbo].[Blokuj_delete_ofertywPanstwie]
ON [dbo].[Oferty_wPanstwie]
INSTEAD OF DELETE
AS

BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_panstwo int
	DECLARE @id_Oferta int 
	SELECT @id_Oferta=id_oferty FROM deleted
	SELECT @id_panstwo=id_panstwa FROM deleted
	if NOT exists(SELECT * FROM Oferty_wPanstwie WHERE id_oferty=@id_oferta or id_panstwa=@id_panstwo )
		PRINT ' takie dane nie istnieja '
	ELSE
		DELETE FROM Oferty_wPanstwie WHERE id_oferty=@id_Oferta and id_panstwa=@id_panstwo
		
	END

GO
ALTER TABLE [dbo].[Oferty_wPanstwie] ENABLE TRIGGER [Blokuj_delete_ofertywPanstwie]
GO
/****** Object:  Trigger [dbo].[Blokuj_Update_ofertywPanstwie]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create TRIGGER [dbo].[Blokuj_Update_ofertywPanstwie]
ON [dbo].[Oferty_wPanstwie]
Instead Of UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_oferty)
	  BEGIN
		
	DECLARE @id_typ int
	DECLARE @id_oferty int
	DECLARE @id_pracownik int
	DECLARE @data Date
	DECLARE @id_prac int
	Select  @id_oferty=id_oferty from inserted;
	

	if not exists(SELECT * from Rezerwacja where id=@id_oferty)
		Print 'nie mozna edytowac';

	END

END
GO
ALTER TABLE [dbo].[Oferty_wPanstwie] ENABLE TRIGGER [Blokuj_Update_ofertywPanstwie]
GO
/****** Object:  Trigger [dbo].[Kontrola_delete_OfertyPanstwo]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[Kontrola_delete_OfertyPanstwo]
ON [dbo].[Oferty_wPanstwie]
AFTER DELETE
AS

BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_panstwa FROM deleted
	if NOT exists(SELECT * FROM Oferty_wPanstwie WHERE id_panstwa=@id_p)
		DELETE FROM Panstwo WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Oferty_wPanstwie] ENABLE TRIGGER [Kontrola_delete_OfertyPanstwo]
GO
/****** Object:  Trigger [dbo].[Kontrola_delete_OfertyPanstwo1]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create TRIGGER [dbo].[Kontrola_delete_OfertyPanstwo1]
ON [dbo].[Oferty_wPanstwie]
AFTER DELETE
AS

BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_oferty FROM deleted
	if NOT exists(SELECT * FROM Oferty_wPanstwie WHERE id_oferty=@id_p)
		DELETE FROM Oferta WHERE id=@id_p

	END

GO
ALTER TABLE [dbo].[Oferty_wPanstwie] ENABLE TRIGGER [Kontrola_delete_OfertyPanstwo1]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_OfertywPanstwie]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Kontrola_Update_OfertywPanstwie]
ON [dbo].[Oferty_wPanstwie]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_oferty)
	  BEGIN
		DECLARE @id_oferta int;
		SELECT @id_oferta=id_oferty FROM deleted
		if  exists (SELECT * FROM Terminy WHERE id_oferta=@id_oferta)
			if NOT exists (SELECT * FROM Oferty_wPanstwie WHERE id_oferty=@id_oferta)
				DELETE FROM Oferta WHERE id=@id_oferta
	END
END
GO
ALTER TABLE [dbo].[Oferty_wPanstwie] ENABLE TRIGGER [Kontrola_Update_OfertywPanstwie]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_OfertywPanstwie1]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Kontrola_Update_OfertywPanstwie1]
ON [dbo].[Oferty_wPanstwie]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_panstwa)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_panstwa FROM deleted
		if  exists (SELECT * FROM Panstwo WHERE id=@id)
			if NOT exists (SELECT * FROM Oferty_wPanstwie WHERE id_panstwa=@id)
				DELETE FROM Panstwo WHERE id=@id
	END
END
GO
ALTER TABLE [dbo].[Oferty_wPanstwie] ENABLE TRIGGER [Kontrola_Update_OfertywPanstwie1]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_Panstwo]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_Panstwo]
ON [dbo].[Panstwo]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Panstwa',16,10);
GO
ALTER TABLE [dbo].[Panstwo] ENABLE TRIGGER [Blokuj_insert_Panstwo]
GO
/****** Object:  Trigger [dbo].[Kontrola_Panstwo]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Panstwo]
ON [dbo].[Panstwo]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id FROM deleted
	if NOT exists(SELECT * FROM Panstwo WHERE id_kontynent=@id_p)
		DELETE FROM Kontynent WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Panstwo] ENABLE TRIGGER [Kontrola_Panstwo]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Panstwo]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Panstwo]
ON [dbo].[Panstwo]
AFTER UPDATE
AS

BEGIN
	SET NOCOUNT ON
      if UPDATE(id_kontynent)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_kontynent FROM deleted
			if NOT exists (SELECT * FROM Panstwo WHERE id_kontynent=@id)
				DELETE FROM Kontynent WHERE id=@id
	END
END
GO
ALTER TABLE [dbo].[Panstwo] ENABLE TRIGGER [Kontrola_Update_Panstwo]
GO
/****** Object:  Trigger [dbo].[Kontrola_delete_Pracownik]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_delete_Pracownik]
ON [dbo].[Pracownik]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_biura FROM deleted
	if NOT exists(SELECT * FROM Pracownik WHERE id_biura=@id_p)
		DELETE FROM Biuro WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Pracownik] ENABLE TRIGGER [Kontrola_delete_Pracownik]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Pracownik]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create TRIGGER [dbo].[Kontrola_Update_Pracownik]
ON [dbo].[Pracownik]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_biura)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_biura FROM deleted
			if NOT exists (SELECT * FROM Pracownik WHERE id_biura=@id)
				DELETE FROM Biuro WHERE id=@id
	END
END
GO
ALTER TABLE [dbo].[Pracownik] ENABLE TRIGGER [Kontrola_Update_Pracownik]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_ProgramOferty]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_ProgramOferty]
ON [dbo].[Program_oferty]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Programu Oferty',16,10);
GO
ALTER TABLE [dbo].[Program_oferty] ENABLE TRIGGER [Blokuj_insert_ProgramOferty]
GO
/****** Object:  Trigger [dbo].[Kontrola_programOferty]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_programOferty]
ON [dbo].[Program_oferty]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_typNoclegu FROM deleted
	if NOT exists(SELECT * FROM Program_oferty WHERE id_typNoclegu=@id_p)
		DELETE FROM Typ_noclegu WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Program_oferty] ENABLE TRIGGER [Kontrola_programOferty]
GO
/****** Object:  Trigger [dbo].[Kontrola_programOferty1]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_programOferty1]
ON [dbo].[Program_oferty]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_typTransportu FROM deleted
	if NOT exists(SELECT * FROM Program_oferty WHERE id_typTransportu=@id_p)
		DELETE FROM Typ_transportu WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Program_oferty] ENABLE TRIGGER [Kontrola_programOferty1]
GO
/****** Object:  Trigger [dbo].[Kontrola_programOferty2]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create TRIGGER [dbo].[Kontrola_programOferty2]
ON [dbo].[Program_oferty]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_oferta FROM deleted
	if NOT exists(SELECT * FROM Program_oferty WHERE id_oferta=@id_p)
		DELETE FROM Oferta WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Program_oferty] ENABLE TRIGGER [Kontrola_programOferty2]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_programOferty]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_programOferty]
ON [dbo].[Program_oferty]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_typNoclegu)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_typNoclegu FROM deleted
			if NOT exists (SELECT * FROM Program_oferty WHERE id_typNoclegu=@id)
				DELETE FROM Typ_noclegu WHERE id=@id
	END
END
GO
ALTER TABLE [dbo].[Program_oferty] ENABLE TRIGGER [Kontrola_Update_programOferty]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_programOferty1]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_programOferty1]
ON [dbo].[Program_oferty]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_typTransportu)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_typTransportu FROM deleted
			if NOT exists (SELECT * FROM Program_oferty WHERE id_typTransportu=@id)
				DELETE FROM Typ_transportu WHERE id=@id
	END
END
GO
ALTER TABLE [dbo].[Program_oferty] ENABLE TRIGGER [Kontrola_Update_programOferty1]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_Region]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_Region]
ON [dbo].[Region]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Regionu',16,10);
GO
ALTER TABLE [dbo].[Region] ENABLE TRIGGER [Blokuj_insert_Region]
GO
/****** Object:  Trigger [dbo].[Kontrola_Region]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Region]
ON [dbo].[Region]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_panstwo FROM deleted
	if NOT exists(SELECT * FROM Region WHERE id_panstwo=@id_p)
		DELETE FROM Panstwo WHERE id=@id_p

	END

GO
ALTER TABLE [dbo].[Region] ENABLE TRIGGER [Kontrola_Region]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Region]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Region]
ON [dbo].[Region]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_panstwo)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_panstwo FROM deleted
			if NOT exists (SELECT * FROM Region WHERE id_panstwo=@id)
				DELETE FROM Panstwo WHERE id=@id
	END
END
GO
ALTER TABLE [dbo].[Region] ENABLE TRIGGER [Kontrola_Update_Region]
GO
/****** Object:  Trigger [dbo].[Blokuj_delete_rezerwacja]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create TRIGGER [dbo].[Blokuj_delete_rezerwacja]
ON [dbo].[Rezerwacja]
INSTEAD OF DELETE
AS

BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_klient int
	DECLARE @id_Oferta int 
	SELECT @id_Oferta=id_oferty FROM deleted
	SELECT @id_klient=id_klient FROM deleted
	if NOT exists(SELECT * FROM Rezerwacja WHERE id_oferty=@id_oferta or id_klient=@id_klient )
		PRINT ' takie dane nie istnieja '
	ELSE
		DELETE FROM Rezerwacja WHERE id_klient=@id_klient and id_oferty=@id_oferta
		
	END

GO
ALTER TABLE [dbo].[Rezerwacja] ENABLE TRIGGER [Blokuj_delete_rezerwacja]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_Rezerwacja]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_Rezerwacja]
ON [dbo].[Rezerwacja]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Rezerwacji',16,10);
GO
ALTER TABLE [dbo].[Rezerwacja] ENABLE TRIGGER [Blokuj_insert_Rezerwacja]
GO
/****** Object:  Trigger [dbo].[Blokuj_Update_rezerwacja]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create TRIGGER [dbo].[Blokuj_Update_rezerwacja]
ON [dbo].[Rezerwacja]
Instead Of UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_klient)
	  BEGIN
		
	

	DECLARE @id_klient int
	Select  @id_klient=id_klient from inserted;
	

	if not exists(SELECT * from Klienci where id_klient=@id_klient)
		Print 'nie mozna edytowac';

	END

END
GO
ALTER TABLE [dbo].[Rezerwacja] ENABLE TRIGGER [Blokuj_Update_rezerwacja]
GO
/****** Object:  Trigger [dbo].[Kontrola_delete_Rezerwacja]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_delete_Rezerwacja]
ON [dbo].[Rezerwacja]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_klient FROM deleted
	if NOT exists(SELECT * FROM Rezerwacja WHERE id_klient=@id_p)
		DELETE FROM Klient WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Rezerwacja] ENABLE TRIGGER [Kontrola_delete_Rezerwacja]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Rezerwacja]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Rezerwacja]
ON [dbo].[Rezerwacja]
AFTER UPDATE
AS
      BEGIN
	SET NOCOUNT ON
      if UPDATE(id_klient)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_klient FROM deleted
		if exists(SELECT * from Klienci where id_klient=@id)
			if NOT exists (SELECT * FROM Rezerwacja WHERE id_klient=@id)
				DELETE FROM Klient WHERE id=@id
	END
END
GO
ALTER TABLE [dbo].[Rezerwacja] ENABLE TRIGGER [Kontrola_Update_Rezerwacja]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_Terminy]    Script Date: 14.05.2020 09:42:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_Terminy]
ON [dbo].[Terminy]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Terminów',16,10);
GO
ALTER TABLE [dbo].[Terminy] ENABLE TRIGGER [Blokuj_insert_Terminy]
GO
/****** Object:  Trigger [dbo].[Kontrola_deleteTerminy]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_deleteTerminy]
ON [dbo].[Terminy]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_oferta FROM deleted
	if NOT exists(SELECT * FROM Terminy WHERE id_oferta=@id_p)
		DELETE FROM Oferta WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Terminy] ENABLE TRIGGER [Kontrola_deleteTerminy]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Terminy]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Terminy]
ON [dbo].[Terminy]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_oferta)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_oferta FROM deleted
			if NOT exists (SELECT * FROM Terminy WHERE id_oferta=@id)
				DELETE FROM Oferta WHERE id=@id
	END
END
GO
ALTER TABLE [dbo].[Terminy] ENABLE TRIGGER [Kontrola_Update_Terminy]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_TypAtrakcji]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_TypAtrakcji]
ON [dbo].[Typ_atrakcji]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Typu atrakcji',16,10);
GO
ALTER TABLE [dbo].[Typ_atrakcji] ENABLE TRIGGER [Blokuj_insert_TypAtrakcji]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_TypNoclegu]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_TypNoclegu]
ON [dbo].[Typ_noclegu]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Typu noclegu',16,10);
GO
ALTER TABLE [dbo].[Typ_noclegu] ENABLE TRIGGER [Blokuj_insert_TypNoclegu]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_TypOferty]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_TypOferty]
ON [dbo].[Typ_oferty]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Typu oferty',16,10);
GO
ALTER TABLE [dbo].[Typ_oferty] ENABLE TRIGGER [Blokuj_insert_TypOferty]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_TypTransportu]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_TypTransportu]
ON [dbo].[Typ_transportu]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Typu transportu',16,10);

GO
ALTER TABLE [dbo].[Typ_transportu] ENABLE TRIGGER [Blokuj_insert_TypTransportu]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_Typ_ubezpieczenia]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_Typ_ubezpieczenia]
ON [dbo].[Typ_ubezpieczenia]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Typu ubezpieczenia',16,10);
GO
ALTER TABLE [dbo].[Typ_ubezpieczenia] ENABLE TRIGGER [Blokuj_insert_Typ_ubezpieczenia]
GO
/****** Object:  Trigger [dbo].[Blokuj_insert_TypWyzywienia]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_insert_TypWyzywienia]
ON [dbo].[Typ_wyzywienia]
INSTEAD OF INSERT
AS
RAISERROR('Nie można wprowadzać danych bezposrednio do Typu wyzywienia',16,10);
GO
ALTER TABLE [dbo].[Typ_wyzywienia] ENABLE TRIGGER [Blokuj_insert_TypWyzywienia]
GO
/****** Object:  Trigger [dbo].[Kontrola_delete_Ubez_uczest]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_delete_Ubez_uczest]
ON [dbo].[Ubez_uczest]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_typUbez FROM deleted
	if NOT exists(SELECT * FROM Ubez_uczest WHERE id_typUbez=@id_p)
		DELETE FROM Typ_ubezpieczenia WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Ubez_uczest] ENABLE TRIGGER [Kontrola_delete_Ubez_uczest]
GO
/****** Object:  Trigger [dbo].[Kontrola_insert_ubez_uczest]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_insert_ubez_uczest]
ON [dbo].[Ubez_uczest]
INSTEAD OF INSERT
AS
BEGIN 
	SET NOCOUNT ON;
	DECLARE @id_typ int
	DECLARE @id_ubez int
	DECLARE @id_klient int
	DECLARE @id_oferta int
	Select @id_typ=id from Typ_ubezpieczenia;
	Select  @id_ubez=id_typUbez from inserted;
	Select  @id_klient=id_klient from inserted;
	if not exists(SELECT id_rezerwacji from Umowa)
		Print 'umowa nie zostala podpisana';
	ELSE
	BEGIN
		SELECT @id_oferta=id_oferty from Rezerwacja;
		if NOT exists(SELECT * FROM Ubezpieczenia_oferta where id_oferta=@id_oferta and id_typUbezpieczenia=@id_ubez)
			Print 'niedostepne jest dane ubezpieczenie dla oferty uczestnika'
	END
END
GO
ALTER TABLE [dbo].[Ubez_uczest] ENABLE TRIGGER [Kontrola_insert_ubez_uczest]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Ubez_uczes]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create TRIGGER [dbo].[Kontrola_Update_Ubez_uczes]
ON [dbo].[Ubez_uczest]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_typUbez)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_typUbez FROM deleted
			if NOT exists (SELECT * FROM Ubez_uczest WHERE id_typUbez=@id)
				DELETE FROM Typ_ubezpieczenia WHERE id=@id
	END
END

GO
ALTER TABLE [dbo].[Ubez_uczest] ENABLE TRIGGER [Kontrola_Update_Ubez_uczes]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Ubez_uczes1]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Ubez_uczes1]
ON [dbo].[Ubez_uczest]
Instead Of UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_typUbez)
	  BEGIN
		
	DECLARE @id_typ int
	DECLARE @id_ubez int
	DECLARE @id_klient int
	DECLARE @id_oferta int
	Select @id_typ=id from Typ_ubezpieczenia;
	Select  @id_ubez=id_typUbez from inserted;
	Select  @id_klient=id_klient from inserted;
	if not exists(SELECT id_rezerwacji from Umowa)
		Print 'umowa nie zostala podpisana';
	ELSE
		BEGIN
			SELECT @id_oferta=id_oferty from Rezerwacja;

			if NOT exists(SELECT * FROM Ubezpieczenia_oferta where id_oferta=@id_oferta and id_typUbezpieczenia=@id_ubez)
				Print 'niedostepne jest dane ubezpieczenie dla oferty uczestnika'
	
			ELSE
			UPDATE Ubez_uczest SET id_typUbez=@id_ubez
		END
	END
END
GO
ALTER TABLE [dbo].[Ubez_uczest] ENABLE TRIGGER [Kontrola_Update_Ubez_uczes1]
GO
/****** Object:  Trigger [dbo].[Blokuj_delete_Ubezpieczenia_oferta1]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create TRIGGER [dbo].[Blokuj_delete_Ubezpieczenia_oferta1]
ON [dbo].[Ubezpieczenia_oferta]
INSTEAD OF DELETE
AS

BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_ubez int
	DECLARE @id_Oferta int 
	SELECT @id_Oferta=id_oferta FROM deleted
	SELECT @id_ubez=id_typUbezpieczenia FROM deleted
	if NOT exists(SELECT * FROM Ubezpieczenia_oferta WHERE id_oferta=@id_oferta or id_typUbezpieczenia=@id_ubez )
		PRINT ' takie dane nie istnieja '
	ELSE
		DELETE FROM Ubezpieczenia_oferta WHERE id_typUbezpieczenia=@id_ubez and id_oferta=@id_Oferta

	END

GO
ALTER TABLE [dbo].[Ubezpieczenia_oferta] ENABLE TRIGGER [Blokuj_delete_Ubezpieczenia_oferta1]
GO
/****** Object:  Trigger [dbo].[Blokuj_Update_Ubez_oferta]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Blokuj_Update_Ubez_oferta]
ON [dbo].[Ubezpieczenia_oferta]
Instead Of UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_oferta)
	  BEGIN
		
	DECLARE @id_typ int
	DECLARE @id_ubez int
	DECLARE @id_klient int
	DECLARE @id_oferta int
	Select @id_typ=id from Typ_ubezpieczenia;
	Select  @id_ubez=id_typUbezpieczenia from inserted;
	Select  @id_oferta=id_oferta from inserted;
	if not exists(SELECT id_rezerwacji from Umowa)
		Print 'umowa nie zostala podpisana';

	SELECT @id_oferta=id_oferty from Rezerwacja;

	if NOT exists(SELECT * FROM Ubezpieczenia_oferta where id_oferta=@id_oferta and id_typUbezpieczenia=@id_ubez)
		Print 'Nie mozna edytowac'
	END

END
GO
ALTER TABLE [dbo].[Ubezpieczenia_oferta] ENABLE TRIGGER [Blokuj_Update_Ubez_oferta]
GO
/****** Object:  Trigger [dbo].[Kontrola_delete_Ubezpieczenia_oferta]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_delete_Ubezpieczenia_oferta]
ON [dbo].[Ubezpieczenia_oferta]
AFTER DELETE
AS

BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_typUbezpieczenia FROM deleted
	if NOT exists(SELECT * FROM Ubezpieczenia_oferta WHERE id_typUbezpieczenia=@id_p)
		DELETE FROM Typ_ubezpieczenia WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Ubezpieczenia_oferta] ENABLE TRIGGER [Kontrola_delete_Ubezpieczenia_oferta]
GO
/****** Object:  Trigger [dbo].[Kontrola_delete_Ubezpieczenia_oferta1]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create TRIGGER [dbo].[Kontrola_delete_Ubezpieczenia_oferta1]
ON [dbo].[Ubezpieczenia_oferta]
AFTER DELETE
AS

BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_oferta FROM deleted
	if NOT exists(SELECT * FROM Ubezpieczenia_oferta WHERE id_oferta=@id_p)
		DELETE FROM Oferta WHERE id=@id_p

	END

GO
ALTER TABLE [dbo].[Ubezpieczenia_oferta] ENABLE TRIGGER [Kontrola_delete_Ubezpieczenia_oferta1]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Ubezpieczenia_oferta]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Ubezpieczenia_oferta]
ON [dbo].[Ubezpieczenia_oferta]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_typUbezpieczenia)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_typUbezpieczenia FROM deleted
			if  exists (SELECT * FROM Ubez_uczest WHERE id_typUbez=@id)
			BEGIN
			if NOT exists (SELECT * FROM Ubezpieczenia_oferta WHERE id_typUbezpieczenia=@id)
				DELETE FROM Typ_ubezpieczenia WHERE id=@id
			END
	END
END
GO
ALTER TABLE [dbo].[Ubezpieczenia_oferta] ENABLE TRIGGER [Kontrola_Update_Ubezpieczenia_oferta]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Ubezpieczenia_oferta1]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Ubezpieczenia_oferta1]
ON [dbo].[Ubezpieczenia_oferta]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_oferta)
	  BEGIN
		DECLARE @id_oferta int;
		
		SELECT @id_oferta=id_oferta FROM deleted
		if  exists (SELECT * FROM Terminy WHERE id_oferta=@id_oferta)
		BEGIN
			if NOT exists (SELECT * FROM Ubezpieczenia_oferta WHERE id_oferta=@id_oferta)
				DELETE FROM Oferta WHERE id=@id_oferta
		END	
	END
END

GO
ALTER TABLE [dbo].[Ubezpieczenia_oferta] ENABLE TRIGGER [Kontrola_Update_Ubezpieczenia_oferta1]
GO
/****** Object:  Trigger [dbo].[Kontrola_delete_Umowa]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_delete_Umowa]
ON [dbo].[Umowa]
AFTER DELETE
AS
BEGIN 
	SET NOCOUNT ON;

	DECLARE @id_p int
	SELECT @id_p=id_rezerwacji FROM deleted
	if NOT exists(SELECT * FROM Umowa WHERE id_rezerwacji=@id_p)
		DELETE FROM Rezerwacja WHERE id=@id_p

	END
GO
ALTER TABLE [dbo].[Umowa] ENABLE TRIGGER [Kontrola_delete_Umowa]
GO
/****** Object:  Trigger [dbo].[Kontrola_insert_umowa]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_insert_umowa]
ON [dbo].[Umowa]
INSTEAD OF INSERT
AS
BEGIN 
	SET NOCOUNT ON;
	DECLARE @id_typ int
	DECLARE @id_rez int
	DECLARE @id_pracownik int
	DECLARE @data Date
	DECLARE @id_prac int
	Select @id_typ=id from Typ_ubezpieczenia;
	Select  @id_rez=id_rezerwacji from inserted;
	Select  @id_pracownik=id_pracownika from inserted;
	Select  @data=Data_ from inserted;
	

	if not exists(SELECT * from Rezerwacja where id=@id_rez)
		Print 'rezerwacja nie istnieje';
	ELSE
	BEGIN
		SELECT @id_prac=id_Pracownika from Grafik where Data_=@data ;
		if NOT exists(SELECT * FROM Umowa where id_pracownika=@id_prac)
			Print 'nie mozna dodac'
	END
END
GO
ALTER TABLE [dbo].[Umowa] ENABLE TRIGGER [Kontrola_insert_umowa]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Umowa]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Umowa]
ON [dbo].[Umowa]
INSTEAD OF UPDATE
AS
BEGIN 
	SET NOCOUNT ON;
	if UPDATE(id_rezerwacji)
	BEGIN
		DECLARE @id_typ int
		DECLARE @id_rez int
		DECLARE @id_pracownik int
		DECLARE @data Date
		DECLARE @id_prac int
		Select @id_typ=id from Typ_ubezpieczenia;
		Select  @id_rez=id_rezerwacji from inserted;
		Select  @id_pracownik=id_pracownika from inserted;
		Select  @data=Data_ from inserted;
	

		if not exists(SELECT * from Rezerwacja where id=@id_rez)
			Print 'rezerwacja nie istnieje';
		ELSE
		BEGIN
			SELECT @id_prac=id_Pracownika from Grafik where Data_=@data ;
			if NOT exists(SELECT * FROM Umowa where id_pracownika=@id_prac)
				Print 'nie mozna edytowac'
			ELSE
				UPDATE Umowa SET id_rezerwacji=@id_rez;
		END
	END
END
GO
ALTER TABLE [dbo].[Umowa] ENABLE TRIGGER [Kontrola_Update_Umowa]
GO
/****** Object:  Trigger [dbo].[Kontrola_Update_Umowa1]    Script Date: 14.05.2020 09:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Kontrola_Update_Umowa1]
ON [dbo].[Umowa]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
      if UPDATE(id_rezerwacji)
	  BEGIN
		DECLARE @id int
		SELECT @id=id_rezerwacji FROM deleted
			if NOT exists (SELECT * FROM Umowa WHERE id_rezerwacji=@id)
				DELETE FROM Rezerwacja  WHERE id=@id
	END
END
GO
ALTER TABLE [dbo].[Umowa] ENABLE TRIGGER [Kontrola_Update_Umowa1]
GO
USE [master]
GO
ALTER DATABASE [nowa] SET  READ_WRITE 
GO
