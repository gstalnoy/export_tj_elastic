CREATE TABLE [dbo].[TableListForReglament](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](max) NULL,
	[rows] [numeric](18, 0) NULL
)

go

CREATE TABLE [dbo].[TableListForDefrag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](max) NULL,
	[indexname] [varchar](max) NULL,
	[rows] [nvarchar](50) NULL,
	[avg_fragmentation_in_percent] [nvarchar](50) NULL
)

go

CREATE TABLE [dbo].[HystoryForReglament](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[isStatistka] [int] NULL
)

go

CREATE TABLE [dbo].[HystoryForDefrag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[indexname] [varchar](max) NULL
)