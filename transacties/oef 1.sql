start transaction;

create table oliebol (
    id serial primary key,
    kleur varchar(50)
);

commit;

select * from information_schema.tables where table_name = 'oliebol';
