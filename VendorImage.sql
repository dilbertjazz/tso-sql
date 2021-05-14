USE [TechnicalSportsOne]
GO

ALTER TABLE [dbo].[VendorImage] DROP CONSTRAINT [FK_VendorImage_Images]
GO

/****** Object:  Table [dbo].[VendorImage]    Script Date: 5/12/2021 10:59:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VendorImage]') AND type in (N'U'))
DROP TABLE [dbo].[VendorImage]
GO

/****** Object:  Table [dbo].[VendorImage]    Script Date: 5/12/2021 10:59:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VendorImage](
	[VenCode] [nvarchar] (32) NOT NULL,
	[ImageId] [bigint] NOT NULL,
 CONSTRAINT [PK_VendorImage] PRIMARY KEY CLUSTERED 
(
	[VenCode] ASC,
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[VendorImage]  WITH CHECK ADD  CONSTRAINT [FK_VendorImage_Images] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Images] ([ImageId])
GO

ALTER TABLE [dbo].[VendorImage] CHECK CONSTRAINT [FK_VendorImage_Images]
GO


