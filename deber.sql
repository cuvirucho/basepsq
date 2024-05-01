----users-------

create table users(
id serial primary key,
first_name varchar(50),
last_name varchar(50),
email varchar(50)
);


insert into users ( first_name,last_name,email ) values
('Daniel','Tenesaca','dssddj@hotmail.com'),
('Marco','Perez','lopok@hotmail.com'),
('David','Cabrera','kjhbjkb@hotmail.com');


select *from users

-----postts---------------
create table posts(
id serial primary key,
creator_id int references users(id),
title varchar(50),
texto text
);

insert into posts ( creator_id,title,texto ) values
(2,'Lorem Ipsum','Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...'),
(3,'Lorem ','Il ny a personne qui naime la souffrance pour elle-même, qui ne la recherche et qui n'),
(1,'Ipsum','kjhbjkb@hotmail.com'),
(1,'Dovientil','Si vous utiliser fréquemment ce site et voulez l'),
(1,'ddsew','kjhb');


select *from posts
----likes-----

create table likes(
id serial primary key,
creator_id int references users(id),
posts_id int references posts(id)
);

insert into likes ( creator_id,posts_id ) values
(2,5),
(1,3),
(3,1),
(2,4),
(1,2);

select *from likes
-----joins-----
select *from posts inner join users
on users.id  = posts.creator_id;


select *from users inner join likes
on likes.creator_id  = users.id inner join posts
on posts.id = likes.posts_id;
