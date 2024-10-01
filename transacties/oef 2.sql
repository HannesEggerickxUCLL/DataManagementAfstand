start transaction;

drop table if exists oliebol;

rollback;

select * from information_schema.tables where table_name = 'oliebol';

start transaction;

create table bloedwaarde (
    id serial primary key,
    cholesterol varchar(50)
);

rollback;

select * from information_schema.tables where table_name = 'bloedwaarde';
