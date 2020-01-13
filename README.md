# README

As students, we want to be able to register for many courses. But a course can also have many students. We have a many-to-many relationship, which requires a joiner model. We will call this joiner the enrollments model. For the purpose of this application, we will keep it to these three models.

Student -< Enrollment >- Course
Deliverables

Before generating our models and controllers, let us discuss our deliverables or goals for this app.

1. Display all students in the database.

2. Add new students in the index.

3. Have a show page for each student.

4. In the show page, the courses associated with the student are displayed.

5. In the show page, we have the ability to update or delete the specific student.

6. Ability to register for a new course using form_for and collection_select by creating a new enrollment.

7. Ability to drop a course by deleting an enrollment.
