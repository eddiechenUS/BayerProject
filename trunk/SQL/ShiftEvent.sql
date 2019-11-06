/****** Object:  Table [dbo].[ShiftEvent]    Script Date: 11/6/2019 8:58:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ShiftEvent](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[category] [varchar](20) NOT NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
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