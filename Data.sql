/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2019/1/1 20:53:06                            */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('�鼮')
            and   type = 'U')
   drop table �鼮
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����')
            and   name  = '����2_FK'
            and   indid > 0
            and   indid < 255)
   drop index ����.����2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����')
            and   name  = '����_FK'
            and   indid > 0
            and   indid < 255)
   drop index ����.����_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('����')
            and   type = 'U')
   drop table ����
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�����û�')
            and   type = 'U')
   drop table �����û�
go

/*==============================================================*/
/* Table: �鼮                                                    */
/*==============================================================*/
create table �鼮 (
   �����                  varchar(50)          not null,
   ����                   varchar(50)          not null,
   ������                  varchar(50)          not null,
   ��������                 varchar(50)          not null,
   �黹����                 varchar(50)          not null,
   �ݲص�                  varchar(50)          not null,
   constraint PK_�鼮 primary key nonclustered (�����)
)
go

/*==============================================================*/
/* Table: ����                                                    */
/*==============================================================*/
create table ���� (
   ѧ��                   char(10)             not null,
   �����                  varchar(50)          not null,
   constraint PK_���� primary key (ѧ��, �����)
)
go

/*==============================================================*/
/* Index: ����_FK                                                 */
/*==============================================================*/
create index ����_FK on ���� (
ѧ�� ASC
)
go

/*==============================================================*/
/* Index: ����2_FK                                                */
/*==============================================================*/
create index ����2_FK on ���� (
����� ASC
)
go

/*==============================================================*/
/* Table: �����û�                                                  */
/*==============================================================*/
create table �����û� (
   ѧ��                   char(10)             not null,
   ����                   char(10)             not null,
   �༶                   varchar(50)          not null,
   ����                   char(10)             not null,
   �Ա�                   char(10)             not null,
   ���ż���                 char(10)             not null,
   constraint PK_�����û� primary key nonclustered (ѧ��)
)
go

