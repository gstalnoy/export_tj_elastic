USE [ForReglament]
GO

/****** Object:  Table [dbo].[HystoryForReglament]    Script Date: 25.06.2019 10:13:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HystoryForReglament](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[isStatistka] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


