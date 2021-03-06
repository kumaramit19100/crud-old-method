USE [master]
GO
/****** Object:  Database [Crud_OldMehthod]    Script Date: 4/27/2022 4:34:31 PM ******/
CREATE DATABASE [Crud_OldMehthod]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Crud_OldMehthod', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Crud_OldMehthod.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Crud_OldMehthod_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Crud_OldMehthod_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Crud_OldMehthod] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Crud_OldMehthod].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Crud_OldMehthod] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET ARITHABORT OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Crud_OldMehthod] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Crud_OldMehthod] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Crud_OldMehthod] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Crud_OldMehthod] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Crud_OldMehthod] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Crud_OldMehthod] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Crud_OldMehthod] SET  MULTI_USER 
GO
ALTER DATABASE [Crud_OldMehthod] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Crud_OldMehthod] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Crud_OldMehthod] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Crud_OldMehthod] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Crud_OldMehthod]
GO
/****** Object:  StoredProcedure [dbo].[sp_register]    Script Date: 4/27/2022 4:34:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_register]
@Id int=0,
@Action int=0,
@Name varchar(50)=null,
@Date varchar(50)=null,
@Number varchar(50)=null,
@Email varchar(50)
as
begin
	if(@Action='1')
	begin
		insert into tbl_register(Name,Date,Number,Email)values(@Name,@Date,@Number,@Email)
	end
end

GO
/****** Object:  Table [dbo].[tbl_register]    Script Date: 4/27/2022 4:34:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_register](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Number] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK__tbl_regi__3214EC07E76F0721] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_register] ON 

INSERT [dbo].[tbl_register] ([Id], [Name], [Date], [Number], [Email]) VALUES (1, N'Hello', N'2022-04-01', N'12314', N'a@gmail.com')
SET IDENTITY_INSERT [dbo].[tbl_register] OFF
USE [master]
GO
ALTER DATABASE [Crud_OldMehthod] SET  READ_WRITE 
GO
