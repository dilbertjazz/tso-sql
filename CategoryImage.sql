USE [TechnicalSportsOne]
GO

ALTER TABLE [dbo].[CategoryImage] DROP CONSTRAINT [FK_CategoryImage_Images]
GO

ALTER TABLE [dbo].[CategoryImage] DROP CONSTRAINT [FK_CategoryImage_Categories]
GO

/****** Object:  Table [dbo].[CategoryImage]    Script Date: 5/12/2021 9:10:59 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoryImage]') AND type in (N'U'))
DROP TABLE [dbo].[CategoryImage]
GO

/****** Object:  Table [dbo].[CategoryImage]    Script Date: 5/12/2021 9:10:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CategoryImage](
	[CategoryId] [bigint] NOT NULL,
	[ImageId] [bigint] NOT NULL,
 CONSTRAINT [PK_CategoryImage] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CategoryImage]  WITH CHECK ADD  CONSTRAINT [FK_CategoryImage_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO

ALTER TABLE [dbo].[CategoryImage] CHECK CONSTRAINT [FK_CategoryImage_Categories]
GO

ALTER TABLE [dbo].[CategoryImage]  WITH CHECK ADD  CONSTRAINT [FK_CategoryImage_Images] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Images] ([ImageId])
GO

ALTER TABLE [dbo].[CategoryImage] CHECK CONSTRAINT [FK_CategoryImage_Images]
GO


