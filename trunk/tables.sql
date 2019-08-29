USE [BayerDevDb]
GO

/****** Object:  Table [dbo].[Action]    Script Date: 8/29/2019 2:52:23 PM ******/
DROP TABLE [dbo].[Action]
GO

/****** Object:  Table [dbo].[Action]    Script Date: 8/29/2019 2:52:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Action](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productionLine] [varchar](255) NOT NULL,
	[createdTime] [datetime] NOT NULL,
	[status] [varchar](40) NOT NULL,
	[problemDescription] [nvarchar](2000) NOT NULL,
	[solutionDescription] [nvarchar](2000) NULL,
	[dueDate] [date] NULL,
	[assignedTo] [varchar](255) NULL,
 CONSTRAINT [PK_Action] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [BayerDevDb]
GO

/****** Object:  Table [dbo].[Issue]    Script Date: 8/29/2019 2:52:48 PM ******/
DROP TABLE [dbo].[Issue]
GO

/****** Object:  Table [dbo].[Issue]    Script Date: 8/29/2019 2:52:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Issue](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [nvarchar](100) NOT NULL,
	[problem] [nvarchar](2000) NOT NULL,
	[solution] [nvarchar](2000) NULL,
	[duration] [float] NULL,
	[productionLine] [varchar](255) NOT NULL,
	[lastModified] [datetime] NOT NULL,
	[timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_Issue] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [BayerDevDb]
GO

/****** Object:  Table [dbo].[ProductionPlan]    Script Date: 8/29/2019 2:53:00 PM ******/
DROP TABLE [dbo].[ProductionPlan]
GO

/****** Object:  Table [dbo].[ProductionPlan]    Script Date: 8/29/2019 2:53:00 PM ******/
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

USE [BayerDevDb]
GO

/****** Object:  Table [dbo].[ShiftSchedule]    Script Date: 8/29/2019 2:53:09 PM ******/
DROP TABLE [dbo].[ShiftSchedule]
GO

/****** Object:  Table [dbo].[ShiftSchedule]    Script Date: 8/29/2019 2:53:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ShiftSchedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[totalQuantityProduced] [float] NULL,
	[totalTargetQuantity] [float] NOT NULL,
	[timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_ShiftSchedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [BayerDevDb]
GO

ALTER TABLE [dbo].[ShiftScheduleItem] DROP CONSTRAINT [FK_ShiftScheduleItem_ShiftSchedule]
GO

ALTER TABLE [dbo].[ShiftScheduleItem] DROP CONSTRAINT [FK_ShiftScheduleItem_ProductionPlan]
GO

/****** Object:  Table [dbo].[ShiftScheduleItem]    Script Date: 8/29/2019 2:53:15 PM ******/
DROP TABLE [dbo].[ShiftScheduleItem]
GO

/****** Object:  Table [dbo].[ShiftScheduleItem]    Script Date: 8/29/2019 2:53:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ShiftScheduleItem](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[hour] [tinyint] NOT NULL,
	[time] [datetime] NOT NULL,
	[duration] [int] NOT NULL,
	[scheduleId] [int] NOT NULL,
	[productionPlanId] [int] NULL,
 CONSTRAINT [PK_ShiftScheduleItem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ShiftScheduleItem]  WITH CHECK ADD  CONSTRAINT [FK_ShiftScheduleItem_ProductionPlan] FOREIGN KEY([productionPlanId])
REFERENCES [dbo].[ProductionPlan] ([id])
ON DELETE SET NULL
GO

ALTER TABLE [dbo].[ShiftScheduleItem] CHECK CONSTRAINT [FK_ShiftScheduleItem_ProductionPlan]
GO

ALTER TABLE [dbo].[ShiftScheduleItem]  WITH CHECK ADD  CONSTRAINT [FK_ShiftScheduleItem_ShiftSchedule] FOREIGN KEY([scheduleId])
REFERENCES [dbo].[ShiftSchedule] ([id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ShiftScheduleItem] CHECK CONSTRAINT [FK_ShiftScheduleItem_ShiftSchedule]
GO

