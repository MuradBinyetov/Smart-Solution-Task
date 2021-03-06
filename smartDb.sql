USE [master]
GO
/****** Object:  Database [SmartSolutionDb]    Script Date: 09-Mar-22 11:31:27 ******/
CREATE DATABASE [SmartSolutionDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SmartSolutionDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SmartSolutionDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SmartSolutionDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SmartSolutionDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SmartSolutionDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SmartSolutionDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SmartSolutionDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SmartSolutionDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SmartSolutionDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SmartSolutionDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SmartSolutionDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SmartSolutionDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET RECOVERY FULL 
GO
ALTER DATABASE [SmartSolutionDb] SET  MULTI_USER 
GO
ALTER DATABASE [SmartSolutionDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SmartSolutionDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SmartSolutionDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SmartSolutionDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SmartSolutionDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SmartSolutionDb', N'ON'
GO
ALTER DATABASE [SmartSolutionDb] SET QUERY_STORE = OFF
GO
USE [SmartSolutionDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09-Mar-22 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 09-Mar-22 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 09-Mar-22 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 09-Mar-22 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 09-Mar-22 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 09-Mar-22 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[RoleId1] [nvarchar](450) NULL,
	[UserId1] [nvarchar](450) NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 09-Mar-22 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Surname] [nvarchar](255) NULL,
	[HasAccessToLogin] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[LastLoginDate] [datetime2](7) NULL,
	[OrganizationId] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 09-Mar-22 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizations]    Script Date: 09-Mar-22 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_Organizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 09-Mar-22 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Deadline] [datetime2](7) NOT NULL,
	[TaskStatus] [nvarchar](max) NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[OrganizationId] [int] NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTasks]    Script Date: 09-Mar-22 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTasks](
	[ApplicationUserId] [nvarchar](450) NOT NULL,
	[TaskId] [int] NOT NULL,
 CONSTRAINT [PK_UserTasks] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC,
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220305140912_Initial', N'3.1.22')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220306081202_NewDbSetAdded', N'3.1.22')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220306084244_NewDbSetApplicationRoleAdded', N'3.1.22')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220306090451_UserModelChanged', N'3.1.22')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220307075946_TaskModelCreatedd', N'3.1.22')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220307083047_UserTaskModelCreated', N'3.1.22')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220308133140_OrgzanizationModelCreated', N'3.1.22')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220308140337_OrganizationDbSet', N'3.1.22')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [Discriminator]) VALUES (N'b405174c-eba0-4138-8b76-97e4d6fd72e7', N'Worker', N'WORKER', N'f8d733d8-82a6-405c-9a18-5a45d14d399d', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [Discriminator]) VALUES (N'c40cd812-748e-4e56-baa4-bbd1acd30907', N'Admin', N'ADMIN', N'769f0155-3599-4dcc-8a95-85f9cd6a31d5', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [Discriminator]) VALUES (N'dd2604d9-200d-4671-973d-dd12c97aa73c', N'Organization', N'ORGANIZATION', N'4d0168b7-e78d-42af-aaac-2df13b08b794', N'ApplicationRole')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator], [RoleId1], [UserId1]) VALUES (N'13b88969-debe-42c7-ba46-dca4a39ba6a1', N'dd2604d9-200d-4671-973d-dd12c97aa73c', N'IdentityUserRole<string>', NULL, NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator], [RoleId1], [UserId1]) VALUES (N'5a0cfb21-f9f1-4ae4-805e-a1dac00a74d9', N'c40cd812-748e-4e56-baa4-bbd1acd30907', N'IdentityUserRole<string>', NULL, NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator], [RoleId1], [UserId1]) VALUES (N'999a6813-43d9-4366-9b73-9ee2d93778dc', N'b405174c-eba0-4138-8b76-97e4d6fd72e7', N'IdentityUserRole<string>', NULL, NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator], [RoleId1], [UserId1]) VALUES (N'9d6131d8-c912-4574-97c4-9165ba1215ca', N'dd2604d9-200d-4671-973d-dd12c97aa73c', N'IdentityUserRole<string>', NULL, NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator], [RoleId1], [UserId1]) VALUES (N'afc54527-f84b-48a8-bf11-202f4ddd4912', N'b405174c-eba0-4138-8b76-97e4d6fd72e7', N'IdentityUserRole<string>', NULL, NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator], [RoleId1], [UserId1]) VALUES (N'db13df31-f88b-498d-9d7f-98163276242c', N'b405174c-eba0-4138-8b76-97e4d6fd72e7', N'IdentityUserRole<string>', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [Surname], [HasAccessToLogin], [IsDeleted], [LastLoginDate], [OrganizationId]) VALUES (N'13b88969-debe-42c7-ba46-dca4a39ba6a1', N'BpUser', N'BPUSER', N'bp@gmail.com', N'BP@GMAIL.COM', 0, N'AQAAAAEAAC7gAAAAECmLfDIPq0Hdog2rVjyreVs6g9rYjuLVAIrJgMcaDm3rbJ7fZwQa80iOuvxYOit/fg==', N'VNAVAAHZ5B5OIXSM4IFMLMNDMGDKC6EI', N'67986d62-b5a0-4706-9399-3b4d6dfd1896', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Bp', NULL, 1, 0, CAST(N'2022-03-08T23:00:10.2011697' AS DateTime2), 5)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [Surname], [HasAccessToLogin], [IsDeleted], [LastLoginDate], [OrganizationId]) VALUES (N'5a0cfb21-f9f1-4ae4-805e-a1dac00a74d9', N'Administrator', N'ADMINISTRATOR', N'admin@admin.com', N'ADMIN@ADMIN.COM', 0, N'AQAAAAEAAC7gAAAAEK3sLRdiL/YSKRYE/ZtHopLXRDtWlUbfjv8ABsN/dUa1U/TtHQbxRF+/+eLzI8BhSw==', N'KPTRKMU5MB3QV34VKEZZDJ5E33NADG75', N'65e9281e-f5d0-43c0-99a7-6b4c4fd37c1d', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', NULL, NULL, 1, 0, CAST(N'2022-03-08T22:58:05.8379229' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [Surname], [HasAccessToLogin], [IsDeleted], [LastLoginDate], [OrganizationId]) VALUES (N'999a6813-43d9-4366-9b73-9ee2d93778dc', N'Worker3', N'WORKER3', N'veli@gmail.com', N'VELI@GMAIL.COM', 0, N'AQAAAAEAAC7gAAAAEC34qIDYmE20u8Z9iEJixw9ZPPLjfOm9Q+gIrXaMSBObqpd0YX9rXxs3rLkC0SzRYw==', N'LWP3AP5S7CI3VHOCS5GHKXHDBWDICP33', N'ef53dbf9-3096-42e8-ae78-eb4514e62953', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Veli', N'veliyev', 1, 0, NULL, 5)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [Surname], [HasAccessToLogin], [IsDeleted], [LastLoginDate], [OrganizationId]) VALUES (N'9d6131d8-c912-4574-97c4-9165ba1215ca', N'SocarUser', N'SOCARUSER', N'socar@gmail.com', N'SOCAR@GMAIL.COM', 0, N'AQAAAAEAAC7gAAAAEILgNvw/pYwPaMNOxk7N2Yj3fAS3MNAGfjBBFXmhIvjZmaobIBmon+Orjrov62Nwbw==', N'AHWJYRYWDT7MUGG5KXFZVK6PE4FN76JY', N'ec992957-59e1-4e33-8a95-5120ade2204a', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Socar', NULL, 1, 0, CAST(N'2022-03-08T22:37:53.8578785' AS DateTime2), 4)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [Surname], [HasAccessToLogin], [IsDeleted], [LastLoginDate], [OrganizationId]) VALUES (N'afc54527-f84b-48a8-bf11-202f4ddd4912', N'Worker2', N'WORKER2', N'eli@gmail.com', N'ELI@GMAIL.COM', 0, N'AQAAAAEAAC7gAAAAECRmm9L+An3n1ZKvEAEXO1gXSsLKwpNXqUwpq1QB558yOxBO2HQ/13WWRetkJdDGkA==', N'XGU47G5GY5T3UMB3I4UMXFQAN6GFXCPV', N'58a8fa46-f6c6-47f2-abd1-d9b56e0413f8', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Eli', N'Eliyev', 1, 0, CAST(N'2022-03-08T20:12:06.5833532' AS DateTime2), 4)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [Surname], [HasAccessToLogin], [IsDeleted], [LastLoginDate], [OrganizationId]) VALUES (N'db13df31-f88b-498d-9d7f-98163276242c', N'Worker1', N'WORKER1', N'murad_binyetov@mail.ru', N'MURAD_BINYETOV@MAIL.RU', 0, N'AQAAAAEAAC7gAAAAEJiLlGJZQHYpiSZORAX+vii/i6lwNpYIjSYSv1irSCoMGMzNAmFsn1B/A8La1QAwKA==', N'PLQJF2QCOHXDNIUIJETBR7K6KK3BQUXF', N'6027b5a2-cedb-4b28-8111-ad1897ecb766', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Murad', N'Binyetov', 1, 0, CAST(N'2022-03-08T20:24:39.4326232' AS DateTime2), 4)
GO
SET IDENTITY_INSERT [dbo].[Organizations] ON 

INSERT [dbo].[Organizations] ([Id], [Name], [PhoneNumber], [Address]) VALUES (4, N'Socar', N'0503235295', N'Baku')
INSERT [dbo].[Organizations] ([Id], [Name], [PhoneNumber], [Address]) VALUES (5, N'Bp', N'+994553032159', N'Baku')
SET IDENTITY_INSERT [dbo].[Organizations] OFF
GO
SET IDENTITY_INSERT [dbo].[Tasks] ON 

INSERT [dbo].[Tasks] ([Id], [Title], [Description], [Deadline], [TaskStatus], [ApplicationUserId], [OrganizationId]) VALUES (7, N'Socar Task', N'Socar Problem', CAST(N'2022-09-15T00:00:00.0000000' AS DateTime2), N'Appointed', NULL, 4)
INSERT [dbo].[Tasks] ([Id], [Title], [Description], [Deadline], [TaskStatus], [ApplicationUserId], [OrganizationId]) VALUES (8, N'Socar Task 2', N'Socar Problem 2', CAST(N'2022-04-12T00:00:00.0000000' AS DateTime2), N'Appointed', NULL, 4)
INSERT [dbo].[Tasks] ([Id], [Title], [Description], [Deadline], [TaskStatus], [ApplicationUserId], [OrganizationId]) VALUES (9, N'Bp Task', N'Bp Problem', CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2), N'Appointed', NULL, 5)
SET IDENTITY_INSERT [dbo].[Tasks] OFF
GO
INSERT [dbo].[UserTasks] ([ApplicationUserId], [TaskId]) VALUES (N'999a6813-43d9-4366-9b73-9ee2d93778dc', 9)
INSERT [dbo].[UserTasks] ([ApplicationUserId], [TaskId]) VALUES (N'afc54527-f84b-48a8-bf11-202f4ddd4912', 8)
INSERT [dbo].[UserTasks] ([ApplicationUserId], [TaskId]) VALUES (N'db13df31-f88b-498d-9d7f-98163276242c', 7)
INSERT [dbo].[UserTasks] ([ApplicationUserId], [TaskId]) VALUES (N'db13df31-f88b-498d-9d7f-98163276242c', 8)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 09-Mar-22 11:31:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 09-Mar-22 11:31:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 09-Mar-22 11:31:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 09-Mar-22 11:31:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 09-Mar-22 11:31:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId1]    Script Date: 09-Mar-22 11:31:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId1] ON [dbo].[AspNetUserRoles]
(
	[RoleId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_UserId1]    Script Date: 09-Mar-22 11:31:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_UserId1] ON [dbo].[AspNetUserRoles]
(
	[UserId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 09-Mar-22 11:31:27 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_OrganizationId]    Script Date: 09-Mar-22 11:31:27 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_OrganizationId] ON [dbo].[AspNetUsers]
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 09-Mar-22 11:31:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Tasks_ApplicationUserId]    Script Date: 09-Mar-22 11:31:27 ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_ApplicationUserId] ON [dbo].[Tasks]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_OrganizationId]    Script Date: 09-Mar-22 11:31:27 ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_OrganizationId] ON [dbo].[Tasks]
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserTasks_ApplicationUserId]    Script Date: 09-Mar-22 11:31:27 ******/
CREATE NONCLUSTERED INDEX [IX_UserTasks_ApplicationUserId] ON [dbo].[UserTasks]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoles] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[AspNetUserRoles] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId1] FOREIGN KEY([RoleId1])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId1]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId1] FOREIGN KEY([UserId1])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId1]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Organizations_OrganizationId] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Organizations_OrganizationId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Organizations_OrganizationId] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Organizations_OrganizationId]
GO
ALTER TABLE [dbo].[UserTasks]  WITH CHECK ADD  CONSTRAINT [FK_UserTasks_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTasks] CHECK CONSTRAINT [FK_UserTasks_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[UserTasks]  WITH CHECK ADD  CONSTRAINT [FK_UserTasks_Tasks_TaskId] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Tasks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTasks] CHECK CONSTRAINT [FK_UserTasks_Tasks_TaskId]
GO
USE [master]
GO
ALTER DATABASE [SmartSolutionDb] SET  READ_WRITE 
GO
