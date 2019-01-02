/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2019/1/2 15:21:22                            */
/*==============================================================*/


if exists (select 1
            from  sysindexes
           where  id    = object_id('�鼮')
            and   name  = '����_FK'
            and   indid > 0
            and   indid < 255)
   drop index �鼮.����_FK
go

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
            from  sysindexes
           where  id    = object_id('�����û�')
            and   name  = '��д_FK'
            and   indid > 0
            and   indid < 255)
   drop index �����û�.��д_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�����û�')
            and   type = 'U')
   drop table �����û�
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ͼ����ı�')
            and   type = 'U')
   drop table ͼ����ı�
go

/*==============================================================*/
/* Table: �鼮                                                    */
/*==============================================================*/
create table �鼮 (
   �����                  varchar(50)          not null,
   ѧ�����                 char(10)             not null,
   ����                   varchar(50)          not null,
   ������                  varchar(50)          not null,
   ��������                 varchar(50)          not null,
   �黹����                 varchar(50)          not null,
   �ݲص�                  varchar(50)          not null,
   �鿯״̬                 varchar(50)          not null,
   �����                  varchar(50)          not null,
   �����                  char(10)             not null,
   ��λ                   varchar(50)          not null,
   ���淢����                varchar(50)          not null,
   ISBN������              varchar(50)          not null,
   ���ݼ��                 varchar(100)         not null,
   Ŀ¼                   varchar(50)          not null,
   ������̬��                varchar(50)          not null,
   ����������                varchar(50)          not null,
   ���˴�Ҫ������              varchar(50)          not null,
   ѧ������                 varchar(50)          not null,
   �й��������               char(10)             null,
   constraint PK_�鼮 primary key nonclustered (�����)
)
go

/*==============================================================*/
/* Index: ����_FK                                                 */
/*==============================================================*/
create index ����_FK on �鼮 (
ѧ����� ASC
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
   ѧ�����                 char(10)             not null,
   ����                   char(10)             not null,
   �༶                   varchar(50)          not null,
   ����                   char(10)             not null,
   �Ա�                   char(10)             not null,
   ���ż���                 char(10)             not null,
   constraint PK_�����û� primary key nonclustered (ѧ��)
)
go

/*==============================================================*/
/* Index: ��д_FK                                                 */
/*==============================================================*/
create index ��д_FK on �����û� (
ѧ����� ASC
)
go

/*==============================================================*/
/* Table: ͼ����ı�                                                 */
/*==============================================================*/
create table ͼ����ı� (
   ͼ����                 char(10)             not null,
   ����ʱ��                 varchar(50)          not null,
   ѧ�����                 char(10)             not null,
   �黹ʱ��                 varchar(50)          not null,
   constraint PK_ͼ����ı� primary key nonclustered (ѧ�����)
)
go

