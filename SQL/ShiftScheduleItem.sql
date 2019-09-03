USE [BayerDevDb]
GO

ALTER TABLE [dbo].[ShiftScheduleItem] DROP CONSTRAINT [FK_ShiftScheduleItem_ShiftSchedule]
GO

ALTER TABLE [dbo].[ShiftScheduleItem] DROP CONSTRAINT [FK_ShiftScheduleItem_ProductionPlan]
GO

/****** Object:  Table [dbo].[ShiftScheduleItem]    Script Date: 9/3/2019 2:16:34 PM ******/
DROP TABLE [dbo].[ShiftScheduleItem]
GO

/****** Object:  Table [dbo].[ShiftScheduleItem]    Script Date: 9/3/2019 2:16:34 PM ******/
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

