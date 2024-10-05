-- noinspection SqlDialectInspectionForFile

-- noinspection SqlNoDataSourceInspectionForFile

create database furry_friends_db;

use furry_friends_db;

create table if not exists pet
(
    id   BIGINT(19) auto_increment
    primary key,
    name VARCHAR(255) not null,
    age  INT(10)      not null,
    type VARCHAR(255) not null
    );

create table if not exists cat
(
    id     BIGINT(19)   not null
    primary key,
    color  VARCHAR(255) null,
    indoor TINYINT(3)   null,
    constraint cat_ibfk_1
    foreign key (id) references pet (id)
    on delete cascade
    );

create table if not exists dog
(
    id      BIGINT(19)   not null
    primary key,
    breed   VARCHAR(255) null,
    trained TINYINT(3)   null,
    constraint dog_ibfk_1
    foreign key (id) references pet (id)
    on delete cascade
    );