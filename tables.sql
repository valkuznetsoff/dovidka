SET DATEFORMAT DMY;

CREATE TABLE dbo._levels(
	id int identity(1,1) not null,
	name varchar(255) default '',
	PRIMARY KEY (id)
);

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

ALTER TABLE dbo._objects 
	add constraint fk_level foreign key (level) references _levels(id)

insert into dbo._levels(name) values ( 'Местоположение');
insert into dbo._levels(name) values ( 'Предприятие');
insert into dbo._levels(name) values ( 'Департамент');
insert into dbo._levels(name) values ( 'Отдел');
insert into dbo._levels(name) values ( 'Группа');
insert into dbo._levels(name) values ( 'Сотрудник');

insert into dbo._objects(level, name) values( 1, 'Киевская обл. г.Киев');
insert into dbo._objects(level, name) values( 1, 'Киевская обл. г.Борисполь');
insert into dbo._objects(level, name) values( 1, 'Киевская обл. г.Ирпень');
insert into dbo._objects(level, name) values( 1, 'Киевская обл. г.Бровары');
insert into dbo._objects(level, name) values( 1, 'Киевская обл. г.Фастов');
insert into dbo._objects(level, name) values( 1, 'Киевская обл. г.Переяслав');
insert into dbo._objects(level, name) values( 1, 'Киевская обл. г.Белая Церковь');
insert into dbo._objects(level, name) values( 1, 'Днепропетровская обл. г.Днепр');
insert into dbo._objects(level, name) values( 1, 'Днепропетровская обл. г.Кривой Рог');
insert into dbo._objects(level, name) values( 1, 'Днепропетровская обл. г.Новомосковск');
insert into dbo._objects(level, name) values( 1, 'Днепропетровская обл. г.Каменское');
insert into dbo._objects(level, name) values( 1, 'Днепропетровская обл. г.Павлоград');
insert into dbo._objects(level, name) values( 1, 'Днепропетровская обл. г.Марганец');
insert into dbo._objects(level, name) values( 1, 'Харьковская обл. г.Харьков');
insert into dbo._objects(level, name) values( 1, 'Харьковская обл. г.Змиев');
insert into dbo._objects(level, name) values( 1, 'Харьковская обл. г.Чугуев');
insert into dbo._objects(level, name) values( 1, 'Харьковская обл. г.Лозовая');
insert into dbo._objects(level, name) values( 1, 'Харьковская обл. г.Песочин');
insert into dbo._objects(level, name) values( 1, 'Харьковская обл. г.Балаклея');
insert into dbo._objects(level, name) values( 1, 'Донецкая обл. г.Донецк');
insert into dbo._objects(level, name) values( 1, 'Донецкая обл. г.Мариуполь');
insert into dbo._objects(level, name) values( 1, 'Донецкая обл. г.Константиновка');
insert into dbo._objects(level, name) values( 1, 'Донецкая обл. г.Краматорск');
insert into dbo._objects(level, name) values( 1, 'Донецкая обл. г.Славянск');
insert into dbo._objects(level, name) values( 1, 'Донецкая обл. г.Норловка');
insert into dbo._objects(level, name) values( 1, 'Донецкая обл. г.Макеевка');
insert into dbo._objects(level, name) values( 2, 'Ева');
insert into dbo._objects(level, name) values( 2, 'АБТ Маркет');
insert into dbo._objects(level, name) values( 2, 'Алеф');
insert into dbo._objects(level, name) values( 2, 'Атптека низких цен');
insert into dbo._objects(level, name) values( 2, 'Мегамаркет');
insert into dbo._objects(level, name) values( 2, 'Ваш дом');
insert into dbo._objects(level, name) values( 2, 'Своя линия');
insert into dbo._objects(level, name) values( 2, 'Наша марка');
insert into dbo._objects(level, name) values( 2, 'Визит');
insert into dbo._objects(level, name) values( 2, 'Орхидея');
insert into dbo._objects(level, name) values( 2, 'Дом электроники');
insert into dbo._objects(level, name) values( 2, 'Фуршет');
insert into dbo._objects(level, name) values( 2, 'Фермер');
insert into dbo._objects(level, name) values( 2, 'Итера');
insert into dbo._objects(level, name) values( 2, 'Новая аптека');
insert into dbo._objects(level, name) values( 2, 'Новая почта');
insert into dbo._objects(level, name) values( 3, 'Департамент аналитики');
insert into dbo._objects(level, name) values( 3, 'Департамент бухучета');
insert into dbo._objects(level, name) values( 3, 'Департамент информационных технологий');
insert into dbo._objects(level, name) values( 3, 'Департамент кадров и подбора персонала');
insert into dbo._objects(level, name) values( 3, 'Департамент экономики');
insert into dbo._objects(level, name) values( 4, 'Руководящий состав');
insert into dbo._objects(level, name) values( 4, 'Автотранспортный отдел');
insert into dbo._objects(level, name) values( 4, 'Бухгалтерский учет');
insert into dbo._objects(level, name) values( 4, 'Внешнеэкономический отдел');
insert into dbo._objects(level, name) values( 4, 'Отдел автоматизации производства');
insert into dbo._objects(level, name) values( 4, 'Отдел информационной безопасности');
insert into dbo._objects(level, name) values( 4, 'Отдел маркетинга');
insert into dbo._objects(level, name) values( 4, 'Отдел менеджмента');
insert into dbo._objects(level, name) values( 4, 'Отдел по связям с общественностью');
insert into dbo._objects(level, name) values( 4, 'Отдел программирования');
insert into dbo._objects(level, name) values( 4, 'Отдел тестирования');
insert into dbo._objects(level, name) values( 4, 'Приемная');
insert into dbo._objects(level, name) values( 4, 'Производственно-технический отдел');
insert into dbo._objects(level, name) values( 4, 'Складской учет');
insert into dbo._objects(level, name) values( 4, 'Экономический учет');
insert into dbo._objects(level, name) values( 5, 'Группа автоматизации');
insert into dbo._objects(level, name) values( 5, 'Группа быстрого реагирования');
insert into dbo._objects(level, name) values( 5, 'Группа внедрения');
insert into dbo._objects(level, name) values( 5, 'Группа водителей');
insert into dbo._objects(level, name) values( 5, 'Группа контролеров');
insert into dbo._objects(level, name) values( 5, 'Группа операторов');
insert into dbo._objects(level, name) values( 5, 'Группа охраны');
insert into dbo._objects(level, name) values( 5, 'Группа охраны труда');
insert into dbo._objects(level, name) values( 5, 'Группа подбора персонала');
insert into dbo._objects(level, name) values( 5, 'Группа программирования');
insert into dbo._objects(level, name) values( 5, 'Группа слесарей');
insert into dbo._objects(level, name) values( 5, 'Группа тестирования');
insert into dbo._objects(level, name) values( 5, 'Группа техники безопасности');
insert into dbo._objects(level, name) values( 5, 'Группа электрогазосварщиков');
insert into dbo._objects(level, name) values( 5, 'Группа электронщиков');
insert into dbo._objects(level, name) values( 6, 'Иванов П.С.');
insert into dbo._objects(level, name) values( 6, 'Петров В.Ф.');
insert into dbo._objects(level, name) values( 6, 'Вахрушев В.И.');
insert into dbo._objects(level, name) values( 6, 'Семенов Ф.Ш.');
insert into dbo._objects(level, name) values( 6, 'Абрамов У.Ф.');
insert into dbo._objects(level, name) values( 6, 'Кононова Д.С.');
insert into dbo._objects(level, name) values( 6, 'Сергеев С.С.');
insert into dbo._objects(level, name) values( 6, 'Касанов А.О');
insert into dbo._objects(level, name) values( 6, 'Варданов К.Ш.');
insert into dbo._objects(level, name) values( 6, 'Кулешов Р.В.');
insert into dbo._objects(level, name) values( 6, 'Новилев П.С.');
insert into dbo._objects(level, name) values( 6, 'Мамкин А.Щ.');
insert into dbo._objects(level, name) values( 6, 'Пупкин В.А.');
insert into dbo._objects(level, name) values( 6, 'Сачко А.П.');
insert into dbo._objects(level, name) values( 6, 'Головин В.В.');
insert into dbo._objects(level, name) values( 6, 'Бездомный А.С.');
insert into dbo._objects(level, name) values( 6, 'Шутяев О.С.');
insert into dbo._objects(level, name) values( 6, 'Большаков В.О.');
