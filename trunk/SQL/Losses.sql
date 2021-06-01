SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE Losses (
	id int NOT NULL,
	name VARCHAR(255) NOT NULL,
	[comment] NVARCHAR(2000),
	category VARCHAR(20),
	[timestamp] DATETIME NOT NULL,
	lostReason int FOREIGN KEY REFERENCES LossReasonCodes(id),
	PRIMARY KEY (id)
)

