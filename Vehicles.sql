USE [TechnicalSportsOne]
GO

ALTER TABLE [dbo].[VehicleGroup] DROP CONSTRAINT [FK_VehicleGroup_Vehicles]
GO

ALTER TABLE [dbo].[VehiclePart] DROP CONSTRAINT [FK_VehiclePart_Vehicles]
GO

ALTER TABLE [dbo].[VehicleImage] DROP CONSTRAINT [FK_VehicleImage_Vehicles]
GO

/****** Object:  Table [dbo].[Vehicles]    Script Date: 5/9/2021 7:12:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vehicles]') AND type in (N'U'))
DROP TABLE [dbo].[Vehicles]
GO

/****** Object:  Table [dbo].[Vehicles]    Script Date: 5/9/2021 7:12:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Vehicles](
	[VehicleId] [bigint] IDENTITY(1,1) NOT NULL,
	[Make] [nvarchar](32) NULL,
	[Model] [nvarchar](32) NULL,
	[Year] [nvarchar](4) NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[VehicleGroup]  WITH CHECK ADD  CONSTRAINT [FK_VehicleGroup_Vehicles] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicles] ([VehicleId])
GO

ALTER TABLE [dbo].[VehicleGroup] CHECK CONSTRAINT [FK_VehicleGroup_Vehicles]
GO

ALTER TABLE [dbo].[VehiclePart]  WITH CHECK ADD  CONSTRAINT [FK_VehiclePart_Vehicles] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicles] ([VehicleId])
GO

ALTER TABLE [dbo].[VehiclePart] CHECK CONSTRAINT [FK_VehiclePart_Vehicles]
GO

ALTER TABLE [dbo].[VehicleImage]  WITH CHECK ADD  CONSTRAINT [FK_VehicleImage_Vehicles] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicles] ([VehicleId])
GO

ALTER TABLE [dbo].[VehicleImage] CHECK CONSTRAINT [FK_VehicleImage_Vehicles]
GO

INSERT INTO [dbo].[Vehicles]
           ( [Make]
			,[Model]
			,[Year])
     VALUES
		   ('Honda', 'RS125R', '1989'),
		   ('Honda', 'RS125R', '1990'),
		   ('Honda', 'RS125R', '1991'),
		   ('Honda', 'RS125R', '1992'),
		   ('Honda', 'RS125R', '1993'),
		   ('Honda', 'RS125R', '1994'),
		   ('Honda', 'RS125R', '1995'),
		   ('Honda', 'RS125R', '1996'),
		   ('Honda', 'RS125R', '1997'),
		   ('Honda', 'RS125R', '1998'),
		   ('Honda', 'RS125R', '1999'),
		   ('Honda', 'RS125R', '2000'),
		   ('Honda', 'RS125R', '2001'),
		   ('Honda', 'RS125R', '2002'),
		   ('Honda', 'RS125R', '2003'),
		   ('Honda', 'RS125R', '2004')
		   ;
GO