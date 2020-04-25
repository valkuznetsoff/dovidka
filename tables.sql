USE [DOVIDKA]
--GO

SET DATEFORMAT DMY;

CREATE TABLE dbo._levels(
	id int identity(1,1) not null,
	name varchar(255) default '',
	PRIMARY KEY (id)
);
--go

CREATE TABLE dbo._objects(
	id int identity(1,1) not null,
	guid uniqueidentifier NOT NULL DEFAULT (newid()),
	guid_parent uniqueidentifier,
	level int DEFAULT 0,
	name varchar(255) DEFAULT (''),
	datestart date DEFAULT (getdate()),
	dateexpired date,
	updated datetime DEFAULT current_timestamp,
	PRIMARY KEY (id)
)
CREATE INDEX _objects_guid ON dbo._objects(guid)
CREATE INDEX _objects_guid_parent ON dbo._objects(guid_parent)
CREATE INDEX _objects_datestart ON dbo._objects(datestart)
CREATE INDEX _objects_dateexpireed ON dbo._objects(dateexpired)
--go

ALTER TABLE dbo._objects 
	add constraint fk_level foreign key (level) references _levels(id)
--go

insert into dbo._levels(name) values ( '��������������');
insert into dbo._levels(name) values ( '�����������');
insert into dbo._levels(name) values ( '�����������');
insert into dbo._levels(name) values ( '�����');
insert into dbo._levels(name) values ( '������');
insert into dbo._levels(name) values ( '���������');

insert into dbo._objects(level, name) values( 1, '�������� ���. �.����');
insert into dbo._objects(level, name) values( 1, '�������� ���. �.���������');
insert into dbo._objects(level, name) values( 1, '�������� ���. �.������');
insert into dbo._objects(level, name) values( 1, '�������� ���. �.�������');
insert into dbo._objects(level, name) values( 1, '�������� ���. �.������');
insert into dbo._objects(level, name) values( 1, '�������� ���. �.���������');
insert into dbo._objects(level, name) values( 1, '�������� ���. �.����� �������');
insert into dbo._objects(level, name) values( 1, '���������������� ���. �.�����');
insert into dbo._objects(level, name) values( 1, '���������������� ���. �.������ ���');
insert into dbo._objects(level, name) values( 1, '���������������� ���. �.������������');
insert into dbo._objects(level, name) values( 1, '���������������� ���. �.���������');
insert into dbo._objects(level, name) values( 1, '���������������� ���. �.���������');
insert into dbo._objects(level, name) values( 1, '���������������� ���. �.��������');
insert into dbo._objects(level, name) values( 1, '����������� ���. �.�������');
insert into dbo._objects(level, name) values( 1, '����������� ���. �.�����');
insert into dbo._objects(level, name) values( 1, '����������� ���. �.������');
insert into dbo._objects(level, name) values( 1, '����������� ���. �.�������');
insert into dbo._objects(level, name) values( 1, '����������� ���. �.�������');
insert into dbo._objects(level, name) values( 1, '����������� ���. �.��������');
insert into dbo._objects(level, name) values( 1, '�������� ���. �.������');
insert into dbo._objects(level, name) values( 1, '�������� ���. �.���������');
insert into dbo._objects(level, name) values( 1, '�������� ���. �.��������������');
insert into dbo._objects(level, name) values( 1, '�������� ���. �.����������');
insert into dbo._objects(level, name) values( 1, '�������� ���. �.��������');
insert into dbo._objects(level, name) values( 1, '�������� ���. �.��������');
insert into dbo._objects(level, name) values( 1, '�������� ���. �.��������');
insert into dbo._objects(level, name) values( 2, '���');
insert into dbo._objects(level, name) values( 2, '��� ������');
insert into dbo._objects(level, name) values( 2, '����');
insert into dbo._objects(level, name) values( 2, '������� ������ ���');
insert into dbo._objects(level, name) values( 2, '����������');
insert into dbo._objects(level, name) values( 2, '��� ���');
insert into dbo._objects(level, name) values( 2, '���� �����');
insert into dbo._objects(level, name) values( 2, '���� �����');
insert into dbo._objects(level, name) values( 2, '�����');
insert into dbo._objects(level, name) values( 2, '�������');
insert into dbo._objects(level, name) values( 2, '��� �����������');
insert into dbo._objects(level, name) values( 2, '������');
insert into dbo._objects(level, name) values( 2, '������');
insert into dbo._objects(level, name) values( 2, '�����');
insert into dbo._objects(level, name) values( 2, '����� ������');
insert into dbo._objects(level, name) values( 2, '����� �����');
insert into dbo._objects(level, name) values( 3, '����������� ���������');
insert into dbo._objects(level, name) values( 3, '����������� ��������');
insert into dbo._objects(level, name) values( 3, '����������� �������������� ����������');
insert into dbo._objects(level, name) values( 3, '����������� ������ � ������� ���������');
insert into dbo._objects(level, name) values( 3, '����������� ���������');
insert into dbo._objects(level, name) values( 4, '����������� ������');
insert into dbo._objects(level, name) values( 4, '���������������� �����');
insert into dbo._objects(level, name) values( 4, '������������� ����');
insert into dbo._objects(level, name) values( 4, '������������������� �����');
insert into dbo._objects(level, name) values( 4, '����� ������������� ������������');
insert into dbo._objects(level, name) values( 4, '����� �������������� ������������');
insert into dbo._objects(level, name) values( 4, '����� ����������');
insert into dbo._objects(level, name) values( 4, '����� �����������');
insert into dbo._objects(level, name) values( 4, '����� �� ������ � ���������������');
insert into dbo._objects(level, name) values( 4, '����� ����������������');
insert into dbo._objects(level, name) values( 4, '����� ������������');
insert into dbo._objects(level, name) values( 4, '��������');
insert into dbo._objects(level, name) values( 4, '���������������-����������� �����');
insert into dbo._objects(level, name) values( 4, '��������� ����');
insert into dbo._objects(level, name) values( 4, '������������� ����');
insert into dbo._objects(level, name) values( 5, '������ �������������');
insert into dbo._objects(level, name) values( 5, '������ �������� ������������');
insert into dbo._objects(level, name) values( 5, '������ ���������');
insert into dbo._objects(level, name) values( 5, '������ ���������');
insert into dbo._objects(level, name) values( 5, '������ �����������');
insert into dbo._objects(level, name) values( 5, '������ ����������');
insert into dbo._objects(level, name) values( 5, '������ ������');
insert into dbo._objects(level, name) values( 5, '������ ������ �����');
insert into dbo._objects(level, name) values( 5, '������ ������� ���������');
insert into dbo._objects(level, name) values( 5, '������ ����������������');
insert into dbo._objects(level, name) values( 5, '������ ��������');
insert into dbo._objects(level, name) values( 5, '������ ������������');
insert into dbo._objects(level, name) values( 5, '������ ������� ������������');
insert into dbo._objects(level, name) values( 5, '������ ��������������������');
insert into dbo._objects(level, name) values( 5, '������ �������������');
insert into dbo._objects(level, name) values( 6, '������ �.�.');
insert into dbo._objects(level, name) values( 6, '������ �.�.');
insert into dbo._objects(level, name) values( 6, '�������� �.�.');
insert into dbo._objects(level, name) values( 6, '������� �.�.');
insert into dbo._objects(level, name) values( 6, '������� �.�.');
insert into dbo._objects(level, name) values( 6, '�������� �.�.');
insert into dbo._objects(level, name) values( 6, '������� �.�.');
insert into dbo._objects(level, name) values( 6, '������� �.�');
insert into dbo._objects(level, name) values( 6, '�������� �.�.');
insert into dbo._objects(level, name) values( 6, '������� �.�.');
insert into dbo._objects(level, name) values( 6, '������� �.�.');
insert into dbo._objects(level, name) values( 6, '������ �.�.');
insert into dbo._objects(level, name) values( 6, '������ �.�.');
insert into dbo._objects(level, name) values( 6, '����� �.�.');
insert into dbo._objects(level, name) values( 6, '������� �.�.');
insert into dbo._objects(level, name) values( 6, '��������� �.�.');
insert into dbo._objects(level, name) values( 6, '������ �.�.');
insert into dbo._objects(level, name) values( 6, '��������� �.�.');
--go

update dbo._objects set datestart = DATEADD(day, -FLOOR(RAND(CHECKSUM(NEWID()))*(200-0+1)+0), datestart);
--go
update dbo._objects set updated = DATEADD(second, -FLOOR(RAND(CHECKSUM(NEWID()))*(50*86400-0+1)+0), current_timestamp);
--go
