USE [BayerDevDb]
GO

/****** Object:  Table [dbo].[SafetyIssue]    Script Date: 9/3/2019 2:16:07 PM ******/
DROP TABLE [dbo].[SafetyIssue]
GO

/****** Object:  Table [dbo].[SafetyIssue]    Script Date: 9/3/2019 2:16:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SafetyIssue](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](20) NOT NULL,
	[comment] [nvarchar](2000) NULL,
	[productionLine] [varchar](255) NOT NULL,
	[timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_SafetyIssue] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

