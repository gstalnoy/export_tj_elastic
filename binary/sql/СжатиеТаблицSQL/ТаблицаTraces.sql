USE [CompressionSetting]
GO

/****** Object:  Table [dbo].[trace]    Script Date: 02.11.2018 16:13:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[trace](
	[text] [nvarchar](max) NULL,
	[DatabaseName] [nvarchar](max) NULL,
	[DateTime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


