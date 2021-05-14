USE [TechnicalSportsOne]
GO

ALTER TABLE [dbo].[GroupPart] DROP CONSTRAINT [FK_GroupPart_Parts]
GO

ALTER TABLE [dbo].[GroupPart] DROP CONSTRAINT [FK_GroupPart_Groups]
GO

/****** Object:  Table [dbo].[GroupPart]    Script Date: 5/12/2021 8:21:46 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupPart]') AND type in (N'U'))
DROP TABLE [dbo].[GroupPart]
GO

/****** Object:  Table [dbo].[GroupPart]    Script Date: 5/12/2021 8:21:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GroupPart](
	[GroupId] [bigint] NOT NULL,
	[PartId] [bigint] NOT NULL,
	[Ref] [nvarchar](50) NULL,
	[Qty] [int] NULL,
 CONSTRAINT [PK_GroupPart] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[PartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[GroupPart]  WITH CHECK ADD  CONSTRAINT [FK_GroupPart_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([GroupId])
GO

ALTER TABLE [dbo].[GroupPart] CHECK CONSTRAINT [FK_GroupPart_Groups]
GO

ALTER TABLE [dbo].[GroupPart]  WITH CHECK ADD  CONSTRAINT [FK_GroupPart_Parts] FOREIGN KEY([PartId])
REFERENCES [dbo].[Parts] ([PartId])
GO

ALTER TABLE [dbo].[GroupPart] CHECK CONSTRAINT [FK_GroupPart_Parts]
GO


