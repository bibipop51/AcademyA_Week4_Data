USE [master]
GO
/****** Object:  Database [BiancaPop.GestioneStrutture2]    Script Date: 18/02/2022 14:53:16 ******/
CREATE DATABASE [BiancaPop.GestioneStrutture2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BiancaPop.GestioneStrutture2', FILENAME = N'C:\Users\bianca.stefania.pop\BiancaPop.GestioneStrutture2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BiancaPop.GestioneStrutture2_log', FILENAME = N'C:\Users\bianca.stefania.pop\BiancaPop.GestioneStrutture2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BiancaPop.GestioneStrutture2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET ARITHABORT OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET  MULTI_USER 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET QUERY_STORE = OFF
GO
USE [BiancaPop.GestioneStrutture2]
GO
/****** Object:  Table [dbo].[Tipologie]    Script Date: 18/02/2022 14:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipologie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descrizione] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Strutture]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Strutture](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[Città] [nvarchar](50) NOT NULL,
	[Stato] [nvarchar](50) NOT NULL,
	[IdTipologia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servizi]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servizi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descrizione] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipiPernottamento]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipiPernottamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descrizione] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiziStrutture]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiziStrutture](
	[IdStruttura] [int] NOT NULL,
	[IdServizio] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StrutturePernottamenti]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StrutturePernottamenti](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdStruttura] [int] NOT NULL,
	[IdTipoPernottamento] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostiStrutturePernottamenti]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostiStrutturePernottamenti](
	[CostoPersona/Die] [decimal](18, 0) NOT NULL,
	[IdSoluzione] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ShowOfferteStrutture]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[ShowOfferteStrutture]
as
(
	select
	s.Nome,
	t.Descrizione,
	TipoPernottamento = tp.Descrizione,
	PrezzoANotte = csp.[CostoPersona/Die],
	ServiziOfferti = STRING_AGG(se.Descrizione, ',')
	from dbo.Strutture s
	join dbo.Tipologie t
	on t.Id = s.IdTipologia
	join dbo.StrutturePernottamenti sp
	on sp.IdStruttura = s.Id
	join dbo.TipiPernottamento tp
	on tp.Id = sp.IdTipoPernottamento
	join dbo.CostiStrutturePernottamenti csp
	on csp.IdSoluzione = sp.Id 
	join dbo.ServiziStrutture ss
	on ss.IdStruttura = s.Id
	join dbo.Servizi se
	on se.Id = ss.IdServizio
	group by s.Nome,t.Descrizione,tp.Descrizione,csp.[CostoPersona/Die]
)
GO
/****** Object:  Table [dbo].[Clienti]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clienti](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[Cognome] [nvarchar](50) NOT NULL,
	[DataDiNascita] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prenotazioni]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prenotazioni](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdStruttura] [int] NOT NULL,
	[DataArrivo] [date] NOT NULL,
	[DataPartenza] [date] NOT NULL,
	[NumeroPersone] [int] NOT NULL,
	[IdTipoPernottamento] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[PrenotazioniView]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[PrenotazioniView]
as
(
	select 
	Cliente = c.Nome + ' ' + c.Cognome,
	p.DataArrivo,
	p.DataPartenza,
	p.NumeroPersone,
	Struttura = s.Nome,
	TipologiaStruttura = t.Descrizione,
	TIpoPernottamento = tp.Descrizione,
	CostoTotale = csp.[CostoPersona/Die] * p.NumeroPersone * DATEDIFF(DAY,DataArrivo,DataPartenza)
	from Prenotazioni p
	join dbo.Strutture s
	on p.IdStruttura = s.Id
	join dbo.Tipologie t
	on t.Id = s.IdTipologia
	join dbo.Clienti c
	on c.Id = p.IdCliente
	join dbo.StrutturePernottamenti sp
	on sp.Id = p.Id
	join dbo.CostiStrutturePernottamenti csp
	on csp.IdSoluzione = sp.Id
	join dbo.TipiPernottamento tp
	on tp.Id = sp.IdTipoPernottamento
)
GO
/****** Object:  View [dbo].[MostraGuadagni]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[MostraGuadagni]
as
(
	select
	Struttura = pv.Struttura,
	GuadagnoStruttura = sum(pv.CostoTotale)
	from PrenotazioniView pv
	group by pv.Struttura
)
GO
SET IDENTITY_INSERT [dbo].[Clienti] ON 

INSERT [dbo].[Clienti] ([Id], [Nome], [Cognome], [DataDiNascita]) VALUES (1, N'Mario', N'Rossi', CAST(N'1994-02-01' AS Date))
INSERT [dbo].[Clienti] ([Id], [Nome], [Cognome], [DataDiNascita]) VALUES (2, N'Marco', N'Verdi', CAST(N'1975-12-09' AS Date))
INSERT [dbo].[Clienti] ([Id], [Nome], [Cognome], [DataDiNascita]) VALUES (3, N'Rosa', N'Bianchi', CAST(N'1981-04-23' AS Date))
INSERT [dbo].[Clienti] ([Id], [Nome], [Cognome], [DataDiNascita]) VALUES (4, N'Lino', N'Varrano', CAST(N'1964-11-26' AS Date))
INSERT [dbo].[Clienti] ([Id], [Nome], [Cognome], [DataDiNascita]) VALUES (5, N'Carmine', N'Salvi', CAST(N'1998-05-19' AS Date))
SET IDENTITY_INSERT [dbo].[Clienti] OFF
GO
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(113 AS Decimal(18, 0)), 1)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(125 AS Decimal(18, 0)), 2)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(170 AS Decimal(18, 0)), 3)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(265 AS Decimal(18, 0)), 4)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(67 AS Decimal(18, 0)), 5)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(89 AS Decimal(18, 0)), 6)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(118 AS Decimal(18, 0)), 7)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(230 AS Decimal(18, 0)), 8)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(256 AS Decimal(18, 0)), 9)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(320 AS Decimal(18, 0)), 10)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(400 AS Decimal(18, 0)), 11)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(123 AS Decimal(18, 0)), 12)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(140 AS Decimal(18, 0)), 13)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(187 AS Decimal(18, 0)), 14)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(156 AS Decimal(18, 0)), 15)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(87 AS Decimal(18, 0)), 16)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(99 AS Decimal(18, 0)), 17)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(156 AS Decimal(18, 0)), 18)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(200 AS Decimal(18, 0)), 19)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(321 AS Decimal(18, 0)), 20)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(350 AS Decimal(18, 0)), 21)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(400 AS Decimal(18, 0)), 22)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(456 AS Decimal(18, 0)), 23)
INSERT [dbo].[CostiStrutturePernottamenti] ([CostoPersona/Die], [IdSoluzione]) VALUES (CAST(489 AS Decimal(18, 0)), 24)
GO
SET IDENTITY_INSERT [dbo].[Prenotazioni] ON 

INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroPersone], [IdTipoPernottamento]) VALUES (2, 1, 1, CAST(N'2022-02-18' AS Date), CAST(N'2022-02-21' AS Date), 2, 3)
INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroPersone], [IdTipoPernottamento]) VALUES (3, 2, 2, CAST(N'2022-02-22' AS Date), CAST(N'2022-02-28' AS Date), 4, 6)
INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroPersone], [IdTipoPernottamento]) VALUES (4, 3, 3, CAST(N'2022-03-06' AS Date), CAST(N'2022-03-10' AS Date), 1, 11)
INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroPersone], [IdTipoPernottamento]) VALUES (5, 4, 4, CAST(N'2022-05-02' AS Date), CAST(N'2022-05-07' AS Date), 6, 12)
INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroPersone], [IdTipoPernottamento]) VALUES (6, 5, 5, CAST(N'2022-08-10' AS Date), CAST(N'2022-08-20' AS Date), 10, 15)
INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroPersone], [IdTipoPernottamento]) VALUES (7, 1, 6, CAST(N'2022-09-08' AS Date), CAST(N'2022-09-15' AS Date), 2, 19)
INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroPersone], [IdTipoPernottamento]) VALUES (8, 2, 7, CAST(N'2022-10-02' AS Date), CAST(N'2022-10-10' AS Date), 5, 22)
INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroPersone], [IdTipoPernottamento]) VALUES (9, 3, 8, CAST(N'2022-12-12' AS Date), CAST(N'2022-12-17' AS Date), 3, 24)
INSERT [dbo].[Prenotazioni] ([Id], [IdCliente], [IdStruttura], [DataArrivo], [DataPartenza], [NumeroPersone], [IdTipoPernottamento]) VALUES (10, 5, 8, CAST(N'2022-12-20' AS Date), CAST(N'2023-01-05' AS Date), 4, 23)
SET IDENTITY_INSERT [dbo].[Prenotazioni] OFF
GO
SET IDENTITY_INSERT [dbo].[Servizi] ON 

INSERT [dbo].[Servizi] ([Id], [Descrizione]) VALUES (1, N'Piscina')
INSERT [dbo].[Servizi] ([Id], [Descrizione]) VALUES (2, N'Wi-fi')
INSERT [dbo].[Servizi] ([Id], [Descrizione]) VALUES (3, N'Cassaforte')
INSERT [dbo].[Servizi] ([Id], [Descrizione]) VALUES (4, N'Spa & Centro benessere')
INSERT [dbo].[Servizi] ([Id], [Descrizione]) VALUES (5, N'Animali ammessi')
SET IDENTITY_INSERT [dbo].[Servizi] OFF
GO
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (1, 2)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (1, 3)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (1, 4)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (1, 5)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (2, 1)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (2, 5)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (3, 1)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (3, 2)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (3, 3)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (3, 4)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (4, 1)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (4, 2)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (4, 5)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (5, 1)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (5, 2)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (5, 5)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (6, 1)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (6, 2)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (6, 3)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (6, 5)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (7, 1)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (7, 2)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (7, 3)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (8, 1)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (8, 2)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (8, 3)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (8, 4)
INSERT [dbo].[ServiziStrutture] ([IdStruttura], [IdServizio]) VALUES (8, 5)
GO
SET IDENTITY_INSERT [dbo].[Strutture] ON 

INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia]) VALUES (1, N'Hotel Il Campanile', N'Cherasco', N'Italia', 2)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia]) VALUES (2, N'Ca'' Nadin Agriturismo', N'San Damiano d''Asti', N'Italia', 1)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia]) VALUES (3, N'Wenceslas Square Hotel', N'Praga', N'Repubblica Ceca', 2)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia]) VALUES (4, N'Residence Caffè Savona', N'Alba', N'Italia', 4)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia]) VALUES (5, N'Villa El Jaguel', N'Tenerife', N'Spagna', 3)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia]) VALUES (6, N'Tenuta Pian D''Attesio', N'Castelletto Soprano', N'Italia', 1)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia]) VALUES (7, N'Au Royal Mad', N'Parigi', N'Francia', 4)
INSERT [dbo].[Strutture] ([Id], [Nome], [Città], [Stato], [IdTipologia]) VALUES (8, N'Rainforest Eco Cabin', N'Volcano', N'Hawaii', 3)
SET IDENTITY_INSERT [dbo].[Strutture] OFF
GO
SET IDENTITY_INSERT [dbo].[StrutturePernottamenti] ON 

INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (1, 1, 1)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (2, 1, 2)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (3, 1, 3)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (4, 1, 4)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (5, 2, 1)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (6, 2, 2)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (7, 2, 3)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (8, 3, 1)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (9, 3, 2)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (10, 3, 3)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (11, 3, 4)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (12, 4, 1)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (13, 4, 2)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (14, 4, 3)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (15, 5, 1)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (16, 6, 1)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (17, 6, 2)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (18, 6, 3)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (19, 6, 4)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (20, 7, 1)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (21, 7, 2)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (22, 7, 3)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (23, 8, 1)
INSERT [dbo].[StrutturePernottamenti] ([Id], [IdStruttura], [IdTipoPernottamento]) VALUES (24, 8, 2)
SET IDENTITY_INSERT [dbo].[StrutturePernottamenti] OFF
GO
SET IDENTITY_INSERT [dbo].[TipiPernottamento] ON 

INSERT [dbo].[TipiPernottamento] ([Id], [Descrizione]) VALUES (1, N'Solo pernottamento')
INSERT [dbo].[TipiPernottamento] ([Id], [Descrizione]) VALUES (2, N'Pernottamento e prima colazione')
INSERT [dbo].[TipiPernottamento] ([Id], [Descrizione]) VALUES (3, N'Mezza pensione')
INSERT [dbo].[TipiPernottamento] ([Id], [Descrizione]) VALUES (4, N'Pensione completa')
SET IDENTITY_INSERT [dbo].[TipiPernottamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipologie] ON 

INSERT [dbo].[Tipologie] ([Id], [Descrizione]) VALUES (1, N'Agriturismo')
INSERT [dbo].[Tipologie] ([Id], [Descrizione]) VALUES (2, N'Hotel')
INSERT [dbo].[Tipologie] ([Id], [Descrizione]) VALUES (3, N'Casa vacanze')
INSERT [dbo].[Tipologie] ([Id], [Descrizione]) VALUES (4, N'Residence')
SET IDENTITY_INSERT [dbo].[Tipologie] OFF
GO
ALTER TABLE [dbo].[CostiStrutturePernottamenti]  WITH CHECK ADD  CONSTRAINT [FK_StrutturePernottamenti] FOREIGN KEY([IdSoluzione])
REFERENCES [dbo].[StrutturePernottamenti] ([Id])
GO
ALTER TABLE [dbo].[CostiStrutturePernottamenti] CHECK CONSTRAINT [FK_StrutturePernottamenti]
GO
ALTER TABLE [dbo].[Prenotazioni]  WITH CHECK ADD  CONSTRAINT [FK_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clienti] ([Id])
GO
ALTER TABLE [dbo].[Prenotazioni] CHECK CONSTRAINT [FK_Cliente]
GO
ALTER TABLE [dbo].[Prenotazioni]  WITH CHECK ADD  CONSTRAINT [FK_StrutturaPrenotata] FOREIGN KEY([IdStruttura])
REFERENCES [dbo].[Strutture] ([Id])
GO
ALTER TABLE [dbo].[Prenotazioni] CHECK CONSTRAINT [FK_StrutturaPrenotata]
GO
ALTER TABLE [dbo].[Prenotazioni]  WITH CHECK ADD  CONSTRAINT [FK_TipoPernottamento] FOREIGN KEY([IdTipoPernottamento])
REFERENCES [dbo].[StrutturePernottamenti] ([Id])
GO
ALTER TABLE [dbo].[Prenotazioni] CHECK CONSTRAINT [FK_TipoPernottamento]
GO
ALTER TABLE [dbo].[ServiziStrutture]  WITH CHECK ADD  CONSTRAINT [FK_ServizioStruttura] FOREIGN KEY([IdServizio])
REFERENCES [dbo].[Servizi] ([Id])
GO
ALTER TABLE [dbo].[ServiziStrutture] CHECK CONSTRAINT [FK_ServizioStruttura]
GO
ALTER TABLE [dbo].[ServiziStrutture]  WITH CHECK ADD  CONSTRAINT [FK_StrutturaServizio] FOREIGN KEY([IdStruttura])
REFERENCES [dbo].[Strutture] ([Id])
GO
ALTER TABLE [dbo].[ServiziStrutture] CHECK CONSTRAINT [FK_StrutturaServizio]
GO
ALTER TABLE [dbo].[Strutture]  WITH CHECK ADD  CONSTRAINT [FK_Tipologia] FOREIGN KEY([IdTipologia])
REFERENCES [dbo].[Tipologie] ([Id])
GO
ALTER TABLE [dbo].[Strutture] CHECK CONSTRAINT [FK_Tipologia]
GO
ALTER TABLE [dbo].[StrutturePernottamenti]  WITH CHECK ADD  CONSTRAINT [FK_Pernottamento] FOREIGN KEY([IdTipoPernottamento])
REFERENCES [dbo].[TipiPernottamento] ([Id])
GO
ALTER TABLE [dbo].[StrutturePernottamenti] CHECK CONSTRAINT [FK_Pernottamento]
GO
ALTER TABLE [dbo].[StrutturePernottamenti]  WITH CHECK ADD  CONSTRAINT [FK_Struttura] FOREIGN KEY([IdStruttura])
REFERENCES [dbo].[Strutture] ([Id])
GO
ALTER TABLE [dbo].[StrutturePernottamenti] CHECK CONSTRAINT [FK_Struttura]
GO
/****** Object:  StoredProcedure [dbo].[InsertPrenotazioni]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertPrenotazioni]
@nome nvarchar(50), @cognome nvarchar(50), @struttura nvarchar(50), @dataArrivo date, @dataPartenza date, @numeroPersone int, @tipoPernottamento nvarchar(50)
as
declare @cliente int 
set @cliente = (select Id from Clienti where Nome = @nome and Cognome = @cognome)
declare @strutturaId int
set @strutturaId = (select Id from Strutture where Nome = @struttura)
declare @spId int
set @spId = (select sp.Id from dbo.StrutturePernottamenti sp join dbo.TipiPernottamento tp on tp.Id = sp.IdTipoPernottamento where IdStruttura = @strutturaId and tp.Descrizione = @tipoPernottamento)
insert dbo.Prenotazioni
values (@cliente,@strutturaId,@dataArrivo,@dataPartenza,@numeroPersone,@spId)
GO
/****** Object:  StoredProcedure [dbo].[ShowAvailableStrutture]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ShowAvailableStrutture]
@tipologia nvarchar(50), @servizio nvarchar(50), @pernottamento nvarchar(50)
as
select 
s.Nome,
s.Città,
s.Stato
from dbo.Strutture s
join dbo.ServiziStrutture ss
on ss.IdStruttura = s.Id
join dbo.Servizi se
on se.Id = ss.IdServizio
join dbo.StrutturePernottamenti sp
on sp.IdStruttura = s.Id
join dbo.TipiPernottamento tp
on tp.Id = sp.IdTipoPernottamento
join dbo.Tipologie t
on t.Id = s.IdTipologia
where t.Descrizione = @tipologia
and se.Descrizione = @servizio
and tp.Descrizione = @pernottamento
GO
/****** Object:  StoredProcedure [dbo].[ShowStruttureConTipoPernottamento]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ShowStruttureConTipoPernottamento]
@pernottamento nvarchar(50)
as
select distinct
s.Nome,
s.Città,
s.Stato
from dbo.Strutture s
join dbo.StrutturePernottamenti sp
on s.Id = sp.IdStruttura
join dbo.TipiPernottamento tp
on sp.IdTipoPernottamento = tp.Id
where tp.Descrizione = @pernottamento
GO
/****** Object:  StoredProcedure [dbo].[ShowStruttureDiUnaCertaTipologia]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ShowStruttureDiUnaCertaTipologia]
@tipologia nvarchar(50)
as
select 
s.Nome,
s.Città,
s.Stato
from dbo.Strutture s
join dbo.Tipologie t
on t.Id = s.IdTipologia
where t.Descrizione = @tipologia
GO
/****** Object:  StoredProcedure [dbo].[ShowStruttureWithServizi]    Script Date: 18/02/2022 14:53:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ShowStruttureWithServizi]
@servizio nvarchar(50)
as
select 
s.Nome,
s.Città,
s.Stato
from dbo.Strutture s
join dbo.ServiziStrutture ss
on s.Id = ss.IdStruttura
join dbo.Servizi se
on ss.IdServizio = se.Id
where se.Descrizione = @servizio
GO
USE [master]
GO
ALTER DATABASE [BiancaPop.GestioneStrutture2] SET  READ_WRITE 
GO
