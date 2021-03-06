USE [posmanagment]
GO
/****** Object:  Table [dbo].[registration]    Script Date: 04/25/2020 17:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[registration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_registration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[registration] ON
INSERT [dbo].[registration] ([ID], [UserName], [Name], [Address], [Password]) VALUES (1, N'abc', N'bjjb', N'xyz', N'abcd')
INSERT [dbo].[registration] ([ID], [UserName], [Name], [Address], [Password]) VALUES (2, N'hifza', N'hif', N'anwar', N'new karachi ')
INSERT [dbo].[registration] ([ID], [UserName], [Name], [Address], [Password]) VALUES (3, N'ahmed', N'qwe', N'anwar', N'cbd')
INSERT [dbo].[registration] ([ID], [UserName], [Name], [Address], [Password]) VALUES (4, N'', N'', N'', N'')
INSERT [dbo].[registration] ([ID], [UserName], [Name], [Address], [Password]) VALUES (5, N'', N'', N'', N'')
INSERT [dbo].[registration] ([ID], [UserName], [Name], [Address], [Password]) VALUES (6, N'hifza', N'hifa12', N'anwar', N'h')
INSERT [dbo].[registration] ([ID], [UserName], [Name], [Address], [Password]) VALUES (7, N'qasim', N'qasim', N'hassan', N'gulshan ')
INSERT [dbo].[registration] ([ID], [UserName], [Name], [Address], [Password]) VALUES (8, N'hifza12', N'karachi', N'hifza', N'hif')
INSERT [dbo].[registration] ([ID], [UserName], [Name], [Address], [Password]) VALUES (9, N'ahmed12', N'karachi', N'ahmed', N'ahmed12')
INSERT [dbo].[registration] ([ID], [UserName], [Name], [Address], [Password]) VALUES (10, N'dv12', N'fgj', N'fg', N'a1')
SET IDENTITY_INSERT [dbo].[registration] OFF
/****** Object:  Table [dbo].[category_tbl]    Script Date: 04/25/2020 17:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[category_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [varchar](max) NOT NULL,
 CONSTRAINT [PK_category_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[useradd]    Script Date: 04/25/2020 17:40:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[useradd]
@ID int,
@Category varchar(MAX)

As
insert into catecategory_tbl(Category) values (@Category)
GO
/****** Object:  StoredProcedure [dbo].[add_cat]    Script Date: 04/25/2020 17:40:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_cat]
@ID int,
@Category varchar(MAX)

AS
insert into catecategory_tbl(Category) values (@Category)
GO
/****** Object:  StoredProcedure [dbo].[addcategory]    Script Date: 04/25/2020 17:40:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[addcategory]
@ID int,
@Cateory varchar(MAX)

As
Insert into category_tbl(Category)values(@Cateory)
GO
