USE [TechnicalSportsOne]
GO

ALTER TABLE [dbo].[CategoryPart] DROP CONSTRAINT [FK_CategoryPart_Parts]
GO

ALTER TABLE [dbo].[CategoryPart] DROP CONSTRAINT [FK_CategoryPart_Categories]
GO

/****** Object:  Table [dbo].[CategoryPart]    Script Date: 5/12/2021 9:14:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoryPart]') AND type in (N'U'))
DROP TABLE [dbo].[CategoryPart]
GO

/****** Object:  Table [dbo].[CategoryPart]    Script Date: 5/12/2021 9:14:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CategoryPart](
	[CategoryId] [bigint] NOT NULL,
	[PartId] [bigint] NOT NULL,
 CONSTRAINT [PK_CategoryPart] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[PartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CategoryPart]  WITH CHECK ADD  CONSTRAINT [FK_CategoryPart_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO

ALTER TABLE [dbo].[CategoryPart] CHECK CONSTRAINT [FK_CategoryPart_Categories]
GO

ALTER TABLE [dbo].[CategoryPart]  WITH CHECK ADD  CONSTRAINT [FK_CategoryPart_Parts] FOREIGN KEY([PartId])
REFERENCES [dbo].[Parts] ([PartId])
GO

ALTER TABLE [dbo].[CategoryPart] CHECK CONSTRAINT [FK_CategoryPart_Parts]
GO


