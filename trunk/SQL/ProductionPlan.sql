USE [BayerDevDb]
GO

/****** Object:  Table [dbo].[ProductionPlan]    Script Date: 9/10/2019 1:37:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductionPlan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productionLine] [varchar](255) NOT NULL,
	[productId] [nvarchar](50) NOT NULL,
	[orderNr] [varchar](50) NULL,
	[productDescription] [nvarchar](255) NULL,
	[targetQuantity] [float] NOT NULL,
	[targetHours] [float] NOT NULL,
	[targetQuantityPerHour] [float] NOT NULL,
	[status] [varchar](20) NOT NULL,
	[remainingHours] [float] NOT NULL,
	[workedHours] [float] NOT NULL,
	[producedQuantity] [float] NOT NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[activeMaterialNumber] [varchar](50) NULL,
	[blisterType] [varchar](20) NULL,
	[foldedBoxFormat] [varchar](30) NULL,
 CONSTRAINT [PK_ProductionPlan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

