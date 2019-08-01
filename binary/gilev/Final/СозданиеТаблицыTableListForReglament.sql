USE [ForReglament]
GO

/****** Object:  Table [dbo].[TableListForReglament]    Script Date: 25.06.2019 10:14:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TableListForReglament](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](max) NULL,
	[rows] [numeric](18, 0) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


