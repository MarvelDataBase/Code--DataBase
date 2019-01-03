/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2019/1/4 0:00:53                             */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('book')
            and   type = 'U')
   drop table book
go

if exists (select 1
            from  sysobjects
           where  id = object_id('location')
            and   type = 'U')
   drop table location
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"table"')
            and   type = 'U')
   drop table "table"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"user"')
            and   type = 'U')
   drop table "user"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('借书')
            and   type = 'U')
   drop table 借书
go

/*==============================================================*/
/* Table: book                                                  */
/*==============================================================*/
create table book (
   number               varchar(50)          not null,
   bn                   char(10)             not null,
   sn                   char(10)             not null,
   code                 varchar(50)          not null,
   title                varchar(50)          not null,
   writer               varchar(50)          not null,
   datea                varchar(50)          not null,
   dateb                varchar(50)          not null,
   place                varchar(50)          not null,
   search               varchar(50)          not null,
   year                 char(10)             not null,
   publish              varchar(50)          not null,
   money                varchar(50)          not null,
   "desc"               varchar(100)         not null,
   descc                varchar(50)          not null,
   num                  varchar(50)          not null,
   author               varchar(50)          not null,
   authorr              varchar(50)          not null,
   main                 varchar(50)          not null,
   hao                  char(10)             null,
   constraint PK_BOOK primary key nonclustered (number)
)
go

/*==============================================================*/
/* Table: location                                              */
/*==============================================================*/
create table location (
   places               varchar(50)          not null,
   code                 varchar(50)          not null,
   condition            varchar(50)          not null,
   room                 varchar(50)          not null,
   constraint PK_LOCATION primary key nonclustered (code)
)
go

/*==============================================================*/
/* Table: "table"                                               */
/*==============================================================*/
create table "table" (
   bn                   char(10)             not null,
   bt                   varchar(50)          not null,
   sn                   char(10)             not null,
   btt                  varchar(50)          not null,
   constraint PK_TABLE primary key nonclustered (bn, sn)
)
go

/*==============================================================*/
/* Table: "user"                                                */
/*==============================================================*/
create table "user" (
   id                   int                  not null,
   bn                   char(10)             not null,
   sn                   char(10)             not null,
   name                 char(10)             not null,
   class                varchar(50)          not null,
   age                  char(10)             not null,
   sex                  char(10)             not null,
   levels               char(10)             not null,
   username             char(20)             not null,
   password             char(20)             not null,
   constraint PK_USER primary key nonclustered (id)
)
go

/*==============================================================*/
/* Table: 借书                                                    */
/*==============================================================*/
create table 借书 (
   number               varchar(50)          not null,
   id                   int                  not null,
   constraint PK_借书 primary key nonclustered (number, id)
)
go

