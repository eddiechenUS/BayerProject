USE [BayerDevDb]
GO

/****** Object:  Table [dbo].[MaintenanceTicket]    Script Date: 9/10/2019 1:37:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MaintenanceTicket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [varchar](20) NOT NULL,
	[productionLine] [varchar](255) NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[assignedTo] [varchar](255) NULL,
	[type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MaintenanceTicket] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

