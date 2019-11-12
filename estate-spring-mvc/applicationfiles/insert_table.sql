set search_path to estatespring;

insert into role(name,code) values('Quản lý','MANAGER');
insert into role(name,code) values('Nhân viên','STAFF');

insert into users(username,password,fullname,status)
values('nguyenvana','$2a$10$HshTDgd1mYNzBaxT/8qy1.KZlPQiEuwRkJO37KT4h9c5Bihft1gDK','Nguyễn Văn A',1);
insert into users(username,password,fullname,status)
values('nguyenvanb','$2a$10$HshTDgd1mYNzBaxT/8qy1.KZlPQiEuwRkJO37KT4h9c5Bihft1gDK','Nguyễn Văn B',1);
insert into users(username,password,fullname,status)
values('nguyenvanc','$2a$10$HshTDgd1mYNzBaxT/8qy1.KZlPQiEuwRkJO37KT4h9c5Bihft1gDK','Nguyễn Văn C',1);
insert into users(username,password,fullname,status)
values('nguyenvand','$2a$10$HshTDgd1mYNzBaxT/8qy1.KZlPQiEuwRkJO37KT4h9c5Bihft1gDK','Nguyễn Văn D',1);


insert into user_role(user_id, role_id) VALUES (1,1);
insert into user_role(user_id, role_id) VALUES (2,2);
insert into user_role(user_id, role_id) VALUES (3,2);
insert into user_role(user_id, role_id) VALUES (4,2);