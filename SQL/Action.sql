/****** Object:  Table [dbo].[Action]    Script Date: 9/10/2019 1:37:36 PM ******/
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

