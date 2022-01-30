use uruk;

create table fish (
    fish_id int not null primary key,
    fish_name varchar(10) not null,
    favorith_depth int not null,
    depth_error_range int not null,
    fish_grade_id int not null
);

create table fish_grade (
  fish_grade_id int not null primary key,
  fish_grade_name varchar(2) not null,
  fish_grade_rarity int not null
);

create table map (
    map_id int not null primary key,
    map_name varchar(10) not null,
    distance int not null,
    max_depth int  not null,
    cost_to_sail int not null,
    time_to_sail int not null,
    level_limit int not null,
    reduced_durability int not null
);

create table fish_map (
    map_id int not null,
    fish_id int not null,
    max_length int not null,
    max_weight int not null,
    price int not null,
    experience int not null,
    primary key (map_id, fish_id)
);

create table wind_direction (
    wind_direction_id int not null primary key,
    wind_direction_name varchar(3) not null
);

create table tide (
    tide_date int not null,
    tide_time int not null,
    tide_type tinyint not null,
    tide_power int not null,
    primary key (tide_date, tide_time)
);

create table item_map (
    map_id int not null,
    item_id int not null,
    primary key (map_id, item_id)
);

create table experience_level_up (
    level int not null primary key,
    experience int not null,
    fatigue int not null
);

create table inventory_type (
    inventory_type_id int not null primary key,
    inventory_type_name varchar(3) not null
);
