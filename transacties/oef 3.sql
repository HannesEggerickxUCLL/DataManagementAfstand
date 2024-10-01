start transaction;

create table kraam (
    naam varchar(50),
    type varchar(50)
);

savepoint buikvol;

create table beoordeling (
    kraam_naam varchar(50),
    waarde int
);

select * from information_schema.tables where table_name = 'beoordeling';

rollback to buikvol;

select * from information_schema.tables where table_name = 'beoordeling';

select * from information_schema.tables where table_name = 'kraam';

commit;

select * from information_schema.tables where table_name = 'kraam';
