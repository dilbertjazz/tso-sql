USE [TechnicalSportsOne]
GO

ALTER TABLE [dbo].[PartImage] DROP CONSTRAINT [FK_PartImage_Parts]
GO

ALTER TABLE [dbo].[PartImage] DROP CONSTRAINT [FK_PartImage_Images]
GO

/****** Object:  Table [dbo].[PartImage]    Script Date: 5/12/2021 8:24:10 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PartImage]') AND type in (N'U'))
DROP TABLE [dbo].[PartImage]
GO

/****** Object:  Table [dbo].[PartImage]    Script Date: 5/12/2021 8:24:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PartImage](
	[PartId] [bigint] NOT NULL,
	[ImageId] [bigint] NOT NULL,
	[PartNum] [nvarchar](32) NULL,
	[VenCode] [nvarchar](32) NULL,
 CONSTRAINT [PK_PartImage] PRIMARY KEY CLUSTERED 
(
	[PartId] ASC,
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PartImage]  WITH CHECK ADD  CONSTRAINT [FK_PartImage_Images] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Images] ([ImageId])
GO

ALTER TABLE [dbo].[PartImage] CHECK CONSTRAINT [FK_PartImage_Images]
GO

ALTER TABLE [dbo].[PartImage]  WITH CHECK ADD  CONSTRAINT [FK_PartImage_Parts] FOREIGN KEY([PartId])
REFERENCES [dbo].[Parts] ([PartId])
GO

ALTER TABLE [dbo].[PartImage] CHECK CONSTRAINT [FK_PartImage_Parts]
GO


