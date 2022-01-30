use uruk;

create table store (
    store_id int not null primary key,
    item_id int not null,
    asset_id int not null,
    cost int not null
);

create table preparation_category (
    preparation_category_id int not null auto_increment primary key,
    preparation_category_name varchar(20) not null
);

create table item (
    item_id int not null auto_increment primary key,
    preparation_id int not null,
    preparation_category_id int not null,
    unique key (preparation_id, preparation_category_id)
);

create table asset (
    asset_id int not null primary key,
    asset_name varchar(5) not null
);

create table rod (
    rod_id int not null auto_increment primary key,
    rod_name varchar(10)
)