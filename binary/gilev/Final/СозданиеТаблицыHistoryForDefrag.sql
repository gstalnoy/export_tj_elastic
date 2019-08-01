USE [ForReglament]
GO

/****** Object:  Table [dbo].[HystoryForDefrag]    Script Date: 25.06.2019 10:13:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HystoryForDefrag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[indexname] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


