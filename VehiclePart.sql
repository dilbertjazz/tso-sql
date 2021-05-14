USE [TechnicalSportsOne]
GO

ALTER TABLE [dbo].[VehiclePart] DROP CONSTRAINT [FK_VehiclePart_Vehicles]
GO

ALTER TABLE [dbo].[VehiclePart] DROP CONSTRAINT [FK_VehiclePart_Parts]
GO

/****** Object:  Table [dbo].[VehiclePart]    Script Date: 5/12/2021 8:27:35 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehiclePart]') AND type in (N'U'))
DROP TABLE [dbo].[VehiclePart]
GO

/****** Object:  Table [dbo].[VehiclePart]    Script Date: 5/12/2021 8:27:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VehiclePart](
	[VehicleId] [bigint] NOT NULL,
	[PartId] [bigint] NOT NULL,
 CONSTRAINT [PK_VehiclePart] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC,
	[PartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[VehiclePart]  WITH CHECK ADD  CONSTRAINT [FK_VehiclePart_Parts] FOREIGN KEY([PartId])
REFERENCES [dbo].[Parts] ([PartId])
GO

ALTER TABLE [dbo].[VehiclePart] CHECK CONSTRAINT [FK_VehiclePart_Parts]
GO

ALTER TABLE [dbo].[VehiclePart]  WITH CHECK ADD  CONSTRAINT [FK_VehiclePart_Vehicles] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicles] ([VehicleId])
GO

ALTER TABLE [dbo].[VehiclePart] CHECK CONSTRAINT [FK_VehiclePart_Vehicles]
GO


