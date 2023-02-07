--drop table users;
--user
create table users(
    user_no number(4) primary key,
    user_id varchar(32) not null,
    user_pw varchar(200) not null
);

--drop table auth;
--auth
create table auth(
    role_id number(4) not null primary key,
    role_name varchar(32) not null,
    role_description varchar(32) not null
);

--drop table auth_user;
--user_auth
create table auth_user(
    user_no number(4) not null,
    role_id number(4) not null,
    constraint fk_user_no foreign key(user_no) references users(user_no),
    constraint fk_role_id foreign key(role_id) references auth(role_id)
);

--insert into users (user_no, user_id, user_pw) values((select nvl(max(user_no), 0) + 1 from users), 'admin', '1234');
