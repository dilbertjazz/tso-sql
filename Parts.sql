USE [TechnicalSportsOne]
GO

ALTER TABLE [dbo].[VehiclePart] DROP CONSTRAINT [FK_VehiclePart_Parts]
GO

ALTER TABLE [dbo].[PartImage] DROP CONSTRAINT [FK_PartImage_Parts]
GO

ALTER TABLE [dbo].[GroupPart] DROP CONSTRAINT [FK_GroupPart_Parts]
GO

ALTER TABLE [dbo].[CategoryPart] DROP CONSTRAINT [FK_CategoryPart_Parts]
GO

/****** Object:  Table [dbo].[Parts]    Script Date: 5/9/2021 7:11:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parts]') AND type in (N'U'))
DROP TABLE [dbo].[Parts]
GO

/****** Object:  Table [dbo].[Parts]    Script Date: 5/9/2021 7:11:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Parts](
	[PartId] [bigint] IDENTITY(1,1) NOT NULL,
	[PartNum] [nvarchar](32) NULL,
	[VenCode] [nvarchar](32) NULL,
	[Description] [nvarchar](max) NULL,
	[Height] [int] NULL,
	[Width] [int] NULL,
	[Lenght] [int] NULL,
	[Weight] [int] NULL,
 CONSTRAINT [PK_Parts] PRIMARY KEY CLUSTERED 
(
	[PartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[VehiclePart]  WITH CHECK ADD  CONSTRAINT [FK_VehiclePart_Parts] FOREIGN KEY([PartId])
REFERENCES [dbo].[Parts] ([PartId])
GO

ALTER TABLE [dbo].[VehiclePart] CHECK CONSTRAINT [FK_VehiclePart_Parts]
GO


ALTER TABLE [dbo].[PartImage]  WITH CHECK ADD  CONSTRAINT [FK_PartImage_Parts] FOREIGN KEY([PartId])
REFERENCES [dbo].[Parts] ([PartId])
GO

ALTER TABLE [dbo].[PartImage] CHECK CONSTRAINT [FK_PartImage_Parts]
GO

ALTER TABLE [dbo].[GroupPart]  WITH CHECK ADD  CONSTRAINT [FK_GroupPart_Parts] FOREIGN KEY([PartId])
REFERENCES [dbo].[Parts] ([PartId])
GO

ALTER TABLE [dbo].[GroupPart] CHECK CONSTRAINT [FK_GroupPart_Parts]
GO

ALTER TABLE [dbo].[CategoryPart]  WITH CHECK ADD  CONSTRAINT [FK_CategoryPart_Parts] FOREIGN KEY([PartId])
REFERENCES [dbo].[Parts] ([PartId])
GO

ALTER TABLE [dbo].[CategoryPart] CHECK CONSTRAINT [FK_CategoryPart_Parts]
GO