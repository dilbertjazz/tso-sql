USE [TechnicalSportsOne]
GO

ALTER TABLE [dbo].[GroupImage] DROP CONSTRAINT [FK_GroupImage_Images]
GO

ALTER TABLE [dbo].[PartImage] DROP CONSTRAINT [FK_PartImage_Images]
GO

ALTER TABLE [dbo].[VehicleImage] DROP CONSTRAINT [FK_VehicleImage_Images]
GO

ALTER TABLE [dbo].[VendorImage] DROP CONSTRAINT [FK_VendorImage_Images]
GO

ALTER TABLE [dbo].[CategoryImage] DROP CONSTRAINT [FK_CategoryImage_Images]
GO

/****** Object:  Table [dbo].[Parts]    Script Date: 5/10/2021 2:45:23 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Images]') AND type in (N'U'))
DROP TABLE [dbo].[Images]
GO

/****** Object:  Table [dbo].[Parts]    Script Date: 5/10/2021 2:45:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Images](
	[ImageId] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](32) NULL,
	[Description] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[AltImage] [nvarchar](max) NULL,
	[Copyright] [nvarchar](max) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[GroupImage]  WITH CHECK ADD  CONSTRAINT [FK_GroupImage_Images] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Images] ([ImageId])
GO

ALTER TABLE [dbo].[GroupImage] CHECK CONSTRAINT [FK_GroupImage_Images]
GO

ALTER TABLE [dbo].[PartImage]  WITH CHECK ADD  CONSTRAINT [FK_PartImage_Images] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Images] ([ImageId])
GO

ALTER TABLE [dbo].[PartImage] CHECK CONSTRAINT [FK_PartImage_Images]
GO

ALTER TABLE [dbo].[VehicleImage]  WITH CHECK ADD  CONSTRAINT [FK_VehicleImage_Images] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Images] ([ImageId])
GO

ALTER TABLE [dbo].[VehicleImage] CHECK CONSTRAINT [FK_VehicleImage_Images]
GO


ALTER TABLE [dbo].[VendorImage]  WITH CHECK ADD  CONSTRAINT [FK_VendorImage_Images] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Images] ([ImageId])
GO

ALTER TABLE [dbo].[VendorImage] CHECK CONSTRAINT [FK_VendorImage_Images]
GO


ALTER TABLE [dbo].[CategoryImage]  WITH CHECK ADD  CONSTRAINT [FK_CategoryImage_Images] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Images] ([ImageId])
GO

ALTER TABLE [dbo].[CategoryImage] CHECK CONSTRAINT [FK_CategoryImage_Images]
GO