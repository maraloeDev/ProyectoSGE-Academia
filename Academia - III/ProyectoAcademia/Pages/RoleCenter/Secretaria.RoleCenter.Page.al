page 50112 "Secretary/Admon. RoleCenter"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Non-teaching staff";
    Caption = 'Secretary/Admon. RoleCenter', comment = 'ESP="RoleCenter Secretaría/Admón."';
    Description = 'This RoleCenter provides an overview of information for secretaries and administrators.';

    layout
    {
        area(RoleCenter)
        {
            group("Interest Information")
            {
                Caption = 'Interest Information', comment = 'ESP="Información de interés"';

                part("Course Information"; "Course Information")
                {
                    Caption = 'Course Information', comment = 'ESP="Información del curso"';
                    ApplicationArea = All;
                    Description = 'Summary of information about available courses.';
                }

                part("Department Information"; "Department Information")
                {
                    Caption = 'Department Information', comment = 'ESP="Información del Departamento"';
                    ApplicationArea = All;
                    Description = 'Summary of information about departments.';
                }
            }

            group("Staff Lists")
            {
                Caption = 'Staff Lists', comment = 'ESP="Listas del personal"';

                part("Non-teaching Shortlist"; "Non-teaching Shortlist")
                {
                    Caption = 'Non-teaching List', comment = 'ESP="Lista de Personal no docente"';
                    ApplicationArea = All;
                    Description = 'Summary of information about non-teaching staff.';
                }

                part("Teacher Shortlist"; "Teacher Shortlist")
                {
                    Caption = 'Teacher List', comment = 'ESP="Lista de Profesores"';
                    ApplicationArea = All;
                    Description = 'Summary of information about teachers.';
                }
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action("Courses")
            {
                Caption = 'Courses', comment = 'ESP="Cursos"';
                ApplicationArea = All;
                Description = 'Access to course management.';
                RunObject = page "Course CardPage";
            }

            action("Departments")
            {
                Caption = 'Departments', comment = 'ESP="Departamentos"';
                ApplicationArea = All;
                Description = 'Access to department management.';
                RunObject = page "Department CardPage";
            }

            action("Non-Teaching Staff")
            {
                Caption = 'Non-Teaching Staff', comment = 'ESP="Personal no docente"';
                ApplicationArea = All;
                Description = 'Access to non-teaching staff management.';
                RunObject = page "Non-teaching staff List";
            }

            action("Registrations")
            {
                Caption = 'Registrations', comment = 'ESP="Matrículas"';
                ApplicationArea = All;
                Description = 'Access to registration management.';
                RunObject = page "Registration CardPage";
            }

            action("Schedules")
            {
                Caption = 'Schedules', comment = 'ESP="Horarios"';
                ApplicationArea = All;
                Description = 'Access to schedule management.';
                RunObject = page "Schedule List";
            }

            action("Students")
            {
                Caption = 'Students', comment = 'ESP="Estudiantes"';
                ApplicationArea = All;
                Description = 'Access to student management.';
                RunObject = page "Student CardPage";
            }

            action("Teachers")
            {
                Caption = 'Teachers', comment = 'ESP="Profesores"';
                ApplicationArea = All;
                Description = 'Access to teacher management.';
                RunObject = page "Teacher CardPage";
            }
        }
    }
}
