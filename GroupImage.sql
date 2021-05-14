USE [TechnicalSportsOne]
GO

ALTER TABLE [dbo].[GroupImage] DROP CONSTRAINT [FK_GroupImage_Images]
GO

ALTER TABLE [dbo].[GroupImage] DROP CONSTRAINT [FK_GroupImage_Groups]
GO

/****** Object:  Table [dbo].[GroupImage]    Script Date: 5/12/2021 8:19:59 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupImage]') AND type in (N'U'))
DROP TABLE [dbo].[GroupImage]
GO

/****** Object:  Table [dbo].[GroupImage]    Script Date: 5/12/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GroupImage](
	[GroupId] [bigint] NOT NULL,
	[ImageId] [bigint] NOT NULL,
 CONSTRAINT [PK_GroupImage] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[GroupImage]  WITH CHECK ADD  CONSTRAINT [FK_GroupImage_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([GroupId])
GO

ALTER TABLE [dbo].[GroupImage] CHECK CONSTRAINT [FK_GroupImage_Groups]
GO

ALTER TABLE [dbo].[GroupImage]  WITH CHECK ADD  CONSTRAINT [FK_GroupImage_Images] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Images] ([ImageId])
GO

ALTER TABLE [dbo].[GroupImage] CHECK CONSTRAINT [FK_GroupImage_Images]
GO


