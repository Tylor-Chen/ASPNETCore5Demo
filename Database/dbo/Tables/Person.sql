﻿CREATE TABLE [dbo].[Person] (
    [ID]             INT            IDENTITY (1, 1) NOT NULL,
    [LastName]       NVARCHAR (50)  NOT NULL,
    [FirstName]      NVARCHAR (50)  NOT NULL,
    [HireDate]       DATETIME       NULL,
    [EnrollmentDate] DATETIME       NULL,
    [Discriminator]  NVARCHAR (128) DEFAULT ('Instructor') NOT NULL,
    [DateModified]   DATETIME2 (7)  NULL,
    [IsDeleted]      BIT            DEFAULT (CONVERT([bit],(0))) NOT NULL,
    CONSTRAINT [PK_dbo.Person] PRIMARY KEY CLUSTERED ([ID] ASC)
);

