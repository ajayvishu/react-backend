--CREATE DATABASE TESTDB

USE TESTDB
GO

/****** Object:  Table [dbo].[TBLB_Student]    Script Date: 2/23/2024 2:57:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'TBLB_Student')
BEGIN
	CREATE TABLE [dbo].[TBLB_Student](
		[rollNumber] [int] IDENTITY(1,1) NOT NULL,
		[name] [varchar](50) NULL,
		[email] [varchar](50) NULL,
		[phone] [varchar](50) NULL,
		[image] [varchar](max) NULL
	)

	SET IDENTITY_INSERT [dbo].[TBLB_Student] ON 
	INSERT [dbo].[TBLB_Student] ([rollNumber], [name], [email], [phone], [image]) VALUES (1, N'developer', N'dev@gmail.com', N'9558767095', N'data:image/png;base64,iVBORw0KGgo')
	INSERT [dbo].[TBLB_Student] ([rollNumber], [name], [email], [phone], [image]) VALUES (2, N'ajay', N'ajay@gmail.com', N'1234567890', N'data:image/png;base64,iVBORw0KGgoAAA')
	SET IDENTITY_INSERT [dbo].[TBLB_Student] OFF
END
GO
/****** Object:  Table [dbo].[TBLB_User]    Script Date: 2/23/2024 2:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'TBLB_User')
BEGIN
	CREATE TABLE [dbo].[TBLB_User](
		[UserId] [int] IDENTITY(1,1) NOT NULL,
		[UserName] [varchar](50) NULL,
		[Password] [varchar](50) NULL,
		[EmailAddress] [varchar](50) NULL,
		[DateOfJoin] [datetime] NULL,
		[RefreshToken] [varchar](MAX) NULL
	)

	SET IDENTITY_INSERT [dbo].[TBLB_User] ON 
	INSERT [dbo].[TBLB_User] ([UserId], [UserName], [Password], [EmailAddress], [DateOfJoin]) VALUES (1, N'ajay', N'dev@123', N'dev@gmail.com', CAST(N'2024-02-08T18:46:09.717' AS DateTime),N'ByfElDGRC/5pxx0AofATpVa/5gawLTR+7rvizeZXro8=')
	SET IDENTITY_INSERT [dbo].[TBLB_User] OFF
END
GO