/****** Object:  Table [dbo].[ProductionQuantityChanges]    Script Date: 05/21/2020 9:45:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductionQuantityChanges](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productionPlanId] [int] NOT NULL,
	[targetQuantity] [float] NOT NULL,
	[originalTargetQuantity] [float] NOT NULL,
	[commentAdded] [nvarchar](4000) NOT NULL,
	[userName] [varchar](255) NOT NULL,
	[modificationTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ProductionQuantityChanges] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductionQuantityChanges]  WITH CHECK ADD  CONSTRAINT [FK_ProductionQuantityChanges_productionPlanId] FOREIGN KEY([productionPlanId])
REFERENCES [dbo].[ProductionPlan] ([id])
GO

ALTER TABLE [dbo].[ProductionQuantityChanges] CHECK CONSTRAINT [FK_ProductionQuantityChanges_productionPlanId]
GO