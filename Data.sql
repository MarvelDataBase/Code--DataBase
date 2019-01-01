/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2019/1/1 20:53:06                            */
/*==============================================================*/


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
            from  sysobjects
           where  id = object_id('借阅用户')
            and   type = 'U')
   drop table 借阅用户
go

/*==============================================================*/
/* Table: 书籍                                                    */
/*==============================================================*/
create table 书籍 (
   条码号                  varchar(50)          not null,
   题名                   varchar(50)          not null,
   责任者                  varchar(50)          not null,
   借阅日期                 varchar(50)          not null,
   归还日期                 varchar(50)          not null,
   馆藏地                  varchar(50)          not null,
   constraint PK_书籍 primary key nonclustered (条码号)
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
   姓名                   char(10)             not null,
   班级                   varchar(50)          not null,
   年龄                   char(10)             not null,
   性别                   char(10)             not null,
   诚信级别                 char(10)             not null,
   constraint PK_借阅用户 primary key nonclustered (学号)
)
go

