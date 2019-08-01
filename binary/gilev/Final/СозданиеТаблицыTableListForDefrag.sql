USE [ForReglament]
GO

/****** Object:  Table [dbo].[TableListForDefrag]    Script Date: 25.06.2019 10:14:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TableListForDefrag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](max) NULL,
	[indexname] [varchar](max) NULL,
	[rows] [nvarchar](50) NULL,
	[avg_fragmentation_in_percent] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


