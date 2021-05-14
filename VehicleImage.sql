USE [TechnicalSportsOne]
GO

ALTER TABLE [dbo].[VehicleImage] DROP CONSTRAINT [FK_VehicleImage_Vehicles]
GO

ALTER TABLE [dbo].[VehicleImage] DROP CONSTRAINT [FK_VehicleImage_Images]
GO

/****** Object:  Table [dbo].[VehicleImage]    Script Date: 5/12/2021 8:26:31 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehicleImage]') AND type in (N'U'))
DROP TABLE [dbo].[VehicleImage]
GO

/****** Object:  Table [dbo].[VehicleImage]    Script Date: 5/12/2021 8:26:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VehicleImage](
	[VehicleId] [bigint] NOT NULL,
	[ImageId] [bigint] NOT NULL,
 CONSTRAINT [PK_VehicleImage] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC,
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[VehicleImage]  WITH CHECK ADD  CONSTRAINT [FK_VehicleImage_Images] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Images] ([ImageId])
GO

ALTER TABLE [dbo].[VehicleImage] CHECK CONSTRAINT [FK_VehicleImage_Images]
GO

ALTER TABLE [dbo].[VehicleImage]  WITH CHECK ADD  CONSTRAINT [FK_VehicleImage_Vehicles] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicles] ([VehicleId])
GO

ALTER TABLE [dbo].[VehicleImage] CHECK CONSTRAINT [FK_VehicleImage_Vehicles]
GO


