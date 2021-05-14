USE [TechnicalSportsOne]
GO

ALTER TABLE [dbo].[CategoryImage] DROP CONSTRAINT [FK_CategoryImage_Categories]
GO

ALTER TABLE [dbo].[CategoryPart] DROP CONSTRAINT [FK_CategoryPart_Categories]
GO

/****** Object:  Table [dbo].[Categories]    Script Date: 5/12/2021 10:29:55 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
DROP TABLE [dbo].[Categories]
GO

/****** Object:  Table [dbo].[Categories]    Script Date: 5/12/2021 10:29:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Categories](
	[CategoryId] [bigint] NOT NULL,
	[ListNbr] [nvarchar] (4) null,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[CategoryImage]  WITH CHECK ADD  CONSTRAINT [FK_CategoryImage_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO

ALTER TABLE [dbo].[CategoryImage] CHECK CONSTRAINT [FK_CategoryImage_Categories]
GO

ALTER TABLE [dbo].[CategoryPart]  WITH CHECK ADD  CONSTRAINT [FK_CategoryPart_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO

ALTER TABLE [dbo].[CategoryPart] CHECK CONSTRAINT [FK_CategoryPart_Categories]
GO
