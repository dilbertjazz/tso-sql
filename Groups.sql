USE [TechnicalSportsOne]
GO

ALTER TABLE [dbo].[GroupPart] DROP CONSTRAINT [FK_GroupPart_Groups]
GO

ALTER TABLE [dbo].[VehicleGroup] DROP CONSTRAINT [FK_VehicleGroup_Groups]
GO

ALTER TABLE [dbo].[GroupImage] DROP CONSTRAINT [FK_GroupImage_Groups]
GO

/****** Object:  Table [dbo].[Groups]    Script Date: 5/9/2021 7:04:42 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Groups]') AND type in (N'U'))
DROP TABLE [dbo].[Groups]
GO

/****** Object:  Table [dbo].[Groups]    Script Date: 5/9/2021 7:04:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Groups](
	[GroupId] [bigint] NOT NULL,
	[ListNbr] [nvarchar](4) Not NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[GroupPart]  WITH CHECK ADD  CONSTRAINT [FK_GroupPart_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([GroupId])
GO

ALTER TABLE [dbo].[GroupPart] CHECK CONSTRAINT [FK_GroupPart_Groups]
GO

ALTER TABLE [dbo].[VehicleGroup]  WITH CHECK ADD  CONSTRAINT [FK_VehicleGroup_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([GroupId])
GO

ALTER TABLE [dbo].[VehicleGroup] CHECK CONSTRAINT [FK_VehicleGroup_Groups]
GO

ALTER TABLE [dbo].[GroupImage]  WITH CHECK ADD  CONSTRAINT [FK_GroupImage_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([GroupId])
GO

ALTER TABLE [dbo].[GroupImage] CHECK CONSTRAINT [FK_GroupImage_Groups]
GO

