SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION count_students (
    p_department_id IN NUMBER
)
RETURN NUMBER
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Student s
    JOIN Course c ON s.CourseID = c.CourseID
    JOIN Faculty f ON c.FacultyID = f.FacultyID
    WHERE f.DepartmentID = p_department_id;

    RETURN v_count;
END;
/

