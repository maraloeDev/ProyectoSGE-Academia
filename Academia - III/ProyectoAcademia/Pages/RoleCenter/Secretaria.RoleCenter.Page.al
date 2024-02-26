page 50114 "Secretary/Admon. RoleCenter"
{
    PageType = RoleCenter;
    SourceTable = "Secretary/Admon. Table";
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'RoleCenter Secretaría/Admón.', comment = 'ESP="RoleCenter Secretaría/Admón."';

    layout
    {
        area(RoleCenter)
        {
            part("Headline Secretary"; "Headline Secretary") //Para que aparezco Buenos días, Buenas tardes, Buenas noches
            {
                Caption = 'Secretary Header', comment = 'ESP="Cabecera del Secretario"';
                ApplicationArea = all;
            }

            part("Secretary Stadistics"; "Secretary Stadistics") // Te recupera los CUE group de la pagina estadisticas
            {
                Caption = 'Secretary Statistics', comment = 'ESP="Estadísticas de Secretaría"';
                ApplicationArea = All;
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
            action("New Course")
            {
                Caption = 'New Course', comment = 'ESP="Nuevo Curso"';
                Tooltip = 'Access to course management.', comment = 'ESP="Acceso a la gestión de cursos."';
                RunObject = page "Course CardPage";
                RunPageMode = Create;
            }

            action("New Department")
            {
                Caption = 'New Department', comment = 'ESP="Nuevo Departamento"';
                Tooltip = 'Access to department management.', comment = 'ESP="Acceso a la gestión de departamentos."';
                RunObject = page "Department CardPage";
                RunPageMode = Create;

            }

            action("New Non-Teaching Staff")
            {
                Caption = 'New Non-Teaching Staff', comment = 'ESP="Nuevo Personal no docente"';
                Tooltip = 'Access to non-teaching staff management.', comment = 'ESP="Acceso a la gestión de personal no docente."';
                ApplicationArea = All;
                RunObject = page "Non-teaching staff List";
                RunPageMode = Create;
            }

            action("New Registration")
            {
                Caption = 'New Registration', comment = 'ESP="Nueva Matrícula"';
                Tooltip = 'Access to registration management.', comment = 'ESP="Acceso a la gestión de matrículas."';
                ApplicationArea = All;
                RunObject = page "Registration CardPage";
                RunPageMode = Create;

            }

            action("New Schedule")
            {
                Caption = 'New Schedule', comment = 'ESP="Nuevo Horario"';
                Tooltip = 'Access to schedule management.', comment = 'ESP="Acceso a la gestión de horarios."';
                ApplicationArea = All;
                RunObject = page "Schedule List";
                RunPageMode = Create;
            }

            action("New Student")
            {
                Caption = 'New Student', comment = 'ESP="Nuevo Estudiante"';
                Tooltip = 'Access to student management.', comment = 'ESP="Acceso a la gestión de estudiantes."';
                ApplicationArea = All;
                RunObject = page "Student CardPage";
                RunPageMode = Create;

            }

            action("New Teacher")
            {
                Caption = 'New Teacher', comment = 'ESP="Nuevo Profesor"';
                Tooltip = 'Access to teacher management.', comment = 'ESP="Acceso a la gestión de profesores."';
                ApplicationArea = All;
                RunObject = page "Teacher CardPage";
                RunPageMode = Create;

            }

            action("New Detail")
            {
                Caption = 'New Detail', comment = 'ESP="Nuevo Detalle"';
                Tooltip = 'Access to detail management.', comment = 'ESP="Acceso a la gestión de detalles."';
                ApplicationArea = All;
                RunObject = page "Detail List";
                RunPageMode = Create;
            }
        }

        area(Sections) //La parte de arriba de la pagina (NMenu de navegación fijo)
        {
            group(ActionCourses)
            {
                Caption = 'Courses', comment = 'ESP="Cursos"';
                action(ActionCourses1)
                {
                    Caption = 'Courses', comment = 'ESP="Cursos"';
                    Tooltip = 'Access to course management.', comment = 'ESP="Acceso a la gestión de cursos."';
                    RunObject = Page "Course List";
                }
            }
            group(ActionDeparments)
            {
                Caption = 'Departments', comment = 'ESP="Departamentos"';
                action(ActionDeparments1)
                {
                    Caption = 'Departments', comment = 'ESP="Departamentos"';
                    Tooltip = 'Access to department management.', comment = 'ESP="Acceso a la gestión de departamentos."';
                    ApplicationArea = All;
                    RunObject = page "Department List";
                }
            }

            group(ActionRegistrations)
            {
                Caption = 'Registrations', comment = 'ESP="Matrículas"';
                action(ActionRegistrations1)
                {
                    Caption = 'Registrations', comment = 'ESP="Matrículas"';
                    Tooltip = 'Access to registration management.', comment = 'ESP="Acceso a la gestión de matrículas."';
                    ApplicationArea = All;
                    RunObject = page "Registration List";
                }
            }
            group(ActionSchedules)
            {
                Caption = 'Schedules', comment = 'ESP="Horarios"';
                action(ActionSchedules1)
                {
                    Caption = 'Schedules', comment = 'ESP="Horarios"';
                    Tooltip = 'Access to schedule management.', comment = 'ESP="Acceso a la gestión de horarios."';
                    ApplicationArea = All;
                    RunObject = page "Schedule List";
                }
            }
            group(ActionStudents)
            {
                Caption = 'Students', comment = 'ESP="Estudiantes"';
                action(ActionStudents1)
                {
                    Caption = 'Students', comment = 'ESP="Estudiantes"';
                    Tooltip = 'Access to student management.', comment = 'ESP="Acceso a la gestión de estudiantes."';
                    ApplicationArea = All;
                    RunObject = page "Student List";
                }
            }
            group(ActionTeachers)
            {
                Caption = 'Teachers', comment = 'ESP="Profesores"';
                action(ActionTeachers1)
                {
                    Caption = 'Teachers', comment = 'ESP="Profesores"';
                    Tooltip = 'Access to teacher management.', comment = 'ESP="Acceso a la gestión de profesores."';
                    ApplicationArea = All;
                    RunObject = page "Teacher List";
                }
            }
        }
        area(Embedding) // Es el menu que hay abaajo de la navegacion fija
        {
            action("Courses")
            {
                Caption = 'Courses', comment = 'ESP="Cursos"';
                Tooltip = 'Access to course management.', comment = 'ESP="Acceso a la gestión de cursos."';
                RunObject = page "Course List";
            }

            action("Departments")
            {
                Caption = 'Departments', comment = 'ESP="Departamentos"';
                Tooltip = 'Access to department management.', comment = 'ESP="Acceso a la gestión de departamentos."';
                RunObject = page "Department List";
            }

            action("Non-Teaching Staff")
            {
                Caption = 'Non-Teaching Staff', comment = 'ESP="Personal no docente"';
                Tooltip = 'Access to non-teaching staff management.', comment = 'ESP="Acceso a la gestión de personal no docente."';
                RunObject = page "Non-teaching staff List";
            }

            action("Registrations")
            {
                Caption = 'Registrations', comment = 'ESP="Matrículas"';
                Tooltip = 'Access to registration management.', comment = 'ESP="Acceso a la gestión de matrículas."';
                RunObject = page "Registration List";
            }

            action("Schedules")
            {
                Caption = 'Schedules', comment = 'ESP="Horarios"';
                Tooltip = 'Access to schedule management.', comment = 'ESP="Acceso a la gestión de horarios."';
                RunObject = page "Schedule List";
            }

            action("Students")
            {
                Caption = 'Students', comment = 'ESP="Estudiantes"';
                Tooltip = 'Access to student management.', comment = 'ESP="Acceso a la gestión de estudiantes."';
                RunObject = page "Student List";
            }

            action("Teachers")
            {
                Caption = 'Teachers', comment = 'ESP="Profesores"';
                Tooltip = 'Access to teacher management.', comment = 'ESP="Acceso a la gestión de profesores."';
                RunObject = page "Teacher List";
            }

            action("Detail")
            {
                Caption = 'Detail', comment = 'ESP="Detalle"';
                Tooltip = 'Access to detail management.', comment = 'ESP="Acceso a la gestión de detalles."';
                RunObject = page "Detail List";
            }
        }
    }
}