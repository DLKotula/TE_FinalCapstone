-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

-- CREATE statements go here
DROP TABLE IF EXISTS app_user, comic, collection, user_comics, user_collections, comic_collections cascade;

CREATE TABLE app_user
(
    id        SERIAL PRIMARY KEY,
    user_name varchar(32)  NOT NULL UNIQUE,
    password  varchar(32)  NOT NULL,
    role      varchar(32),
    salt      varchar(255) NOT NULL
);


CREATE TABLE comic
(
    comic_id            SERIAL PRIMARY KEY,
    comic_name          varchar(255) not null,
    publish_date        date         not null,
    image               varchar(255) not null,
    genre               varchar(50)  not null,
    date_obtained       date         not null,
    imprint             varchar(255) not null,
    series              varchar(255) not null,
    comic_serial_number varchar(25)  null,
    story_arc           varchar(255) null,
    description         text         null

);


CREATE table collection
(
    collection_id    serial primary key,
    collection_name  varchar(255) not null,
    is_private       boolean      null,
    is_main          boolean      null,
    image            varchar(255) null,
    number_of_comics integer      null,
    description      text         null
);

create table user_comics
(
    id       integer not null,
    comic_id integer not null,
    constraint PK_user_comics primary key (id, comic_id)
);

create table user_collections
(
    id            integer not null,
    collection_id integer not null,
    constraint PK_user_collections primary key (id, collection_id)
);


create table comic_collections
(
    comic_id      integer not null,
    collection_id integer not null,
    constraint PK_comic_collections primary key (comic_id, collection_id)
);


alter table user_comics
    add constraint FK_uc_user_id foreign key (id) references app_user (id);
alter table user_comics
    add constraint FK_uc_comic_id foreign key (comic_id) references comic (comic_id);
alter table user_collections
    add constraint FK_ucol_user_id foreign key (id) references app_user (id);
alter table user_collections
    add constraint FK_ucol_collection_id foreign key (collection_id) references collection (collection_id);
alter table comic_collections
    add constraint FK_cc_comic_id foreign key (comic_id) references comic (comic_id);
alter table comic_collections
    add constraint FK_cc_collection_id foreign key (collection_id) references collection (collection_id);

COMMIT;