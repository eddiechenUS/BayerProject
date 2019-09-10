USE [BayerDevDb]
GO

/****** Object:  Table [dbo].[ShiftSchedule]    Script Date: 9/10/2019 1:38:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ShiftSchedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[totalQuantityProduced] [float] NULL,
	[totalTargetQuantity] [float] NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[productionLine] [varchar](255) NOT NULL,
 CONSTRAINT [PK_ShiftSchedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

