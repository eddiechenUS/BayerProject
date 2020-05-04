/****** Object:  Table [dbo].[Delay]    Script Date: 9/10/2019 1:37:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Delay](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](20) NOT NULL,
	[source] [varchar](255) NULL,
	[startTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[totalDurationMs] [long] NULL,
	[reasonCode] [varchar](100) NULL,
	[description] [nvarchar](2000) NULL,
	[shiftScheduleId] [int] NULL,
 CONSTRAINT [PK_Delay] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Delay]  WITH CHECK ADD  CONSTRAINT [FK_Delay_ShiftSchedule] FOREIGN KEY([shiftScheduleId])
REFERENCES [dbo].[ShiftSchedule] ([id])
ON DELETE SET NULL
GO

ALTER TABLE [dbo].[Delay] CHECK CONSTRAINT [FK_Delay_ShiftSchedule]
GO

