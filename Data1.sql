/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2019/1/2 15:21:22                            */
/*==============================================================*/


if exists (select 1
            from  sysindexes
           where  id    = object_id('书籍')
            and   name  = '借阅_FK'
            and   indid > 0
            and   indid < 255)
   drop index 书籍.借阅_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('书籍')
            and   type = 'U')
   drop table 书籍
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('借书')
            and   name  = '借书2_FK'
            and   indid > 0
            and   indid < 255)
   drop index 借书.借书2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('借书')
            and   name  = '借书_FK'
            and   indid > 0
            and   indid < 255)
   drop index 借书.借书_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('借书')
            and   type = 'U')
   drop table 借书
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('借阅用户')
            and   name  = '填写_FK'
            and   indid > 0
            and   indid < 255)
   drop index 借阅用户.填写_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('借阅用户')
            and   type = 'U')
   drop table 借阅用户
go

if exists (select 1
            from  sysobjects
           where  id = object_id('图书借阅表')
            and   type = 'U')
   drop table 图书借阅表
go

/*==============================================================*/
/* Table: 书籍                                                    */
/*==============================================================*/
create table 书籍 (
   条码号                  varchar(50)          not null,
   学生编号                 char(10)             not null,
   题名                   varchar(50)          not null,
   责任者                  varchar(50)          not null,
   借阅日期                 varchar(50)          not null,
   归还日期                 varchar(50)          not null,
   馆藏地                  varchar(50)          not null,
   书刊状态                 varchar(50)          not null,
   索书号                  varchar(50)          not null,
   年卷期                  char(10)             not null,
   定位                   varchar(50)          not null,
   出版发行项                varchar(50)          not null,
   ISBN及定价              varchar(50)          not null,
   内容简介                 varchar(100)         not null,
   目录                   varchar(50)          not null,
   载体形态项                varchar(50)          not null,
   个人责任者                varchar(50)          not null,
   个人次要责任者              varchar(50)          not null,
   学科主题                 varchar(50)          not null,
   中国法分类号               char(10)             null,
   constraint PK_书籍 primary key nonclustered (条码号)
)
go

/*==============================================================*/
/* Index: 借阅_FK                                                 */
/*==============================================================*/
create index 借阅_FK on 书籍 (
学生编号 ASC
)
go

/*==============================================================*/
/* Table: 借书                                                    */
/*==============================================================*/
create table 借书 (
   学号                   char(10)             not null,
   条码号                  varchar(50)          not null,
   constraint PK_借书 primary key (学号, 条码号)
)
go

/*==============================================================*/
/* Index: 借书_FK                                                 */
/*==============================================================*/
create index 借书_FK on 借书 (
学号 ASC
)
go

/*==============================================================*/
/* Index: 借书2_FK                                                */
/*==============================================================*/
create index 借书2_FK on 借书 (
条码号 ASC
)
go

/*==============================================================*/
/* Table: 借阅用户                                                  */
/*==============================================================*/
create table 借阅用户 (
   学号                   char(10)             not null,
   学生编号                 char(10)             not null,
   姓名                   char(10)             not null,
   班级                   varchar(50)          not null,
   年龄                   char(10)             not null,
   性别                   char(10)             not null,
   诚信级别                 char(10)             not null,
   constraint PK_借阅用户 primary key nonclustered (学号)
)
go

/*==============================================================*/
/* Index: 填写_FK                                                 */
/*==============================================================*/
create index 填写_FK on 借阅用户 (
学生编号 ASC
)
go

/*==============================================================*/
/* Table: 图书借阅表                                                 */
/*==============================================================*/
create table 图书借阅表 (
   图书编号                 char(10)             not null,
   借阅时间                 varchar(50)          not null,
   学生编号                 char(10)             not null,
   归还时间                 varchar(50)          not null,
   constraint PK_图书借阅表 primary key nonclustered (学生编号)
)
go

