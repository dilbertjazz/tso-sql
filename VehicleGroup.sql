USE [TechnicalSportsOne]
GO

ALTER TABLE [dbo].[VehicleGroup] DROP CONSTRAINT [FK_VehicleGroup_Vehicles]
GO

ALTER TABLE [dbo].[VehicleGroup] DROP CONSTRAINT [FK_VehicleGroup_Groups]
GO

/****** Object:  Table [dbo].[VehicleGroup]    Script Date: 5/12/2021 8:25:27 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehicleGroup]') AND type in (N'U'))
DROP TABLE [dbo].[VehicleGroup]
GO

/****** Object:  Table [dbo].[VehicleGroup]    Script Date: 5/12/2021 8:25:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VehicleGroup](
	[VehicleId] [bigint] NOT NULL,
	[GroupId] [bigint] NOT NULL,
 CONSTRAINT [PK_VehicleGroup] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[VehicleGroup]  WITH CHECK ADD  CONSTRAINT [FK_VehicleGroup_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([GroupId])
GO

ALTER TABLE [dbo].[VehicleGroup] CHECK CONSTRAINT [FK_VehicleGroup_Groups]
GO

ALTER TABLE [dbo].[VehicleGroup]  WITH CHECK ADD  CONSTRAINT [FK_VehicleGroup_Vehicles] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicles] ([VehicleId])
GO

ALTER TABLE [dbo].[VehicleGroup] CHECK CONSTRAINT [FK_VehicleGroup_Vehicles]
GO


