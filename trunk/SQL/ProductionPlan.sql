USE [BayerDevDb]
GO

/****** Object:  Table [dbo].[ProductionPlan]    Script Date: 9/3/2019 2:16:00 PM ******/
DROP TABLE [dbo].[ProductionPlan]
GO

/****** Object:  Table [dbo].[ProductionPlan]    Script Date: 9/3/2019 2:16:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductionPlan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productionLine] [varchar](255) NOT NULL,
	[productId] [nvarchar](50) NOT NULL,
	[orderNr] [varchar](50) NOT NULL,
	[productDescription] [nvarchar](255) NOT NULL,
	[targetQuantity] [float] NOT NULL,
	[targetHours] [float] NOT NULL,
	[targetQuantityPerHour] [float] NOT NULL,
	[status] [varchar](20) NOT NULL,
	[remainingHours] [float] NOT NULL,
	[workedHours] [float] NOT NULL,
	[producedQuantity] [float] NOT NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[activeMaterialNumber] [varchar](50) NOT NULL,
	[blisterType] [varchar](20) NOT NULL,
	[foldedBoxFormat] [varchar](30) NOT NULL,
 CONSTRAINT [PK_ProductionPlan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

