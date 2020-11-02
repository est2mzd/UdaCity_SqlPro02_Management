CREATE TABLE "employees" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR,
  "manager_id" INTEGER
);

CREATE TABLE "projects" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR
);

CREATE TABLE "employee_projects" (
  "employee_id" INTEGER,
  "project_id" INTEGER,
  PRIMARY KEY ("employee_id", "project_id")
);