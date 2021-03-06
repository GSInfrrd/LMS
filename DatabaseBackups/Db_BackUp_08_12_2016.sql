USE [LeaveManagementSystem]
GO
ALTER TABLE [dbo].[Workflow] DROP CONSTRAINT [FK_MasterDataValueStatus_Workflow]
GO
ALTER TABLE [dbo].[Workflow] DROP CONSTRAINT [FK_EmployeeLeaveTransaction_Workflow]
GO
ALTER TABLE [dbo].[Workflow] DROP CONSTRAINT [FK_EmployeeDetailsId_Workflow]
GO
ALTER TABLE [dbo].[UserAccount] DROP CONSTRAINT [FK_EmployeeDetails_UserAccount]
GO
ALTER TABLE [dbo].[MasterDataValue] DROP CONSTRAINT [FK_MasterDataType_MasterDataValue]
GO
ALTER TABLE [dbo].[LeaveMaster] DROP CONSTRAINT [FK_MasterDataValue_LeaveMaster]
GO
ALTER TABLE [dbo].[EmployeeProjectDetail] DROP CONSTRAINT [FK_MasterDataValue_EmployeeProjectDetail1]
GO
ALTER TABLE [dbo].[EmployeeProjectDetail] DROP CONSTRAINT [FK_EmployeeDetails_EmployeeProjectDetail]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransactionHistory] DROP CONSTRAINT [FK_MasterDataValueStatus_EmployeeLeaveTransactionHistory]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransactionHistory] DROP CONSTRAINT [FK_MasterDataValue_EmployeeLeaveTransactionHistory]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransactionHistory] DROP CONSTRAINT [FK_EmployeeDetails_EmployeeLeaveTransactionHistory]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransaction] DROP CONSTRAINT [FK_MasterDataValueStatus_EmployeeLeaveTransaction]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransaction] DROP CONSTRAINT [FK_MasterDataValue_EmployeeLeaveTransaction]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransaction] DROP CONSTRAINT [FK_EmployeeDetails_EmployeeLeaveTransaction]
GO
ALTER TABLE [dbo].[EmployeeDetails] DROP CONSTRAINT [FK_MasterDataValue_EmployeeDetails]
GO
ALTER TABLE [dbo].[EmployeeContactDetails] DROP CONSTRAINT [FK_MasterDataValue_EmployeeContactDetails]
GO
ALTER TABLE [dbo].[EmployeeContactDetails] DROP CONSTRAINT [FK_EmpDetails_EmployeeContactDetails]
GO
ALTER TABLE [dbo].[Workflow] DROP CONSTRAINT [DF_Workflow_CreatedDate]
GO
ALTER TABLE [dbo].[Holidays] DROP CONSTRAINT [DF_Holidays_CreatedDate]
GO
ALTER TABLE [dbo].[Holidays] DROP CONSTRAINT [DF_Holidays_Year]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransactionHistory] DROP CONSTRAINT [DF_EmployeeLeaveTransactionHistory_CreatedDate]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransaction] DROP CONSTRAINT [DF_EmployeeLeaveTransaction_CreatedDate]
GO
ALTER TABLE [dbo].[EmployeeContactDetails] DROP CONSTRAINT [DF_EmployeeContactDetails_CreatedDate]
GO
/****** Object:  Table [dbo].[Workflow]    Script Date: 12/8/2016 10:07:58 AM ******/
DROP TABLE [dbo].[Workflow]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 12/8/2016 10:07:58 AM ******/
DROP TABLE [dbo].[UserAccount]
GO
/****** Object:  Table [dbo].[MasterDataValue]    Script Date: 12/8/2016 10:07:58 AM ******/
DROP TABLE [dbo].[MasterDataValue]
GO
/****** Object:  Table [dbo].[MasterDataType]    Script Date: 12/8/2016 10:07:58 AM ******/
DROP TABLE [dbo].[MasterDataType]
GO
/****** Object:  Table [dbo].[LeaveMaster]    Script Date: 12/8/2016 10:07:58 AM ******/
DROP TABLE [dbo].[LeaveMaster]
GO
/****** Object:  Table [dbo].[Holidays]    Script Date: 12/8/2016 10:07:58 AM ******/
DROP TABLE [dbo].[Holidays]
GO
/****** Object:  Table [dbo].[EmployeeProjectDetail]    Script Date: 12/8/2016 10:07:58 AM ******/
DROP TABLE [dbo].[EmployeeProjectDetail]
GO
/****** Object:  Table [dbo].[EmployeeLeaveTransactionHistory]    Script Date: 12/8/2016 10:07:58 AM ******/
DROP TABLE [dbo].[EmployeeLeaveTransactionHistory]
GO
/****** Object:  Table [dbo].[EmployeeLeaveTransaction]    Script Date: 12/8/2016 10:07:58 AM ******/
DROP TABLE [dbo].[EmployeeLeaveTransaction]
GO
/****** Object:  Table [dbo].[EmployeeDetails]    Script Date: 12/8/2016 10:07:58 AM ******/
DROP TABLE [dbo].[EmployeeDetails]
GO
/****** Object:  Table [dbo].[EmployeeContactDetails]    Script Date: 12/8/2016 10:07:58 AM ******/
DROP TABLE [dbo].[EmployeeContactDetails]
GO
USE [master]
GO
/****** Object:  Database [LeaveManagementSystem]    Script Date: 12/8/2016 10:07:58 AM ******/
DROP DATABASE [LeaveManagementSystem]
GO
/****** Object:  Database [LeaveManagementSystem]    Script Date: 12/8/2016 10:07:58 AM ******/
CREATE DATABASE [LeaveManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LeaveManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\LeaveManagementSystem.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LeaveManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\LeaveManagementSystem_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LeaveManagementSystem] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LeaveManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LeaveManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LeaveManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LeaveManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LeaveManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LeaveManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LeaveManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LeaveManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [LeaveManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LeaveManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LeaveManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LeaveManagementSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LeaveManagementSystem] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LeaveManagementSystem]
GO
/****** Object:  Table [dbo].[EmployeeContactDetails]    Script Date: 12/8/2016 10:07:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeContactDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RefContactType] [int] NOT NULL,
	[ContactDetails] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[RefEmpId] [int] NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_EmployeeContactDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeDetails]    Script Date: 12/8/2016 10:07:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[RefRoleId] [int] NOT NULL,
	[DateOfJoining] [datetime2](7) NULL,
	[ManagerId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL CONSTRAINT [DF_EmployeeDetails_CreatedDate]  DEFAULT (getdate()),
	[ModifiedDate] [datetime2](7) NULL,
	[Experience] [int] NULL DEFAULT ('0'),
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[EmpNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_EmployeeDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeLeaveTransaction]    Script Date: 12/8/2016 10:07:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeLeaveTransaction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RefEmployeeId] [int] NOT NULL,
	[FromDate] [datetime2](7) NOT NULL,
	[ToDate] [datetime2](7) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[RefStatus] [int] NOT NULL,
	[NumberOfWorkingDays] [int] NOT NULL,
	[RefLeaveType] [int] NOT NULL,
	[EmployeeComment] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_EmployeeLeaveTransaction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeLeaveTransactionHistory]    Script Date: 12/8/2016 10:07:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeLeaveTransactionHistory](
	[Id] [bigint] NOT NULL,
	[RefEmployeeId] [int] NOT NULL,
	[FromDate] [datetime2](7) NOT NULL,
	[ToDate] [datetime2](7) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[RefStatus] [int] NOT NULL,
	[NumberOfWorkingDays] [int] NOT NULL,
	[RefLeaveType] [int] NOT NULL,
	[EmployeeComment] [nvarchar](max) NULL,
	[ManagerComment] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EmployeeLeaveTransactionHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeProjectDetail]    Script Date: 12/8/2016 10:07:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeProjectDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RefEmployeeId] [int] NOT NULL,
	[RefProjectId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL CONSTRAINT [DF_EmployeeProjectDetail_CreatedDate]  DEFAULT (getdate()),
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_EmployeeProjectDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Holidays]    Script Date: 12/8/2016 10:07:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Holidays](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Year] [bigint] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Holidays] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeaveMaster]    Script Date: 12/8/2016 10:07:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RefLeaveType] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Count] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL CONSTRAINT [DF_LeaveMaster_CreatedDate]  DEFAULT (getdate()),
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_LeaveMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MasterDataType]    Script Date: 12/8/2016 10:07:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterDataType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MasterDataType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MasterDataValue]    Script Date: 12/8/2016 10:07:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterDataValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RefMasterType] [int] NOT NULL,
	[Value] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MasterDataValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 12/8/2016 10:07:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Lastlogin] [datetime2](7) NULL,
	[RefEmployeeId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL CONSTRAINT [DF_UserAccount_CreatedDate]  DEFAULT (getdate()),
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Workflow]    Script Date: 12/8/2016 10:07:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workflow](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RefLeaveTransactionId] [bigint] NOT NULL,
	[RefApproverId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[RefStatus] [int] NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ManagerComments] [nvarchar](max) NULL,
 CONSTRAINT [PK_Workflow] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[EmployeeDetails] ON 

GO
INSERT [dbo].[EmployeeDetails] ([Id], [Name], [RefRoleId], [DateOfJoining], [ManagerId], [CreatedDate], [ModifiedDate], [Experience], [CreatedBy], [ModifiedBy], [EmpNumber]) VALUES (1, N'Anu', 3, CAST(N'2016-12-12 00:00:00.0000000' AS DateTime2), 3, CAST(N'2016-12-05 11:27:14.5130000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[EmployeeDetails] ([Id], [Name], [RefRoleId], [DateOfJoining], [ManagerId], [CreatedDate], [ModifiedDate], [Experience], [CreatedBy], [ModifiedBy], [EmpNumber]) VALUES (3, N'Girija', 2, CAST(N'2015-12-12 00:00:00.0000000' AS DateTime2), NULL, CAST(N'2016-12-06 14:02:29.4330000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[EmployeeDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeProjectDetail] ON 

GO
INSERT [dbo].[EmployeeProjectDetail] ([Id], [RefEmployeeId], [RefProjectId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (1, 1, 4, CAST(N'2016-12-06 10:48:47.8300000' AS DateTime2), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[EmployeeProjectDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[LeaveMaster] ON 

GO
INSERT [dbo].[LeaveMaster] ([Id], [RefLeaveType], [Description], [Count], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (1, 7, N'If you have any Health Issues', 12, CAST(N'2016-12-06 14:07:56.5030000' AS DateTime2), NULL, NULL, NULL)
GO
INSERT [dbo].[LeaveMaster] ([Id], [RefLeaveType], [Description], [Count], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (2, 8, N'Normal leave', 20, CAST(N'2016-12-06 14:08:09.8530000' AS DateTime2), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[LeaveMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[MasterDataType] ON 

GO
INSERT [dbo].[MasterDataType] ([Id], [Type]) VALUES (1, N'Role')
GO
INSERT [dbo].[MasterDataType] ([Id], [Type]) VALUES (2, N'ProjectName')
GO
INSERT [dbo].[MasterDataType] ([Id], [Type]) VALUES (3, N'LeaveType')
GO
SET IDENTITY_INSERT [dbo].[MasterDataType] OFF
GO
SET IDENTITY_INSERT [dbo].[MasterDataValue] ON 

GO
INSERT [dbo].[MasterDataValue] ([Id], [RefMasterType], [Value]) VALUES (1, 1, N'Admin/Hr')
GO
INSERT [dbo].[MasterDataValue] ([Id], [RefMasterType], [Value]) VALUES (2, 1, N'Manager')
GO
INSERT [dbo].[MasterDataValue] ([Id], [RefMasterType], [Value]) VALUES (3, 1, N'Employee')
GO
INSERT [dbo].[MasterDataValue] ([Id], [RefMasterType], [Value]) VALUES (4, 2, N'.Net LMS')
GO
INSERT [dbo].[MasterDataValue] ([Id], [RefMasterType], [Value]) VALUES (5, 2, N'Java ')
GO
INSERT [dbo].[MasterDataValue] ([Id], [RefMasterType], [Value]) VALUES (6, 2, N'Vesta')
GO
INSERT [dbo].[MasterDataValue] ([Id], [RefMasterType], [Value]) VALUES (7, 3, N'Sick Leave')
GO
INSERT [dbo].[MasterDataValue] ([Id], [RefMasterType], [Value]) VALUES (8, 3, N'Casual Leave')
GO
SET IDENTITY_INSERT [dbo].[MasterDataValue] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

GO
INSERT [dbo].[UserAccount] ([Id], [UserName], [Password], [Lastlogin], [RefEmployeeId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (1, N'Anualoor@gmail.com', N'Temp@123', NULL, 1, CAST(N'2016-12-05 12:11:45.7400000' AS DateTime2), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
GO
ALTER TABLE [dbo].[EmployeeContactDetails] ADD  CONSTRAINT [DF_EmployeeContactDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransaction] ADD  CONSTRAINT [DF_EmployeeLeaveTransaction_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransactionHistory] ADD  CONSTRAINT [DF_EmployeeLeaveTransactionHistory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Holidays] ADD  CONSTRAINT [DF_Holidays_Year]  DEFAULT (datepart(year,getdate())) FOR [Year]
GO
ALTER TABLE [dbo].[Holidays] ADD  CONSTRAINT [DF_Holidays_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Workflow] ADD  CONSTRAINT [DF_Workflow_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[EmployeeContactDetails]  WITH CHECK ADD  CONSTRAINT [FK_EmpDetails_EmployeeContactDetails] FOREIGN KEY([RefEmpId])
REFERENCES [dbo].[EmployeeDetails] ([Id])
GO
ALTER TABLE [dbo].[EmployeeContactDetails] CHECK CONSTRAINT [FK_EmpDetails_EmployeeContactDetails]
GO
ALTER TABLE [dbo].[EmployeeContactDetails]  WITH CHECK ADD  CONSTRAINT [FK_MasterDataValue_EmployeeContactDetails] FOREIGN KEY([RefContactType])
REFERENCES [dbo].[MasterDataValue] ([Id])
GO
ALTER TABLE [dbo].[EmployeeContactDetails] CHECK CONSTRAINT [FK_MasterDataValue_EmployeeContactDetails]
GO
ALTER TABLE [dbo].[EmployeeDetails]  WITH CHECK ADD  CONSTRAINT [FK_MasterDataValue_EmployeeDetails] FOREIGN KEY([RefRoleId])
REFERENCES [dbo].[MasterDataValue] ([Id])
GO
ALTER TABLE [dbo].[EmployeeDetails] CHECK CONSTRAINT [FK_MasterDataValue_EmployeeDetails]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransaction]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDetails_EmployeeLeaveTransaction] FOREIGN KEY([RefEmployeeId])
REFERENCES [dbo].[EmployeeDetails] ([Id])
GO
ALTER TABLE [dbo].[EmployeeLeaveTransaction] CHECK CONSTRAINT [FK_EmployeeDetails_EmployeeLeaveTransaction]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransaction]  WITH CHECK ADD  CONSTRAINT [FK_MasterDataValue_EmployeeLeaveTransaction] FOREIGN KEY([RefLeaveType])
REFERENCES [dbo].[MasterDataValue] ([Id])
GO
ALTER TABLE [dbo].[EmployeeLeaveTransaction] CHECK CONSTRAINT [FK_MasterDataValue_EmployeeLeaveTransaction]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransaction]  WITH CHECK ADD  CONSTRAINT [FK_MasterDataValueStatus_EmployeeLeaveTransaction] FOREIGN KEY([RefStatus])
REFERENCES [dbo].[MasterDataValue] ([Id])
GO
ALTER TABLE [dbo].[EmployeeLeaveTransaction] CHECK CONSTRAINT [FK_MasterDataValueStatus_EmployeeLeaveTransaction]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransactionHistory]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDetails_EmployeeLeaveTransactionHistory] FOREIGN KEY([RefEmployeeId])
REFERENCES [dbo].[EmployeeDetails] ([Id])
GO
ALTER TABLE [dbo].[EmployeeLeaveTransactionHistory] CHECK CONSTRAINT [FK_EmployeeDetails_EmployeeLeaveTransactionHistory]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransactionHistory]  WITH CHECK ADD  CONSTRAINT [FK_MasterDataValue_EmployeeLeaveTransactionHistory] FOREIGN KEY([RefLeaveType])
REFERENCES [dbo].[MasterDataValue] ([Id])
GO
ALTER TABLE [dbo].[EmployeeLeaveTransactionHistory] CHECK CONSTRAINT [FK_MasterDataValue_EmployeeLeaveTransactionHistory]
GO
ALTER TABLE [dbo].[EmployeeLeaveTransactionHistory]  WITH CHECK ADD  CONSTRAINT [FK_MasterDataValueStatus_EmployeeLeaveTransactionHistory] FOREIGN KEY([RefStatus])
REFERENCES [dbo].[MasterDataValue] ([Id])
GO
ALTER TABLE [dbo].[EmployeeLeaveTransactionHistory] CHECK CONSTRAINT [FK_MasterDataValueStatus_EmployeeLeaveTransactionHistory]
GO
ALTER TABLE [dbo].[EmployeeProjectDetail]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDetails_EmployeeProjectDetail] FOREIGN KEY([RefEmployeeId])
REFERENCES [dbo].[EmployeeDetails] ([Id])
GO
ALTER TABLE [dbo].[EmployeeProjectDetail] CHECK CONSTRAINT [FK_EmployeeDetails_EmployeeProjectDetail]
GO
ALTER TABLE [dbo].[EmployeeProjectDetail]  WITH CHECK ADD  CONSTRAINT [FK_MasterDataValue_EmployeeProjectDetail1] FOREIGN KEY([RefProjectId])
REFERENCES [dbo].[MasterDataValue] ([Id])
GO
ALTER TABLE [dbo].[EmployeeProjectDetail] CHECK CONSTRAINT [FK_MasterDataValue_EmployeeProjectDetail1]
GO
ALTER TABLE [dbo].[LeaveMaster]  WITH CHECK ADD  CONSTRAINT [FK_MasterDataValue_LeaveMaster] FOREIGN KEY([RefLeaveType])
REFERENCES [dbo].[MasterDataValue] ([Id])
GO
ALTER TABLE [dbo].[LeaveMaster] CHECK CONSTRAINT [FK_MasterDataValue_LeaveMaster]
GO
ALTER TABLE [dbo].[MasterDataValue]  WITH CHECK ADD  CONSTRAINT [FK_MasterDataType_MasterDataValue] FOREIGN KEY([RefMasterType])
REFERENCES [dbo].[MasterDataType] ([Id])
GO
ALTER TABLE [dbo].[MasterDataValue] CHECK CONSTRAINT [FK_MasterDataType_MasterDataValue]
GO
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDetails_UserAccount] FOREIGN KEY([RefEmployeeId])
REFERENCES [dbo].[EmployeeDetails] ([Id])
GO
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK_EmployeeDetails_UserAccount]
GO
ALTER TABLE [dbo].[Workflow]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDetailsId_Workflow] FOREIGN KEY([RefApproverId])
REFERENCES [dbo].[EmployeeDetails] ([Id])
GO
ALTER TABLE [dbo].[Workflow] CHECK CONSTRAINT [FK_EmployeeDetailsId_Workflow]
GO
ALTER TABLE [dbo].[Workflow]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeLeaveTransaction_Workflow] FOREIGN KEY([RefLeaveTransactionId])
REFERENCES [dbo].[EmployeeLeaveTransaction] ([Id])
GO
ALTER TABLE [dbo].[Workflow] CHECK CONSTRAINT [FK_EmployeeLeaveTransaction_Workflow]
GO
ALTER TABLE [dbo].[Workflow]  WITH CHECK ADD  CONSTRAINT [FK_MasterDataValueStatus_Workflow] FOREIGN KEY([RefStatus])
REFERENCES [dbo].[MasterDataValue] ([Id])
GO
ALTER TABLE [dbo].[Workflow] CHECK CONSTRAINT [FK_MasterDataValueStatus_Workflow]
GO
USE [master]
GO
ALTER DATABASE [LeaveManagementSystem] SET  READ_WRITE 
GO
