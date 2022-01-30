create database uruk;
use uruk;

create table account_user (
	hive_id bigint auto_increment primary key,
    nation_id int not null,
    language_id int not null,
    user_id int not null
);

# hive_id로 회원가입할 때, user 테이블의 마지막 column 값 + 1로 user_id를 만들려고 했는데, 동시 접근 시 같은 user_id가 생성되면 어떡하지..?
# 아, 음.. 어.. user에 insert해서 나온 user_id를 가지고 오는 식으로 진행하자..!
# user에 insert를 하면서 user_boat에 생성

create table user (
	user_id int auto_increment primary key,
    level int not null default 1,
    experience int not null default 200,
    gold int not null default 0,
    pearl int not null default 0,
    fatigue int not null default 0
);

create table user_gift_box (
	user_id int not null,
    item_id int not null,
    received_date DATETIME not null,
    primary key(user_id, item_id, received_date)
);

create table user_boat (
	user_id int not null primary key,
    boat_level int not null,
    boat_durability int not null,
    boat_fuel int not null
);

create table inventory (
    inventory_id int not null,
	user_id int not null,
    inventory_type_id int not null,
    item_id int not null,
    get_date datetime not null,
    primary key(user_id, inventory_type_id, item_id)
);

create table book (
    user_id int not null,
    fish_id int not null,
    catch_date  DATETIME not null,
    primary key(user_id, fish_id)
);

create table fish_auction (
    user_id int not null,
    gold int not null,
    sell_date DATETIME not null,
    primary key(user_id, sell_date)
);

create table user_weather (
    user_id int not null,
    time datetime not null,
    temperature int not null,
    wind_direction_id int not null,
    wind_speed int not null,
    primary key (user_id, time)
);

create table user_fish_cost(
    user_id int not null,
    fish_id int not null,
    map_id int not null,
    time datetime not null,
    cost int not null,
    length int not null,
    weight int not null,
    fish_grade_id int not null,
    primary key(user_id, fish_id, map_id, time)
);