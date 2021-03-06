USE [project]
GO
/****** Object:  Table [dbo].[login]    Script Date: 04/28/2020 02:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[Name] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[login] ([Name], [Password]) VALUES (N'hifza', N'hifza12')
INSERT [dbo].[login] ([Name], [Password]) VALUES (N'hifza', N'hifza12')
INSERT [dbo].[login] ([Name], [Password]) VALUES (N'hifza', N'hifza12')
INSERT [dbo].[login] ([Name], [Password]) VALUES (N'abc', N'abc12')
INSERT [dbo].[login] ([Name], [Password]) VALUES (N'abc', N'abc12')
/****** Object:  Table [dbo].[manage_customer]    Script Date: 04/28/2020 02:04:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manage_customer](
	[Customerid] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[orderid] [int] NOT NULL,
	[purchasedate] [datetime] NOT NULL,
	[expirydate] [datetime] NOT NULL,
 CONSTRAINT [PK_manage_customer] PRIMARY KEY CLUSTERED 
(
	[Customerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[manage_cus]    Script Date: 04/28/2020 02:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[manage_cus]

@Customerid int,
@Name  nvarchar(50),
@orderid  nvarchar(50),
@purchasedate  datetime,
@expirydate    datetime,
@deleiverycharges  int

As

insert into manage_customer (Customerid,Name,orderid,purchasedate,expirydate,deleiverycharges) values(@Customerid,@Name,@orderid,@purchasedate,@expirydate,@deleiverycharges)
GO
/****** Object:  StoredProcedure [dbo].[login1]    Script Date: 04/28/2020 02:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[login1]
@Name nvarchar(50),
@Password nvarchar (50)
AS

insert into login (Name,Password) values (@Name,@Password)
GO
