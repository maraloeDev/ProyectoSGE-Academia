page 50114 "Secretary/Admon. RoleCenter"
{
    PageType = RoleCenter;
    SourceTable = "Non-teaching staff";
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Secretary/Admon. RoleCenter', comment = 'ESP="RoleCenter Secretaría/Admón."';
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
                    Tooltip = 'Summary of information about available courses.', comment = 'ESP="Resumen de información sobre los cursos disponibles."';
                    ApplicationArea = All;
                }

                part("Department Information"; "Department Information")
                {
                    Caption = 'Department Information', comment = 'ESP="Información del Departamento"';
                    Tooltip = 'Summary of information about departments.', comment = 'ESP="Resumen de información sobre los departamentos."';
                    ApplicationArea = All;
                }
            }

            group("Staff Lists")
            {
                Caption = 'Staff Lists', comment = 'ESP="Listas del personal"';

                part("Non-teaching Shortlist"; "Non-teaching Shortlist")
                {
                    Caption = 'Non-teaching List', comment = 'ESP="Lista de Personal no docente"';
                    Tooltip = 'Summary of information about non-teaching staff.', comment = 'ESP="Resumen de información sobre el personal no docente."';
                    ApplicationArea = All;
                }

                part("Teacher Shortlist"; "Teacher Shortlist")
                {
                    Caption = 'Teacher List', comment = 'ESP="Lista de Profesores"';
                    Tooltip = 'Summary of information about teachers.', comment = 'ESP="Resumen de información sobre los profesores."';
                    ApplicationArea = All;
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
                Tooltip = 'Access to course management.', comment = 'ESP="Acceso a la gestión de cursos."';
                ApplicationArea = All;
                RunObject = page "Course List";
            }

            action("Departments")
            {
                Caption = 'Departments', comment = 'ESP="Departamentos"';
                Tooltip = 'Access to department management.', comment = 'ESP="Acceso a la gestión de departamentos."';
                ApplicationArea = All;
                RunObject = page "Department List";
            }

            action("Non-Teaching Staff")
            {
                Caption = 'Non-Teaching Staff', comment = 'ESP="Personal no docente"';
                Tooltip = 'Access to non-teaching staff management.', comment = 'ESP="Acceso a la gestión de personal no docente."';
                ApplicationArea = All;
                RunObject = page "Non-teaching staff List";
            }

            action("Registrations")
            {
                Caption = 'Registrations', comment = 'ESP="Matrículas"';
                Tooltip = 'Access to registration management.', comment = 'ESP="Acceso a la gestión de matrículas."';
                ApplicationArea = All;
                RunObject = page "Registration List";
            }

            action("Schedules")
            {
                Caption = 'Schedules', comment = 'ESP="Horarios"';
                Tooltip = 'Access to schedule management.', comment = 'ESP="Acceso a la gestión de horarios."';
                ApplicationArea = All;
                RunObject = page "Schedule List";
            }

            action("Students")
            {
                Caption = 'Students', comment = 'ESP="Estudiantes"';
                Tooltip = 'Access to student management.', comment = 'ESP="Acceso a la gestión de estudiantes."';
                ApplicationArea = All;
                RunObject = page "Student List";
            }

            action("Teachers")
            {
                Caption = 'Teachers', comment = 'ESP="Profesores"';
                Tooltip = 'Access to teacher management.', comment = 'ESP="Acceso a la gestión de profesores."';
                ApplicationArea = All;
                RunObject = page "Teacher List";
            }

            action("Detail")
            {
                Caption = 'Detail', comment = 'ESP="Detalle"';
                Tooltip = 'Access to detail management.', comment = 'ESP="Acceso a la gestión de detalles."';
                ApplicationArea = All;
                RunObject = page "Detail List";
            }
        }
    }
}
