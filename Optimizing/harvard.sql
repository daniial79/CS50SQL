
-- Create an index on the department, number, and semester columns in the courses table
CREATE INDEX "idx_courses_dept_number_semester" ON "courses" ("department", "number", "semester");

-- Create an index on the semester column in the courses table
CREATE INDEX "idx_courses_semester" ON "courses" ("semester");

-- Create an index on the title and semester columns in the courses table
CREATE INDEX "idx_courses_title_semester" ON "courses" ("title", "semester");
