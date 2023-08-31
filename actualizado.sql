CREATE TABLE "users" (
  "user_id" int PRIMARY KEY NOT NULL,
  "name" varchar(30) NOT NULL,
  "email" varchar(30) NOT NULL,
  "password" varchar(10) NOT NULL,
  "age" int NOT NULL,
  "role_id" int NOT NULL
);

CREATE TABLE "courses" (
  "courses_id" int PRIMARY KEY NOT NULL,
  "title" varchar(15) NOT NULL,
  "description" varchar NOT NULL,
  "level" int NOT NULL,
  "teacher_id" int NOT NULL,
  "category_id" int NOT NULL
);

CREATE TABLE "course_video" (
  "video_id" int PRIMARY KEY,
  "title" varchar(30) NOT NULL,
  "url" varchar NOT NULL,
  "course_id" int NOT NULL
);

CREATE TABLE "categories" (
  "category_id" int PRIMARY KEY NOT NULL,
  "name" varchar(30) NOT NULL
);

CREATE TABLE "roles" (
  "role_id" int PRIMARY KEY NOT NULL,
  "name" varchar(30) NOT NULL
);

CREATE TABLE "user_course_enrollments" (
  "enrollment_id" int PRIMARY KEY NOT NULL,
  "user_id" int NOT NULL,
  "course_id" int NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("teacher_id") REFERENCES "users" ("user_id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("courses_id");

ALTER TABLE "user_course_enrollments" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("user_id");

ALTER TABLE "user_course_enrollments" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("courses_id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("category_id");

ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("role_id");
\\











INSERT INTO "users" ("user_id", "name", "email", "password", "age", "role_id")
VALUES (1, 'John Doe', 'john@example.com', '74', 30, 1);

INSERT INTO "users" ("user_id", "name", "email", "password", "age", "role_id")
VALUES (2, 'Jane Smith', 'jane@example.com', 'securepass', 25, 2);











INSERT INTO "courses" ("courses_id", "title", "description", "level",  "category_id")
VALUES (1, 'fundaments', 'Learn the basics of programming.', 1, 1);

INSERT INTO "courses" ("courses_id", "title", "description", teacher_id, "level",  "category_id")
VALUES (2, 'css', 'Master data analysis techniques.', 1, 2, 3);

























INSERT INTO "course_video" ("video_id", "title", "url", "course_id")
VALUES (1, 'Getting Started', 'https://example.com/video1', 1);

INSERT INTO "course_video" ("video_id", "title", "url", "course_id")
VALUES (2, 'Data Visualization', 'https://example.com/video2', 2);





















INSERT INTO "categories" ("category_id", "name")
VALUES (1, 'Programming');

INSERT INTO "categories" ("category_id", "name")
VALUES (2, 'Web Development');

INSERT INTO "roles" ("role_id", "name")
VALUES (1, 'Instructor');

INSERT INTO "roles" ("role_id", "name")
VALUES (2, 'Student');













INSERT INTO "user_course_enrollments" ("enrollment_id", "user_id", "course_id")
VALUES (1, 2, 1);

INSERT INTO "user_course_enrollments" ("enrollment_id", "user_id", "course_id")
VALUES (2, 1, 2);

SELECT * FROM "user_course_enrollments";



