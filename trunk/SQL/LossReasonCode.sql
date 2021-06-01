SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE LossReasonCodes (
	id int IDENTITY(1,1) NOT NULL,
	code NVARCHAR(100) NOT NULL,
	localizationTokenName VARCHAR(255),
	PRIMARY KEY (id)
)

CREATE TABLE LossReasonCodesTree (
	id int IDENTITY(1,1) NOT NULL,
	childId int FOREIGN KEY REFERENCES LossReasonCodes(id),
	childLocalizationTokenName VARCHAR(255),
	parentId int FOREIGN KEY REFERENCES LossReasonCodes(id),
	PRIMARY KEY (id)
)
