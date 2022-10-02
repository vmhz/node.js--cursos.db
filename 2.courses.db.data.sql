-- ? TABLE ROLES 
insert into roles (id, role_name)
values (
		'646b3a6e-4215-11ed-b878-0242ac120002',
		'STUDENT'
	),
	(
		'7b333864-4215-11ed-b878-0242ac120002',
		'TEACHER'
	),
	(
		'821cb0d8-4215-11ed-b878-0242ac120002',
		'ADMIN'
	);
-- ? TABLE USERS
insert into users (
		id,
		"name",
		email,
		"password",
		age,
		role_id
	)
values (
		'80b07dbe-421b-11ed-b878-0242ac120002',
		'manuel',
		'manuel@academlo.com',
		'manuel1234',
		28,
		'821cb0d8-4215-11ed-b878-0242ac120002'
	),
	(
		'80b0803e-421b-11ed-b878-0242ac120002',
		'Alberto',
		'alberto@academlo.com',
		'alberto4321',
		22,
		'7b333864-4215-11ed-b878-0242ac120002'
	),
	(
		'80b0816a-421b-11ed-b878-0242ac120002',
		'fatima',
		'fatima@academlo.com',
		'randompassword',
		25,
		'646b3a6e-4215-11ed-b878-0242ac120002'
	),
	(
		'80b08520-421b-11ed-b878-0242ac120002',
		'lesly',
		'lesly@academlo.com',
		'####234',
		27,
		'646b3a6e-4215-11ed-b878-0242ac120002'
	),
	(
		'80b08660-421b-11ed-b878-0242ac120002',
		'Carlos',
		'Carlos@academlo.com',
		'^&&&^^23',
		24,
		'646b3a6e-4215-11ed-b878-0242ac120002'
	),
	(
		'80b0876e-421b-11ed-b878-0242ac120002',
		'Luis',
		'Luis@academlo.com',
		'/*2222#$z',
		23,
		'646b3a6e-4215-11ed-b878-0242ac120002'
	);
-- ? TABLE CATEGORIES 
insert into categories (id, "name")
values (
		'dbe11622-4215-11ed-b878-0242ac120002',
		'HTML'
	),
	(
		'e55e1ca4-4215-11ed-b878-0242ac120002',
		'CSS'
	),
	(
		'ebfa529e-4215-11ed-b878-0242ac120002',
		'JAVASCRIPT'
	);
-- ? TABLE COURSE VIDEOS
insert into course_videos (id, title, url, id_categorie)
values (
		'122a40a0-4216-11ed-b878-0242ac120002',
		'Introduction',
		'https://academlo.com/videos/html-VID01',
		'dbe11622-4215-11ed-b878-0242ac120002'
	),
	(
		'188535d6-4216-11ed-b878-0242ac120002',
		'Htlm tags',
		'https://academlo.com/videos/html-VID02',
		'dbe11622-4215-11ed-b878-0242ac120002'
	),
	--css
	(
		'1fe32072-4216-11ed-b878-0242ac120002',
		'Styles in css',
		'https://academlo.com/videos/css-VID01',
		'e55e1ca4-4215-11ed-b878-0242ac120002'
	),
	(
		'2af3ccd2-4216-11ed-b878-0242ac120002',
		'Grid and flex',
		'https://academlo.com/videos/css-VID02',
		'e55e1ca4-4215-11ed-b878-0242ac120002'
	),
	--js
	(
		'3452a96a-4216-11ed-b878-0242ac120002',
		'Operators',
		'https://academlo.com/videos/js-VID01',
		'ebfa529e-4215-11ed-b878-0242ac120002'
	),
	(
		'3db908dc-4216-11ed-b878-0242ac120002',
		'Array methods',
		'https://academlo.com/videos/js-VID02',
		'ebfa529e-4215-11ed-b878-0242ac120002'
	);
-- ? TABLE COURSE 
insert into courses (
		id,
		title,
		description,
		level,
		id_video
	)
values (
		'HTML1',
		'Introduction',
		'Basic conceptts about html sctructure and use',
		'Beginers',
		'122a40a0-4216-11ed-b878-0242ac120002'
	),
	(
		'HTML2',
		'Htlm tags',
		'Implementation of tags in a html document',
		'Beginers',
		'188535d6-4216-11ed-b878-0242ac120002'
	),
	(
		'CSS1',
		'Styles in css',
		'Change the style of html by classes',
		'Mid level',
		'1fe32072-4216-11ed-b878-0242ac120002'
	),
	(
		'CSS2',
		'Grid and flexbox ',
		'Aplying grid and flexbox to structure html tags',
		'Mid level',
		'2af3ccd2-4216-11ed-b878-0242ac120002'
	),
	(
		'JS1',
		'Oparators',
		'Javascript variables and operators',
		'Advance',
		'3452a96a-4216-11ed-b878-0242ac120002'
	),
	(
		'JS2',
		'Array methods',
		'Manipulating the real dom to render by js using arrays methods',
		'Advance',
		'3db908dc-4216-11ed-b878-0242ac120002'
	);
-- ? TABLE USERS_COURSES 
insert into users_courses (id, id_user, id_course, is_completed)
values (
		1,
		'80b07dbe-421b-11ed-b878-0242ac120002',
		'HTML1',
		false
	),
	(
		2,
		'80b07dbe-421b-11ed-b878-0242ac120002',
		'HTML2',
		true
	),
	(
		3,
		'80b0803e-421b-11ed-b878-0242ac120002',
		'CSS1',
		true
	),
	(
		4,
		'80b0803e-421b-11ed-b878-0242ac120002',
		'JS2',
		false
	),
	(
		5,
		'80b0816a-421b-11ed-b878-0242ac120002',
		'CSS2',
		false
	),
	(
		6,
		'80b0816a-421b-11ed-b878-0242ac120002',
		'CSS1',
		false
	),
	(
		7,
		'80b08520-421b-11ed-b878-0242ac120002',
		'JS2',
		true
	),
	(
		8,
		'80b08520-421b-11ed-b878-0242ac120002',
		'CSS2',
		true
	);
SELECT users."name",
	users.age,
	courses.title AS courses,
	course_videos.title AS videos,
	users_courses.is_completed
FROM users_courses
	INNER JOIN users ON users_courses.id_user = users."id"
	INNER JOIN courses ON users_courses.id_course = courses."id"
	INNER JOIN course_videos ON courses.id_video = course_videos."id";