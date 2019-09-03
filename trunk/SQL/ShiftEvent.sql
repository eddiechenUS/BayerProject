USE [BayerDevDb]
GO

ALTER TABLE [dbo].[ShiftEvent] DROP CONSTRAINT [FK_ShiftEvent_ShiftSchedule]
GO

/****** Object:  Table [dbo].[ShiftEvent]    Script Date: 9/3/2019 2:16:15 PM ******/
DROP TABLE [dbo].[ShiftEvent]
GO

/****** Object:  Table [dbo].[ShiftEvent]    Script Date: 9/3/2019 2:16:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ShiftEvent](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[status] [varchar](20) NOT NULL,
	[shiftScheduleId] [int] NULL,
 CONSTRAINT [PK_ShiftEvent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ShiftEvent]  WITH CHECK ADD  CONSTRAINT [FK_ShiftEvent_ShiftSchedule] FOREIGN KEY([shiftScheduleId])
REFERENCES [dbo].[ShiftSchedule] ([id])
GO

ALTER TABLE [dbo].[ShiftEvent] CHECK CONSTRAINT [FK_ShiftEvent_ShiftSchedule]
GO

