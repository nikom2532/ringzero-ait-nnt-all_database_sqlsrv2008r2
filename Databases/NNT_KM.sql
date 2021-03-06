USE [master]
GO
/****** Object:  Database [NNT_KM]    Script Date: 06/28/2014 19:32:22 ******/
CREATE DATABASE [NNT_KM] ON  PRIMARY 
( NAME = N'NNT_KM', FILENAME = N'E:\SQLDB\NNT_KM.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NNT_KM_log', FILENAME = N'E:\SQLDB\NNT_KM_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NNT_KM] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NNT_KM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NNT_KM] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [NNT_KM] SET ANSI_NULLS OFF
GO
ALTER DATABASE [NNT_KM] SET ANSI_PADDING OFF
GO
ALTER DATABASE [NNT_KM] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [NNT_KM] SET ARITHABORT OFF
GO
ALTER DATABASE [NNT_KM] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [NNT_KM] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [NNT_KM] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [NNT_KM] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [NNT_KM] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [NNT_KM] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [NNT_KM] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [NNT_KM] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [NNT_KM] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [NNT_KM] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [NNT_KM] SET  DISABLE_BROKER
GO
ALTER DATABASE [NNT_KM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [NNT_KM] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [NNT_KM] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [NNT_KM] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [NNT_KM] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [NNT_KM] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [NNT_KM] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [NNT_KM] SET  READ_WRITE
GO
ALTER DATABASE [NNT_KM] SET RECOVERY FULL
GO
ALTER DATABASE [NNT_KM] SET  MULTI_USER
GO
ALTER DATABASE [NNT_KM] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [NNT_KM] SET DB_CHAINING OFF
GO
USE [NNT_KM]
GO
/****** Object:  User [dbiuser]    Script Date: 06/28/2014 19:32:23 ******/
CREATE USER [dbiuser] FOR LOGIN [dbiuser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[set_email]    Script Date: 06/28/2014 19:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[set_email](
	[SET_id] [int] IDENTITY(1,1) NOT NULL,
	[SET_email] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[SET_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[set_email] ON
INSERT [dbo].[set_email] ([SET_id], [SET_email]) VALUES (1, N'k.thanutchai@gmail.com, k.thanutchai@gmail.com')
SET IDENTITY_INSERT [dbo].[set_email] OFF
/****** Object:  Table [dbo].[faq]    Script Date: 06/28/2014 19:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[faq](
	[FAQ_id] [int] IDENTITY(1,1) NOT NULL,
	[FAQ_question] [text] NULL,
	[FAQ_answer] [text] NULL,
	[FAQ_activated] [int] NULL,
	[FAQ_add] [datetime] NULL,
	[FAQ_update] [datetime] NULL,
	[FAQ_userupdate] [varchar](150) NULL,
	[FAQ_order] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FAQ_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[faq] ON
INSERT [dbo].[faq] ([FAQ_id], [FAQ_question], [FAQ_answer], [FAQ_activated], [FAQ_add], [FAQ_update], [FAQ_userupdate], [FAQ_order]) VALUES (1, N'จะสมัครสมาชิกได้อย่างไร', N'ระบบไม่อนุญาต สำหรับหน่วยงานเท่านั้น', 1, CAST(0x0000A3250189F714 AS DateTime), CAST(0x0000A34E0132C660 AS DateTime), N'ธณัฐชัย แก้วมงคล', 1)
INSERT [dbo].[faq] ([FAQ_id], [FAQ_question], [FAQ_answer], [FAQ_activated], [FAQ_add], [FAQ_update], [FAQ_userupdate], [FAQ_order]) VALUES (2, N'รายการถ่ายทอดสด จะรับชมได้ตอนไหน', N'ระบบไม่ได้อนุญาตให้สมัครสมาชิกได้เอง จะต้องเป็นเจ้าหน้าที่หรือพนักงานในหน่วยงาน สคบ.เท่านั้นที่มีสิทธิ์ใช้งานระบบ', 1, CAST(0x0000A325018A99F8 AS DateTime), CAST(0x0000A325018A99F8 AS DateTime), N'ธณัฐชัย แก้วมงคล', 2)
INSERT [dbo].[faq] ([FAQ_id], [FAQ_question], [FAQ_answer], [FAQ_activated], [FAQ_add], [FAQ_update], [FAQ_userupdate], [FAQ_order]) VALUES (3, N'เจ้าหน้าที่สามารถสร้างเนื้อหาต่างๆได้เองหรือไม่', N'ระบบไม่ได้อนุญาตให้สมัครสมาชิกได้เอง จะต้องเป็นเจ้าหน้าที่หรือพนักงานในหน่วยงาน สคบ.เท่านั้นที่มีสิทธิ์ใช้งานระบบ', 1, CAST(0x0000A325018AB99C AS DateTime), CAST(0x0000A325018AB99C AS DateTime), N'ธณัฐชัย แก้วมงคล', 3)
INSERT [dbo].[faq] ([FAQ_id], [FAQ_question], [FAQ_answer], [FAQ_activated], [FAQ_add], [FAQ_update], [FAQ_userupdate], [FAQ_order]) VALUES (4, N'TESTTESTTESTTESTTESTTESTTEST', N'testertestertestertestertestertestertestertestkkkkkkkkertestertestertestertestertestertestertestertestertestertestertestertestertestertestertestertestertestertesterteskkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 1, CAST(0x0000A34E01331BEC AS DateTime), CAST(0x0000A34E01336110 AS DateTime), N'ธณัฐชัย แก้วมงคล', 4)
SET IDENTITY_INSERT [dbo].[faq] OFF
/****** Object:  Table [dbo].[contact_us]    Script Date: 06/28/2014 19:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contact_us](
	[CONT_id] [int] IDENTITY(1,1) NOT NULL,
	[CONT_name] [varchar](255) NULL,
	[CONT_email] [varchar](255) NULL,
	[CONT_tel] [varchar](255) NULL,
	[CONT_message] [text] NULL,
	[CONT_add] [datetime] NULL,
	[CONT_useradd] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CONT_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[contact_us] ON
INSERT [dbo].[contact_us] ([CONT_id], [CONT_name], [CONT_email], [CONT_tel], [CONT_message], [CONT_add], [CONT_useradd]) VALUES (1, N'ธณัฐชัย แก้วมงคล', N'k.thanutchai@gmail.com', N'089-912-1234', N'ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ', CAST(0x0000A326000DD43C AS DateTime), NULL)
INSERT [dbo].[contact_us] ([CONT_id], [CONT_name], [CONT_email], [CONT_tel], [CONT_message], [CONT_add], [CONT_useradd]) VALUES (2, N'อลงกรณ์ รังสิกุล', N'alongkorn.is@gmail.com', N'0846413687', N'สอบถามเรื่องสมัครงาน', CAST(0x0000A33D010F1094 AS DateTime), NULL)
INSERT [dbo].[contact_us] ([CONT_id], [CONT_name], [CONT_email], [CONT_tel], [CONT_message], [CONT_add], [CONT_useradd]) VALUES (3, N'Test', N'mikky_fa@hotmail.com', N'099999999', N'TestTestTestTestTestTestTestTestTestTestTestTestTest', CAST(0x0000A34E01341B64 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[contact_us] OFF
/****** Object:  Table [dbo].[category]    Script Date: 06/28/2014 19:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[category](
	[CAT_id] [int] IDENTITY(1,1) NOT NULL,
	[CAT_topic] [varchar](255) NULL,
	[CAT_activated] [int] NULL,
	[CAT_add] [datetime] NULL,
	[CAT_update] [datetime] NULL,
	[CAT_userupdate] [varchar](150) NULL,
	[CAT_order] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CAT_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON
INSERT [dbo].[category] ([CAT_id], [CAT_topic], [CAT_activated], [CAT_add], [CAT_update], [CAT_userupdate], [CAT_order]) VALUES (1, N'พระราชสำนัก', 1, CAST(0x0000A32501817364 AS DateTime), CAST(0x0000A3260002ECD4 AS DateTime), N'ธณัฐชัย แก้วมงคล', 3)
INSERT [dbo].[category] ([CAT_id], [CAT_topic], [CAT_activated], [CAT_add], [CAT_update], [CAT_userupdate], [CAT_order]) VALUES (2, N'การเมือง/ความมั่นคง', 1, CAST(0x0000A3250181A118 AS DateTime), CAST(0x0000A32600031380 AS DateTime), N'ธณัฐชัย แก้วมงคล', 2)
INSERT [dbo].[category] ([CAT_id], [CAT_topic], [CAT_activated], [CAT_add], [CAT_update], [CAT_userupdate], [CAT_order]) VALUES (3, N'เศรษฐกิจ/ท่องเที่ยว', 1, CAST(0x0000A32600031A88 AS DateTime), CAST(0x0000A32600031A88 AS DateTime), N'ธณัฐชัย แก้วมงคล', 6)
INSERT [dbo].[category] ([CAT_id], [CAT_topic], [CAT_activated], [CAT_add], [CAT_update], [CAT_userupdate], [CAT_order]) VALUES (4, N'สังคม', 1, CAST(0x0000A32600032514 AS DateTime), CAST(0x0000A32600032514 AS DateTime), N'ธณัฐชัย แก้วมงคล', 5)
INSERT [dbo].[category] ([CAT_id], [CAT_topic], [CAT_activated], [CAT_add], [CAT_update], [CAT_userupdate], [CAT_order]) VALUES (5, N'ต่างประเทศ', 1, CAST(0x0000A32600032FA0 AS DateTime), CAST(0x0000A34E0125DC84 AS DateTime), N'ธณัฐชัย แก้วมงคล', 1)
INSERT [dbo].[category] ([CAT_id], [CAT_topic], [CAT_activated], [CAT_add], [CAT_update], [CAT_userupdate], [CAT_order]) VALUES (6, N'วิทยาศาสตร์', 1, CAST(0x0000A32600033A2C AS DateTime), CAST(0x0000A32600033A2C AS DateTime), N'ธณัฐชัย แก้วมงคล', 4)
SET IDENTITY_INSERT [dbo].[category] OFF
/****** Object:  Table [dbo].[article_monthly]    Script Date: 06/28/2014 19:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[article_monthly](
	[AM_id] [int] IDENTITY(1,1) NOT NULL,
	[AM_atc_ref] [int] NULL,
	[AM_year] [varchar](4) NULL,
	[AM_month] [varchar](2) NULL,
	[AM_view] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AM_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[article_monthly] ON
INSERT [dbo].[article_monthly] ([AM_id], [AM_atc_ref], [AM_year], [AM_month], [AM_view]) VALUES (1, 1, N'2014', N'06', 150)
INSERT [dbo].[article_monthly] ([AM_id], [AM_atc_ref], [AM_year], [AM_month], [AM_view]) VALUES (2, 2, N'2014', N'06', 12)
INSERT [dbo].[article_monthly] ([AM_id], [AM_atc_ref], [AM_year], [AM_month], [AM_view]) VALUES (3, 3, N'2014', N'06', 1)
INSERT [dbo].[article_monthly] ([AM_id], [AM_atc_ref], [AM_year], [AM_month], [AM_view]) VALUES (4, 4, N'2014', N'06', 1)
INSERT [dbo].[article_monthly] ([AM_id], [AM_atc_ref], [AM_year], [AM_month], [AM_view]) VALUES (5, 5, N'2014', N'06', 1)
INSERT [dbo].[article_monthly] ([AM_id], [AM_atc_ref], [AM_year], [AM_month], [AM_view]) VALUES (6, 7, N'2014', N'06', 1)
INSERT [dbo].[article_monthly] ([AM_id], [AM_atc_ref], [AM_year], [AM_month], [AM_view]) VALUES (7, 6, N'2014', N'06', 1)
INSERT [dbo].[article_monthly] ([AM_id], [AM_atc_ref], [AM_year], [AM_month], [AM_view]) VALUES (8, 8, N'2014', N'06', 1)
SET IDENTITY_INSERT [dbo].[article_monthly] OFF
/****** Object:  Table [dbo].[article_gallery]    Script Date: 06/28/2014 19:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[article_gallery](
	[AG_id] [int] IDENTITY(1,1) NOT NULL,
	[AG_article_ref] [int] NULL,
	[AG_image] [varchar](150) NULL,
	[AG_add] [datetime2](7) NULL,
	[AG_userupdate] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[AG_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[article]    Script Date: 06/28/2014 19:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[article](
	[ATC_id] [int] IDENTITY(1,1) NOT NULL,
	[ATC_category_ref] [int] NULL,
	[ATC_writer_key] [int] NULL,
	[ATC_image] [varchar](150) NULL,
	[ATC_date] [date] NULL,
	[ATC_title] [varchar](255) NULL,
	[ATC_short_desc] [text] NULL,
	[ATC_desc] [ntext] NULL,
	[ATC_tag] [text] NULL,
	[ATC_writer] [varchar](150) NULL,
	[ATC_video] [varchar](50) NULL,
	[ATC_file] [varchar](50) NULL,
	[ATC_status] [varchar](30) NOT NULL,
	[ATC_approve_by] [varchar](150) NULL,
	[ATC_add] [datetime] NULL,
	[ATC_update] [datetime] NULL,
	[ATC_viewall] [int] NULL,
	[ATC_quality] [int] NULL,
	[ATC_activated] [int] NULL,
	[ATC_comment] [text] NULL,
	[ATC_userupdate] [varchar](150) NULL,
	[ATC_suggest] [int] NULL,
	[ATC_reason] [text] NULL,
	[ATC_news_ref] [varchar](255) NULL,
	[ATC_writer_ref] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ATC_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[article] ON
INSERT [dbo].[article] ([ATC_id], [ATC_category_ref], [ATC_writer_key], [ATC_image], [ATC_date], [ATC_title], [ATC_short_desc], [ATC_desc], [ATC_tag], [ATC_writer], [ATC_video], [ATC_file], [ATC_status], [ATC_approve_by], [ATC_add], [ATC_update], [ATC_viewall], [ATC_quality], [ATC_activated], [ATC_comment], [ATC_userupdate], [ATC_suggest], [ATC_reason], [ATC_news_ref], [ATC_writer_ref]) VALUES (1, 4, 1, N'a0f506c8e230e80f58e344f63a5be254.png', CAST(0x84380B00 AS Date), N'ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน', N'ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน 
ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน  ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน', N'&lt;p&gt;
	ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน&lt;/p&gt;
&lt;p&gt;
	&amp;nbsp;&lt;/p&gt;
&lt;p&gt;
	ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชนระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชนระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชนระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน&lt;/p&gt;
&lt;p&gt;
	&amp;nbsp;&lt;/p&gt;
&lt;p&gt;
	ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชนระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชนระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชนระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชนระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชนระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชนระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน ระบบห้องสมุดข่าวสารและองค์ความรู้สำหรับบริการประชาชน&lt;/p&gt;', N'พระราชสำนัก,วาเลนไทน,ตำรวจ,เคอร์ฟิว,ออกจากบ้าน,อันตราย,บ้าน,เยาวชน 18 ปี', N'อลงกรณ์ รังสิกุล', N'd021b7dea32c42e9b2a9439e6fdf1dd3.FLV', N'367f024043092192e5dccc13158509ab.pdf', N'1อนุญาตให้เผยแพร่', N'ธณัฐชัย แก้วมงคล', CAST(0x0000A32901282B24 AS DateTime), CAST(0x0000A33000E93E8C AS DateTime), 160, 5, 1, N'ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ  fff', N'ธณัฐชัย แก้วมงคล', 1, NULL, NULL, NULL)
INSERT [dbo].[article] ([ATC_id], [ATC_category_ref], [ATC_writer_key], [ATC_image], [ATC_date], [ATC_title], [ATC_short_desc], [ATC_desc], [ATC_tag], [ATC_writer], [ATC_video], [ATC_file], [ATC_status], [ATC_approve_by], [ATC_add], [ATC_update], [ATC_viewall], [ATC_quality], [ATC_activated], [ATC_comment], [ATC_userupdate], [ATC_suggest], [ATC_reason], [ATC_news_ref], [ATC_writer_ref]) VALUES (2, 4, 3, N'5551d955fa743b62e2ee2cb24408c32d.jpg', CAST(0x87380B00 AS Date), N'ทดสอบ', N'ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ ทดสอบ', N'&lt;p&gt;
	ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;&lt;/p&gt;
&lt;p&gt;
	ทดสอบ ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;&lt;/p&gt;
&lt;p&gt;
	ทดสอบ ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;&lt;/p&gt;
&lt;p&gt;
	ทดสอบ ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;&lt;/p&gt;
&lt;p&gt;
	ทดสอบ ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;&lt;/p&gt;
&lt;p&gt;
	ทดสอบ ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;&lt;/p&gt;
&lt;p&gt;
	ทดสอบ ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;&lt;/p&gt;
&lt;p&gt;
	ทดสอบ ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;&lt;/p&gt;
&lt;p&gt;
	ทดสอบ ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;ทดสอบ&amp;nbsp;&lt;/p&gt;', N'ทดสอบ,พระราชสำนัก', N'ธณัฐชัย แก้วมงคล', NULL, NULL, N'0รอการตรวจสอบ', N'ธณัฐชัย แก้วมงคล', CAST(0x0000A32C01771770 AS DateTime), CAST(0x0000A34600295F68 AS DateTime), 13, 5, 1, N'ดี', N'ธณัฐชัย แก้วมงคล', 0, N'FFFFFFFFFFFFFFF', NULL, NULL)
INSERT [dbo].[article] ([ATC_id], [ATC_category_ref], [ATC_writer_key], [ATC_image], [ATC_date], [ATC_title], [ATC_short_desc], [ATC_desc], [ATC_tag], [ATC_writer], [ATC_video], [ATC_file], [ATC_status], [ATC_approve_by], [ATC_add], [ATC_update], [ATC_viewall], [ATC_quality], [ATC_activated], [ATC_comment], [ATC_userupdate], [ATC_suggest], [ATC_reason], [ATC_news_ref], [ATC_writer_ref]) VALUES (3, 2, 1, N'997d658d0f1e90d060290106914697ac.png', CAST(0xA0380B00 AS Date), N'ทรัพยากรธรรมชาติและสิ่งแวดล้อมจังหวัดมุกดาหาร กำหนดเขตควบคุมไฟป่าในท้องที่จังหวัดมุกดาหาร', N'TNEVN5701060010005 ทรัพยากรธรรมชาติและสิ่งแวดล้อมจังหวัดมุกดาหาร กำหนดเขตควบคุมไฟป่าในท้องที่จังหวัดมุกดาหาร || นายสกลสฤษฏ์ บุญประดิษฐ์ ผู้ว่าราชการจังหวัดมุกดาหาร เปิดเผยว่า ด้วยปรากฏว่าในฤดูแล้งของทุกปี มักจะเกิดไฟป่าขึ้นเป็นประจำ เฉพาะอย่างยิ่งในเขตพื้นที่อุทยานแห่งชาติ เขตรักษาพันธุ์สัตว์ป่า พื้นที่ป่าสงวนแห่งชาติและป่าที่มีความสำคัญอื่นๆ ทำความเสียหายแก่ทรัพยากรธรรมชาติ ทรัพยากรป่าไม้และสัตว์ป่าเป็นจำนวนมหาศาล ทำให้ภาครัฐต้องสูญเสีย งบประมาณในการระดมกำลังเจ้าหน้าที่ เครื่องมือ เครื่องใช้ และยานพาหนะเข้าดำเนินการระงับดับไฟป่าเป็นจำนวนมากอีกด้วย สาเหตุสำคัญของการเกิดไฟป่า เกิดจากการเผาไร่ ฟางข้าว ซังข้าวโพด หญ้าและวัชพืชในที่ดินทำกินของเกษตรกรที่อยู่ใกล้พื้นที่ป่าเพื่อเตรียมพื้นที่เพาะปลูกโดยไม่มีการควบคุม 
นอกจากนี้ เพื่อป้องกันไม่ให้เกิดความเสียหายจากไฟป่า ให้ประชาชนได้มีส่วนร่วมในการป้องกันและแก้ไขปัญหาไฟป่า เมื่อมีความจำเป็นต้องเผาไร่ เผาวัชพืชในที่ดินทำกินให้ผู้ครอบครองที่ดินขออนุญาตจากกำนัน หรือผู้ใหญ่บ้านในเขตปกครองท้องถิ่น ก่อนที่จะดำเนินการทุกครั้งพร้อมกับต้องจัดทำแนวกันไฟและควบคุมไฟมิให้ลุกลามไปยังพื้นที่อื่นๆ โดยให้ประสานกับสถานีควบคุมไฟป่าในท้องที่จังหวัดมุกดาหาร เพื่อจัดเจ้าหน้าที่คอยควบคุมในการดำเนินการ  หากประชาชนผู้ใดไม่แจ้งขออนุญาตต่อกำนันหรือผู้ใหญ่บ้าน หรือขออนุญาตแล้วแต่ไม่จัดทำแนวกันไฟและมิได้ควบคุมไฟป่าให้อยู่ในพื้นที่ที่ตนถือครอง จนเป็นเหตุให้ไฟลุกลามไหม้ป่า ให้กำนันหรือผู้ใหญ่บ้านแจ้งต่อนายอำเภอท้องที่ เพื่อดำเนินคดีตามกฎหมาย การจุดไฟเผาป่า หรือปล่อยให้ไฟลุกลามเข้าไปในเขตอุทยานแห่งชาติ เขตรักษาพันธุ์สัตว์ป่า เขตป่าสงวนแห่งชาติ และพื้นที่เขตป่าอนุรักษ์อื่นๆ มีความผิดตามกฎหมายว่าด้วยการป่าไม้ ต้องระวางโทษ จำคุกตั้งแต่ 2 ปี ถึง 15 ปี และปรับตั้งแต่ 20,000 บาท ถึง 150,000 บาท และเป็นความผิดตามประมวลกฎหมายอาญา มาตรา 220 ผู้ใดกระทำให้เกิดเพลิงไหม้แก่วัตถุใด ๆ แม้จะเป็นของตนเอง จนน่าจะเป็นอันตรายแก่บุคคลอื่น หรือทรัพย์ของผู้อื่น ต้องระวางโทษจำคุกไม่เกิน 7 ปี และปรับไม่เกิน 14,000 บาท 

ทั้งนี้ โทรแจ้งสถานีควบคุมไฟป่ามุกดาหาร หมายเลขโทรศัพท์ 08-1266-2465 , 042-638-506 สถานีควบคุมไฟป่าภูสีฐาน หมายเลขโทรศัพท์ 08-1030-0367 สถานีควบคุมไฟป่าพื้นที่ห้วยบางทรายตอนบนอันเนื่องมาจากพระราชดำริ จังหวัดมุกดาหาร หมายเลขโทรศัพท์ 08-0372-0125 หรือแจ้งที่สายด่วนกรมอุทยานแห่งชาติ สัตว์ป่า และพันธุ์พืช หมายเลข“1362” ||  ||  ||', N'&lt;div style=&quot;text-indent:40px;&quot;&gt;
	นายสกลสฤษฏ์ บุญประดิษฐ์ ผู้ว่าราชการจังหวัดมุกดาหาร เปิดเผยว่า ด้วยปรากฏว่าในฤดูแล้งของทุกปี มักจะเกิดไฟป่าขึ้นเป็นประจำ เฉพาะอย่างยิ่งในเขตพื้นที่อุทยานแห่งชาติ เขตรักษาพันธุ์สัตว์ป่า พื้นที่ป่าสงวนแห่งชาติและป่าที่มีความสำคัญอื่นๆ ทำความเสียหายแก่ทรัพยากรธรรมชาติ ทรัพยากรป่าไม้และสัตว์ป่าเป็นจำนวนมหาศาล ทำให้ภาครัฐต้องสูญเสีย งบประมาณในการระดมกำลังเจ้าหน้าที่ เครื่องมือ เครื่องใช้ และยานพาหนะเข้าดำเนินการระงับดับไฟป่าเป็นจำนวนมากอีกด้วย สาเหตุสำคัญของการเกิดไฟป่า เกิดจากการเผาไร่ ฟางข้าว ซังข้าวโพด หญ้าและวัชพืชในที่ดินทำกินของเกษตรกรที่อยู่ใกล้พื้นที่ป่าเพื่อเตรียมพื้นที่เพาะปลูกโดยไม่มีการควบคุม&lt;/div&gt;
&lt;div style=&quot;text-indent:40px;&quot;&gt;
	นอกจากนี้ เพื่อป้องกันไม่ให้เกิดความเสียหายจากไฟป่า ให้ประชาชนได้มีส่วนร่วมในการป้องกันและแก้ไขปัญหาไฟป่า เมื่อมีความจำเป็นต้องเผาไร่ เผาวัชพืชในที่ดินทำกินให้ผู้ครอบครองที่ดินขออนุญาตจากกำนัน หรือผู้ใหญ่บ้านในเขตปกครองท้องถิ่น ก่อนที่จะดำเนินการทุกครั้งพร้อมกับต้องจัดทำแนวกันไฟและควบคุมไฟมิให้ลุกลามไปยังพื้นที่อื่นๆ โดยให้ประสานกับสถานีควบคุมไฟป่าในท้องที่จังหวัดมุกดาหาร เพื่อจัดเจ้าหน้าที่คอยควบคุมในการดำเนินการ หากประชาชนผู้ใดไม่แจ้งขออนุญาตต่อกำนันหรือผู้ใหญ่บ้าน หรือขออนุญาตแล้วแต่ไม่จัดทำแนวกันไฟและมิได้ควบคุมไฟป่าให้อยู่ในพื้นที่ที่ตนถือครอง จนเป็นเหตุให้ไฟลุกลามไหม้ป่า ให้กำนันหรือผู้ใหญ่บ้านแจ้งต่อนายอำเภอท้องที่ เพื่อดำเนินคดีตามกฎหมาย การจุดไฟเผาป่า หรือปล่อยให้ไฟลุกลามเข้าไปในเขตอุทยานแห่งชาติ เขตรักษาพันธุ์สัตว์ป่า เขตป่าสงวนแห่งชาติ และพื้นที่เขตป่าอนุรักษ์อื่นๆ มีความผิดตามกฎหมายว่าด้วยการป่าไม้ ต้องระวางโทษ จำคุกตั้งแต่ 2 ปี ถึง 15 ปี และปรับตั้งแต่ 20,000 บาท ถึง 150,000 บาท และเป็นความผิดตามประมวลกฎหมายอาญา มาตรา 220 ผู้ใดกระทำให้เกิดเพลิงไหม้แก่วัตถุใด ๆ แม้จะเป็นของตนเอง จนน่าจะเป็นอันตรายแก่บุคคลอื่น หรือทรัพย์ของผู้อื่น ต้องระวางโทษจำคุกไม่เกิน 7 ปี และปรับไม่เกิน 14,000 บาท&lt;/div&gt;
&lt;div style=&quot;text-indent:40px;&quot;&gt;
	ทั้งนี้ โทรแจ้งสถานีควบคุมไฟป่ามุกดาหาร หมายเลขโทรศัพท์ 08-1266-2465 , 042-638-506 สถานีควบคุมไฟป่าภูสีฐาน หมายเลขโทรศัพท์ 08-1030-0367 สถานีควบคุมไฟป่าพื้นที่ห้วยบางทรายตอนบนอันเนื่องมาจากพระราชดำริ จังหวัดมุกดาหาร หมายเลขโทรศัพท์ 08-0372-0125 หรือแจ้งที่สายด่วนกรมอุทยานแห่งชาติ สัตว์ป่า และพันธุ์พืช หมายเลข&amp;ldquo;1362&amp;rdquo;&lt;/div&gt;', N'', N'ธณัฐชัย แก้วมงคล', NULL, NULL, N'1อนุญาตให้เผยแพร่', N'ธณัฐชัย แก้วมงคล', CAST(0x0000A345012B2158 AS DateTime), CAST(0x0000A345012BCB44 AS DateTime), 7, 2, 1, NULL, N'ธณัฐชัย แก้วมงคล', 1, N'ผ่าน', N'0', N'0')
INSERT [dbo].[article] ([ATC_id], [ATC_category_ref], [ATC_writer_key], [ATC_image], [ATC_date], [ATC_title], [ATC_short_desc], [ATC_desc], [ATC_tag], [ATC_writer], [ATC_video], [ATC_file], [ATC_status], [ATC_approve_by], [ATC_add], [ATC_update], [ATC_viewall], [ATC_quality], [ATC_activated], [ATC_comment], [ATC_userupdate], [ATC_suggest], [ATC_reason], [ATC_news_ref], [ATC_writer_ref]) VALUES (4, 1, 1, N'15c481633896c70c8db849a17f7aad07.png', CAST(0xA0380B00 AS Date), N'เหล่ากาชาด จ.ตราด จัดหน่วยออกเยี่ยมมอบของขวัญผู้สูงอายุที่มีอายุ 100 ปีขึ้นไปใน 2 อำเภอรวม 5 ราย', N'TNSOC5701100010125 เหล่ากาชาด จ.ตราด จัดหน่วยออกเยี่ยมมอบของขวัญผู้สูงอายุที่มีอายุ 100 ปีขึ้นไปใน 2 อำเภอรวม 5 ราย || วันนี้ ( 10 ม.ค. 57) นางสาวเบญจวรรณ  อ่านเปรื่อง  ผู้ว่าราชการจังหวัดตราด และนายกเหล่ากาชาดจังหวัดตราด พร้อมด้วยคณะกรรมการเหล่ากาชาจังหวัดตราด ออกเยี่ยมเยียนผู้สูงอายุ ที่มีอายุเกิน 100 ปี จำนวน 5 ราย ในพื้นที่ 5 ตำบล  2 อำเภอ คือ อำเภอเมืองตราด และ อำเภอแหลมงอบ  ประกอบด้วยผู้สูงอายุที่มีอายุมากที่สุดในจังหวัดตราด  นางออง  มากมูล อายุ 106 ปี  ตามด้วย นางสวัสดิ์  ติ่งเกษม อายุ 101 ปี นายเหือด  สุขหลาย อายุ 103 ปี นายเจียม  วรรณเกตุ อายุ 103 ปี และนางจ่วน  ถาวรวงษ์  อายุ 104 ปี เพื่อมอบผ้าห่มกันหนาว และของขวัญเนื่องในโอกาสปีใหม่ 2557 

นายกเหล่ากาชาดจังหวัดตราด กล่าวว่า การออกเยี่ยมเยียนผู้สูงอายุในครั้งนี้ เป็นการดำเนินการตามแผนงานส่งเสริมคุณภาพชีวิต งานสงเคราะห์เด็ก เยาวชน ผู้ด้อยโอกาส ผู้พิการ และผู้สูงอายุ  เพื่อให้มีคุณภาพชีวิตความเป็นอยู่ที่ดีขึ้น ประกอบกับช่วงนี้เป็นช่วงเทศกาลปีใหม่ ที่ทุกควรควรได้มีโอกาสไปกราบขอพรผู้สูงอายุ และเยี่ยมเยียนท่าน  จึงได้มีการจัดกิจกรรมในครั้งนี้ขึ้น ทั้งนี้จากการสำรวจในพื้นที่จังหวัดตราด ยังมีผู้สูงอายุที่มีอายุเกิน 100 ปี อาศัยอยู่ในพื้นที่มีอัตราส่วนเพิ่มขึ้นแต่ไม่มากนัก ประกอบกับปัจจุบันประเทศไทยกำลังเข้าสู่สังคมผู้สูงอายุ ดังนั้นการจัดหน่วยออกเยี่ยมเยียนครั้งนี้ จึงเป็นการร่วมกระตุ้นเตือนขอให้ครอบครัวชาวตราด เห็นถึงความสำคัญในการดูแล และเอาใจใส่ผู้สูงอายุให้มากขึ้น ||  ||  ||', N'&lt;div style=&quot;text-indent:40px;&quot;&gt;
	วันนี้ ( 10 ม.ค. 57) นางสาวเบญจวรรณ อ่านเปรื่อง ผู้ว่าราชการจังหวัดตราด และนายกเหล่ากาชาดจังหวัดตราด พร้อมด้วยคณะกรรมการเหล่ากาชาจังหวัดตราด ออกเยี่ยมเยียนผู้สูงอายุ ที่มีอายุเกิน 100 ปี จำนวน 5 ราย ในพื้นที่ 5 ตำบล 2 อำเภอ คือ อำเภอเมืองตราด และ อำเภอแหลมงอบ ประกอบด้วยผู้สูงอายุที่มีอายุมากที่สุดในจังหวัดตราด นางออง มากมูล อายุ 106 ปี ตามด้วย นางสวัสดิ์ ติ่งเกษม อายุ 101 ปี นายเหือด สุขหลาย อายุ 103 ปี นายเจียม วรรณเกตุ อายุ 103 ปี และนางจ่วน ถาวรวงษ์ อายุ 104 ปี เพื่อมอบผ้าห่มกันหนาว และของขวัญเนื่องในโอกาสปีใหม่ 2557&lt;/div&gt;
&lt;div style=&quot;text-indent:40px;&quot;&gt;
	นายกเหล่ากาชาดจังหวัดตราด กล่าวว่า การออกเยี่ยมเยียนผู้สูงอายุในครั้งนี้ เป็นการดำเนินการตามแผนงานส่งเสริมคุณภาพชีวิต งานสงเคราะห์เด็ก เยาวชน ผู้ด้อยโอกาส ผู้พิการ และผู้สูงอายุ เพื่อให้มีคุณภาพชีวิตความเป็นอยู่ที่ดีขึ้น ประกอบกับช่วงนี้เป็นช่วงเทศกาลปีใหม่ ที่ทุกควรควรได้มีโอกาสไปกราบขอพรผู้สูงอายุ และเยี่ยมเยียนท่าน จึงได้มีการจัดกิจกรรมในครั้งนี้ขึ้น ทั้งนี้จากการสำรวจในพื้นที่จังหวัดตราด ยังมีผู้สูงอายุที่มีอายุเกิน 100 ปี อาศัยอยู่ในพื้นที่มีอัตราส่วนเพิ่มขึ้นแต่ไม่มากนัก ประกอบกับปัจจุบันประเทศไทยกำลังเข้าสู่สังคมผู้สูงอายุ ดังนั้นการจัดหน่วยออกเยี่ยมเยียนครั้งนี้ จึงเป็นการร่วมกระตุ้นเตือนขอให้ครอบครัวชาวตราด เห็นถึงความสำคัญในการดูแล และเอาใจใส่ผู้สูงอายุให้มากขึ้น&lt;/div&gt;', N'', N'ธณัฐชัย แก้วมงคล', NULL, NULL, N'1อนุญาตให้เผยแพร่', N'ธณัฐชัย แก้วมงคล', CAST(0x0000A345012B5BF0 AS DateTime), CAST(0x0000A3460012FBC4 AS DateTime), 4, 3, 1, NULL, N'ธณัฐชัย แก้วมงคล', 0, N'ผ่าน', N'0', N'0')
INSERT [dbo].[article] ([ATC_id], [ATC_category_ref], [ATC_writer_key], [ATC_image], [ATC_date], [ATC_title], [ATC_short_desc], [ATC_desc], [ATC_tag], [ATC_writer], [ATC_video], [ATC_file], [ATC_status], [ATC_approve_by], [ATC_add], [ATC_update], [ATC_viewall], [ATC_quality], [ATC_activated], [ATC_comment], [ATC_userupdate], [ATC_suggest], [ATC_reason], [ATC_news_ref], [ATC_writer_ref]) VALUES (5, 5, 1, N'76c26a6bb9255cc888322aec816e25ef.png', CAST(0xA0380B00 AS Date), N'ขนส่งตราด แถลงข่าวการประมูลหลายเลขทะเบียนรถเลขสวย', N'TNPBH5701100010010 ขนส่งตราด แถลงข่าวการประมูลหลายเลขทะเบียนรถเลขสวย || นางแสงจันทร์ จวบความสุข  ขนส่งจังหวัดตราด เปิดเผยว่า สำนักงานขนส่งจังวหัดตราด กำหนดจัดการประมูลหมายเลขทะเบียนรถเลขสวยที่เป็นที่นิยมของประชาชน ในวันที่  1-2 กุมภาพันธ์ 2557  ที่บ้านปูรีสอร์ทแอนสปา แหลมหิน อำเภอเมือง  จังหวัดตราด เพื่อให้การประมวลเผยแพร่ให้ทราบโดยทั่วกัน จึงกำหหนดแถลงข่าวการประมูลหมายเลขทะเบียนรถเลขสวยขึ้น ในวันที่ 16 มกราคม  2557  เวลา 14.00 น. ที่ห้องประชุมตราดสีทอง ศาลากลางจังหวัดตราด ทั้งนี้จึงขอเชิญสื่อมวลชนและท่านที่สนใจเข้าร่วมรับฟังการแถลงข่าวในครั้งนี้ โดยพร้อมเพรียงกัน


สนธยา จงพันธนิมิตร สวท.ตราด รายงาน ||  ||  ||', N'&lt;div style=&quot;text-indent:40px;&quot;&gt;
	นางแสงจันทร์ จวบความสุข ขนส่งจังหวัดตราด เปิดเผยว่า สำนักงานขนส่งจังวหัดตราด กำหนดจัดการประมูลหมายเลขทะเบียนรถเลขสวยที่เป็นที่นิยมของประชาชน ในวันที่ 1-2 กุมภาพันธ์ 2557 ที่บ้านปูรีสอร์ทแอนสปา แหลมหิน อำเภอเมือง จังหวัดตราด เพื่อให้การประมวลเผยแพร่ให้ทราบโดยทั่วกัน จึงกำหหนดแถลงข่าวการประมูลหมายเลขทะเบียนรถเลขสวยขึ้น ในวันที่ 16 มกราคม 2557 เวลา 14.00 น. ที่ห้องประชุมตราดสีทอง ศาลากลางจังหวัดตราด ทั้งนี้จึงขอเชิญสื่อมวลชนและท่านที่สนใจเข้าร่วมรับฟังการแถลงข่าวในครั้งนี้ โดยพร้อมเพรียงกัน&lt;/div&gt;
&lt;p&gt;
	&amp;nbsp;&lt;/p&gt;
&lt;div align=&quot;left&quot;&gt;
	สนธยา จงพันธนิมิตร สวท.ตราด รายงาน&lt;/div&gt;', N'', N'ธณัฐชัย แก้วมงคล', NULL, NULL, N'1อนุญาตให้เผยแพร่', N'ธณัฐชัย แก้วมงคล', CAST(0x0000A345012B7F18 AS DateTime), CAST(0x0000A345012BADF8 AS DateTime), 3, 2, 1, NULL, N'ธณัฐชัย แก้วมงคล', 0, N'ผ่าน', N'0', N'0')
INSERT [dbo].[article] ([ATC_id], [ATC_category_ref], [ATC_writer_key], [ATC_image], [ATC_date], [ATC_title], [ATC_short_desc], [ATC_desc], [ATC_tag], [ATC_writer], [ATC_video], [ATC_file], [ATC_status], [ATC_approve_by], [ATC_add], [ATC_update], [ATC_viewall], [ATC_quality], [ATC_activated], [ATC_comment], [ATC_userupdate], [ATC_suggest], [ATC_reason], [ATC_news_ref], [ATC_writer_ref]) VALUES (6, 6, 1, N'c1024d99020e705648f86f42a25fa2fc.jpg', CAST(0xA9380B00 AS Date), N'TestFah', N'TestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFah', N'&lt;h3 style=&quot;color:red;&quot;&gt;
	&lt;strong&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;span style=&quot;font-family:courier new,courier,monospace;&quot;&gt;TestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFahTestFah&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;', N'test', N'ธณัฐชัย แก้วมงคล', NULL, NULL, N'1อนุญาตให้เผยแพร่', N'ธณัฐชัย แก้วมงคล', CAST(0x0000A34E0129DA64 AS DateTime), CAST(0x0000A34E013A3DB4 AS DateTime), 4, 3, 1, N'เขียนดีมากค่ะ', N'ธณัฐชัย แก้วมงคล', 1, N'แย่มาก', N'0', N'0')
INSERT [dbo].[article] ([ATC_id], [ATC_category_ref], [ATC_writer_key], [ATC_image], [ATC_date], [ATC_title], [ATC_short_desc], [ATC_desc], [ATC_tag], [ATC_writer], [ATC_video], [ATC_file], [ATC_status], [ATC_approve_by], [ATC_add], [ATC_update], [ATC_viewall], [ATC_quality], [ATC_activated], [ATC_comment], [ATC_userupdate], [ATC_suggest], [ATC_reason], [ATC_news_ref], [ATC_writer_ref]) VALUES (7, 6, 1, N'59d9cb8fdaa872575f31b0959c77ed19.jpg', CAST(0xA9380B00 AS Date), N'สำนักงานพัฒนาเทคโนโลยีอวกาศและภูมิสารสนเทศ จัดโครงการพัฒนาศูนย์การเรียนรู้ภูมิสารสนเทศชุมชน', N'TNICT5706060010001 สำนักงานพัฒนาเทคโนโลยีอวกาศและภูมิสารสนเทศ จัดโครงการพัฒนาศูนย์การเรียนรู้ภูมิสารสนเทศชุมชน || สำนักงานพัฒนาเทคโนโลยีอวกาศและภูมิสารสนเทศ จัดโครงการพัฒนาศูนย์การเรียนรู้ภูมิสารสนเทศชุมชน 

วันนี้ (6 มิ.ย. 57) เวลา 09.00 น. ที่ประชุมศูนย์วิทยาศาสตร์และวัฒนธรรมเพื่อการศึกษาร้อยเอ็ด นายวรวุฒิ โคตรพันธ์ ผู้อำนวยการศูนย์วิทยาศาสตร์และวัฒนธรรมเพื่อการศึกษาร้อยเอ็ด ได้กล่าวต้อนรับผู้เข้าร่วมโครงการพัฒนาศูนย์การเรียนรู้ภูมิสารสนเทศชุมชน โดยมีเจ้าหน้าที่จากส่วนราชการ สถานศึกษาต่าง ๆ และผู้นำชุมชนในพื้นที่เข้ารวมประชุม สำนักงานพัฒนาเทคโนโลยีอวกาศและภูมิสารสนเทศ (องค์การมหาชน) หรือ สทอภ. กระทรวงวิทยาศาสตร์และเทคโนโลยี ร่วมกับศูนย์วิทยาศาสตร์และวัฒนธรรมเพื่อการศึกษาร้อยเอ็ด จัดกิจกรรมเสวนาอวกาศสัญจร เรื่อง “การประยุกต์ใช้เทคโนโลยีอวกาศและภูมิสารสนเทศเพื่อบริหารจัดการทรัพยากรและสิ่งแวดล้อมสู่ชุมชน” เพื่อให้ความรู้เบื้องต้นทางด้านการประยุกต์เทคโนโลยีอวกาศและภูมิสารสนเทศกับชุมชนและท้องถิ่น โดยระดมความคิดเห็นของชุมชนพร้อมรับฟังข้อเสนอแนะ ปัญหาที่เกิดขึ้นในชุมชนเพื่อกำหนดแนวทางเนื้อหานิทรรศการที่จะติดตั้ง ที่ศูนย์เรียนรู้ภูมิสารสนเทศชุมชนในท้องถิ่น ซึ่งจังหวัดร้อยเอ็ด เป็นจังหวัดเป้าหมายที่จะดำเนินการในปี 2557 โดยมีคณะวิทยากรจากสำนักงานพัฒนาเทคโนโลยีอวกาศและภูมิสารสนเทศ กระทรวงวิทยาศาสตร์และเทคโนโลยี สำนักงานพัฒนาเทคโนโลยีอวกาศและภูมิสารสนเทศ 

ทั้งนี้ มียุทธศาสตร์ด้านการพัฒนากำลังคน และสร้างความตระหนักในการนำวิทยาศาสตร์และเทคโนโลยีมาเป็นปัจจัยสำคัญในการเพิ่มความสามารถในการแข่งขันทางเศรษฐกิจ ยกระดับคุณภาพชีวิตพัฒนาประเทศและสร้างเสริมความรู้ความคิดของประชาชนทางด้านวิทยาศาสตร์ พร้อมทั้งเร่งผลิตและพัฒนาบุคลากรด้านวิทยาศาสตร์และเทคโนโลยี ให้มีความพร้อมในการใช้เทคโนโลยีภูมิสารสนเทศ ในการบริหารจัดการทรัพยากรสิ่งแวดล้อมและภัยพิบัติด้านต่าง ๆ 

ประเสริฐ อินทา รายงาน ||  ||  ||', N'&lt;p&gt;
	&lt;b&gt;สำนักงานพัฒนาเทคโนโลยีอวกาศและภูมิสารสนเทศ จัดโครงการพัฒนาศูนย์การเรียนรู้ภูมิสารสนเทศชุมชน &lt;/b&gt;&lt;/p&gt;
&lt;div style=&quot;text-indent:40px;&quot;&gt;
	วันนี้ (6 มิ.ย. 57) เวลา 09.00 น. นายวรวุฒิ โคตรพันธ์ ผู้อำนวยการศูนย์วิทยาศาสตร์และวัฒนธรรมเพื่อการศึกษาร้อยเอ็ด ได้กล่าวต้อนรับผู้เข้าร่วมโครงการพัฒนาศูนย์การเรียนรู้ภูมิสารสนเทศชุมชน ที่ประชุมศูนย์วิทยาศาสตร์และวัฒนธรรมเพื่อการศึกษาร้อยเอ็ด โดยมีเจ้าหน้าที่จากส่วนราชการ สถานศึกษาต่าง ๆ และผู้นำชุมชนในพื้นที่เข้ารวมประชุม สำนักงานพัฒนาเทคโนโลยีอวกาศและภูมิสารสนเทศ (องค์การมหาชน) หรือ สทอภ. กระทรวงวิทยาศาสตร์และเทคโนโลยี ร่วมกับศูนย์วิทยาศาสตร์และวัฒนธรรมเพื่อการศึกษาร้อยเอ็ด จัดกิจกรรมเสวนาอวกาศสัญจร เรื่อง &amp;ldquo;การประยุกต์ใช้เทคโนโลยีอวกาศและภูมิสารสนเทศเพื่อบริหารจัดการทรัพยากรและสิ่งแวดล้อมสู่ชุมชน&amp;rdquo; เพื่อให้ความรู้เบื้องต้นทางด้านการประยุกต์เทคโนโลยีอวกาศและภูมิสารสนเทศกับชุมชนและท้องถิ่น โดยระดมความคิดเห็นของชุมชนพร้อมรับฟังข้อเสนอแนะ ปัญหาที่เกิดขึ้นในชุมชนเพื่อกำหนดแนวทางเนื้อหานิทรรศการที่จะติดตั้ง ที่ศูนย์เรียนรู้ภูมิสารสนเทศชุมชนในท้องถิ่น ซึ่งจังหวัดร้อยเอ็ด เป็นจังหวัดเป้าหมายที่จะดำเนินการในปี 2557 โดยมีคณะวิทยากรจากสำนักงานพัฒนาเทคโนโลยีอวกาศและภูมิสารสนเทศ กระทรวงวิทยาศาสตร์และเทคโนโลยี สำนักงานพัฒนาเทคโนโลยีอวกาศและภูมิสารสนเทศ&lt;/div&gt;
&lt;div style=&quot;text-indent:40px;&quot;&gt;
	ทั้งนี้ มียุทธศาสตร์ด้านการพัฒนากำลังคน และสร้างความตระหนักในการนำวิทยาศาสตร์และเทคโนโลยีมาเป็นปัจจัยสำคัญในการเพิ่มความสามารถในการแข่งขันทางเศรษฐกิจ ยกระดับคุณภาพชีวิตพัฒนาประเทศและสร้างเสริมความรู้ความคิดของประชาชนทางด้านวิทยาศาสตร์ พร้อมทั้งเร่งผลิตและพัฒนาบุคลากรด้านวิทยาศาสตร์และเทคโนโลยี ให้มีความพร้อมในการใช้เทคโนโลยีภูมิสารสนเทศ ในการบริหารจัดการทรัพยากรสิ่งแวดล้อมและภัยพิบัติด้านต่าง ๆ&lt;/div&gt;
&lt;p&gt;
	&amp;nbsp;&lt;/p&gt;
&lt;div align=&quot;left&quot;&gt;
	ประเสริฐ อินทา รายงาน&lt;/div&gt;
&lt;div align=&quot;left&quot;&gt;
	&amp;nbsp;&lt;/div&gt;
&lt;div align=&quot;left&quot;&gt;
	&amp;nbsp;&lt;/div&gt;
&lt;div align=&quot;left&quot;&gt;
	&amp;nbsp;&lt;/div&gt;
&lt;div align=&quot;left&quot;&gt;
	&amp;nbsp;&lt;/div&gt;
&lt;div align=&quot;left&quot;&gt;
	FahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestFahtestv&lt;/div&gt;', N'test', N'ธณัฐชัย แก้วมงคล', NULL, N'627b0f43f7f06772b8a3902cd9fbfee1.pdf', N'1อนุญาตให้เผยแพร่', N'ธณัฐชัย แก้วมงคล', CAST(0x0000A34E012D53D8 AS DateTime), CAST(0x0000A355014F3160 AS DateTime), 4, 3, 1, NULL, N'ธณัฐชัย แก้วมงคล', 1, N'ดีมาก', N'TNICT5706060010001', N'นาย ประเสริฐ อินทา')
INSERT [dbo].[article] ([ATC_id], [ATC_category_ref], [ATC_writer_key], [ATC_image], [ATC_date], [ATC_title], [ATC_short_desc], [ATC_desc], [ATC_tag], [ATC_writer], [ATC_video], [ATC_file], [ATC_status], [ATC_approve_by], [ATC_add], [ATC_update], [ATC_viewall], [ATC_quality], [ATC_activated], [ATC_comment], [ATC_userupdate], [ATC_suggest], [ATC_reason], [ATC_news_ref], [ATC_writer_ref]) VALUES (8, 6, 5, N'e5c9929755e2b4d219c563c9b34c814e.jpg', CAST(0xA9380B00 AS Date), N'Testสมาชิก', N'TestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิก', N'&lt;p&gt;
	TestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิกTestสมาชิก&lt;/p&gt;', N'test', N'สมาชิก สมาชิก', N'958234fe2b09c218c35940652b3e98d8.mp4', N'faa4d38c0c1079018b2116d135e62ba5.pdf', N'1อนุญาตให้เผยแพร่', N'ธณัฐชัย แก้วมงคล', CAST(0x0000A34E013882BC AS DateTime), CAST(0x0000A34E013C5540 AS DateTime), 9, 3, 1, NULL, N'ผู้เชี่ยวชาญ', 0, N'-', N'0', N'0')
SET IDENTITY_INSERT [dbo].[article] OFF
/****** Object:  Table [dbo].[address]    Script Date: 06/28/2014 19:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[address](
	[ADD_id] [int] NOT NULL,
	[ADD_address] [text] NULL,
	[ADD_tel] [varchar](255) NULL,
	[ADD_fax] [varchar](255) NULL,
	[ADD_web] [varchar](255) NULL,
	[ADD_email] [varchar](255) NULL,
	[ADD_update] [datetime2](7) NULL,
	[ADD_userupdate] [varchar](150) NULL,
	[ADD_image] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ADD_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[address] ([ADD_id], [ADD_address], [ADD_tel], [ADD_fax], [ADD_web], [ADD_email], [ADD_update], [ADD_userupdate], [ADD_image]) VALUES (1, N'เลขที่9 ซอยอารีย์สัมพันธ์ ถนนพระราม6 แขวงสามเสนใน เขตพญาไท กรุงเทพ 10400', N'02-618-2323', N'02-618-2364, 02-618-2399', N'http://www.prd.go.th', N'webmaster@prd.go.th', CAST(0x078034EB168A8C380B AS DateTime2), N'ธณัฐชัย แก้วมงคล', N'abb3f3d7bd6c63fcfb6823bd46b454a6.png')
/****** Object:  Table [dbo].[account]    Script Date: 06/28/2014 19:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[account](
	[ACC_id] [int] IDENTITY(1,1) NOT NULL,
	[ACC_username] [varchar](30) NULL,
	[ACC_password] [varchar](30) NULL,
	[ACC_name] [varchar](150) NULL,
	[ACC_dep1] [varchar](255) NULL,
	[ACC_dep2] [varchar](255) NULL,
	[ACC_position] [varchar](255) NULL,
	[ACC_email] [varchar](100) NULL,
	[ACC_type] [varchar](255) NULL,
	[ACC_menu] [ntext] NULL,
	[ACC_activated] [int] NULL,
	[ACC_userupdate] [varchar](150) NULL,
	[ACC_add] [datetime] NULL,
	[ACC_update] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ACC_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[account] ON
INSERT [dbo].[account] ([ACC_id], [ACC_username], [ACC_password], [ACC_name], [ACC_dep1], [ACC_dep2], [ACC_position], [ACC_email], [ACC_type], [ACC_menu], [ACC_activated], [ACC_userupdate], [ACC_add], [ACC_update]) VALUES (1, N'admin', N'123456', N'ธณัฐชัย แก้วมงคล', NULL, NULL, NULL, NULL, N'Administrator', N'ALL', 1, N'ธณัฐชัย แก้วมงคล', CAST(0x0000A325011FF148 AS DateTime), CAST(0x0000A325011FF5F8 AS DateTime))
INSERT [dbo].[account] ([ACC_id], [ACC_username], [ACC_password], [ACC_name], [ACC_dep1], [ACC_dep2], [ACC_position], [ACC_email], [ACC_type], [ACC_menu], [ACC_activated], [ACC_userupdate], [ACC_add], [ACC_update]) VALUES (3, N'admin2', N'123456', N'อลงกรณ์ รังสิกุล', N'AIT', N'AIT', N'Programmer', N'test@ait.co.th', NULL, N'ผู้เชี่ยวชาญ', 1, N'อลงกรณ์ รังสิกุล', CAST(0x0000A32600048CD8 AS DateTime), CAST(0x0000A32E01477998 AS DateTime))
INSERT [dbo].[account] ([ACC_id], [ACC_username], [ACC_password], [ACC_name], [ACC_dep1], [ACC_dep2], [ACC_position], [ACC_email], [ACC_type], [ACC_menu], [ACC_activated], [ACC_userupdate], [ACC_add], [ACC_update]) VALUES (4, N'admin3', N'123456', N'testtest testtest', N'AIT', N'AIT', N'Programmer', N'test@ait.co.th', NULL, N'สมาชิก', 1, N'ธณัฐชัย แก้วมงคล', CAST(0x0000A32E0150D038 AS DateTime), CAST(0x0000A32E0150D038 AS DateTime))
INSERT [dbo].[account] ([ACC_id], [ACC_username], [ACC_password], [ACC_name], [ACC_dep1], [ACC_dep2], [ACC_position], [ACC_email], [ACC_type], [ACC_menu], [ACC_activated], [ACC_userupdate], [ACC_add], [ACC_update]) VALUES (5, N'member', N'123456', N'สมาชิก สมาชิก', N'สำนักข่าว', N'สำนักข่าว', N'Tester', N'mikky_fa@hotmail.com', NULL, N'สมาชิก', 1, N'ธณัฐชัย แก้วมงคล', CAST(0x0000A34E01370130 AS DateTime), CAST(0x0000A34E01370130 AS DateTime))
INSERT [dbo].[account] ([ACC_id], [ACC_username], [ACC_password], [ACC_name], [ACC_dep1], [ACC_dep2], [ACC_position], [ACC_email], [ACC_type], [ACC_menu], [ACC_activated], [ACC_userupdate], [ACC_add], [ACC_update]) VALUES (6, N'specialmember', N'123456', N'ผู้เชี่ยวชาญ', N'AIT', N'AIT', N'AIT', N'mikky_fa@hotmail.com', NULL, N'ผู้เชี่ยวชาญ', 1, N'ธณัฐชัย แก้วมงคล', CAST(0x0000A34E013B3174 AS DateTime), CAST(0x0000A34E013B3174 AS DateTime))
SET IDENTITY_INSERT [dbo].[account] OFF
/****** Object:  Default [DF__article__ATC_sug__1FCDBCEB]    Script Date: 06/28/2014 19:32:24 ******/
ALTER TABLE [dbo].[article] ADD  DEFAULT ((0)) FOR [ATC_suggest]
GO
/****** Object:  Default [DF__article__ATC_new__20C1E124]    Script Date: 06/28/2014 19:32:24 ******/
ALTER TABLE [dbo].[article] ADD  DEFAULT ('') FOR [ATC_news_ref]
GO
/****** Object:  Default [DF__article__ATC_wri__21B6055D]    Script Date: 06/28/2014 19:32:24 ******/
ALTER TABLE [dbo].[article] ADD  DEFAULT ('') FOR [ATC_writer_ref]
GO
