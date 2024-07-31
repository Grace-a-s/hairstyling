

--drop tables reverse order of creation
drop table if exists salon_tags;
drop table if exists tags;
drop table if exists logos;
drop table if exists favorites;
drop table if exists ownership;
drop table if exists salon;
drop table if exists user;


create table user
    (id             int IDENTITY(1,1),
    screen_name     varchar(12) not null,
    email           varchar(30),
    phone_number    varchar(10),
    password_hash   varchar(30) not null,
    first_name      varchar(30),
    last_name       varchar(30),
    primary key (id)
    );
    --how to do password securely?
    --have an id or just use username?
create table salon
    (salon_id        int IDENTITY(1,1),
    sname            varchar(40) not null,
    phone_number     varchar(10),
    email            varchar(30),
    street           varchar(40) not null,
    city             varchar(40) not null,
    us_state         varchar(2) not null check (us_state in ('AK', 'AL', 'AR', 'AS', 'AZ', 'CA', 'CO', 'CT', 'DC', 'DE', 'FL', 'GA', 'GU', 'HI', 'IA', 'ID', 'IL', 'IN', 'KS', 'KY', 'LA', 'MA', 'MD', 'ME', 'MI', 'MN', 'MO', 'MP', 'MS', 'MT', 'NC', 'ND', 'NE', 'NH', 'NJ', 'NM', 'NV', 'NY', 'OH', 'OK', 'OR', 'PA', 'PR', 'RI', 'SC', 'SD', 'TN', 'TX', 'UM', 'UT', 'VA', 'VI', 'VT', 'WA', 'WI', 'WV', 'WY')), --must be a real one, drop down options (stored as initials)
    zipcode          varchar(5) not null,              
    primary key (salon_id)
    );

--create table client
--(id         varchar(5),);

create table ownership
    (salon_id         int
    id              int, --salon can have no owner, and can have multiple owners
    primary key (salon_id),
    foreign key (id) references user(id),
    foreign key (salon_id) references salon(salon_id)
        on delete cascade
    ); --if person is owner have tab allowing access to salon

create table favorites
    (id              int,
    salon_id         int,  --can have multiple salons as favorites 
    primary key (id),
    foreign key (id) references user(id)
        on delete cascade,
    foreign key (salon_id) references salon(salon_id)
        on delete cascade
    );

create table logos
    (logo_id        int IDENTITY(1,1),
    salon_id        int,
    image_data      varbinary(max),--may need to change data type to BLOB, should be good for up to 256KB
    primary key (logo_id), 
    foreign key (salon_id) references salon(salon_id)
        on delete cascade     
    );

create table tags
    (tag_id   int IDENTITY(1,1),
    title     varchar(40) not null,
    primary key (tag_id)
    );

create table salon_tags
    (salon          int,
    tag             int,
    primary key(salon, tag),
    foreign key (salon) references salon(salon_id)
        on delete cascade,
    foreign key (tag) references tags(tag_id)
        on delete cascade
    );

--when use on delete cascade?
--when use unique and not null

--default image for when no logo, in db can be null and check when creating ui

