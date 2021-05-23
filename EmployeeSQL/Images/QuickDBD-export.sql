-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "employees" (
    "ID" integer   NOT NULL,
    "emp_no" integer   NOT NULL,
    "emp_title" string   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" string   NOT NULL,
    "last_name" string   NOT NULL,
    "sex" string   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "dept_manager" (
    "ID" integer   NOT NULL,
    "dept_no" string   NOT NULL,
    "emp_no" string   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "dept_emp" (
    "ID" integer   NOT NULL,
    "emp_no" string   NOT NULL,
    "dept_no" string   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "departments" (
    "ID" integer   NOT NULL,
    "dept_no" string   NOT NULL,
    "dept_name" string   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "salaries" (
    "ID" integer   NOT NULL,
    "emp_no" string   NOT NULL,
    "salary" integer   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "titles" (
    "ID" integer   NOT NULL,
    "title_id" string   NOT NULL,
    "title" string   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "ID"
     )
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_manager" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_title_id" FOREIGN KEY("title_id")
REFERENCES "employees" ("emp_title");

