CREATE TABLE "roles" (
  "id" uuid UNIQUE PRIMARY KEY NOT NULL,
  "role_name" varchar UNIQUE
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY NOT NULL,
  "name" varchar NOT NULL
);

CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" integer NOT NULL,
  "role_id" uuid
);

CREATE TABLE "users_courses" (
  "id" integer PRIMARY KEY,
  "id_user" uuid NOT NULL,
  "id_course" varchar NOT NULL,
  "is_completed" bool DEFAULT false
);

CREATE TABLE "courses" (
  "id" varchar PRIMARY KEY,
  "title" varchar,
  "description" text,
  "level" varchar,
  "id_video" uuid
);

CREATE TABLE "course_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar,
  "id_categorie" uuid NOT NULL
);

ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("id_course") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_video") REFERENCES "course_videos" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("id_categorie") REFERENCES "categories" ("id");
