USE [ForReglament]
GO

/****** Object:  Table [dbo].[HystoryForDefrag]    Script Date: 24.07.2017 12:51:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[HystoryForDefrag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](255) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[indexname] [varchar](255) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO




-- 

USE [ForReglament]
GO

/****** Object:  Table [dbo].[HystoryForReglament]    Script Date: 24.07.2017 12:52:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[HystoryForReglament](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](255) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[isStatistka] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


--
USE [ForReglament]
GO

/****** Object:  Table [dbo].[TableListForDefrag]    Script Date: 24.07.2017 12:52:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TableListForDefrag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](255) NULL,
	[indexname] [varchar](255) NULL,
	[rows] [nvarchar](50) NULL,
	[avg_fragmentation_in_percent] [nvarchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



--

USE [ForReglament]
GO

/****** Object:  Table [dbo].[TableListForReglament]    Script Date: 24.07.2017 12:52:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TableListForReglament](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](255) NULL,
	[rows] [numeric](18, 0) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
