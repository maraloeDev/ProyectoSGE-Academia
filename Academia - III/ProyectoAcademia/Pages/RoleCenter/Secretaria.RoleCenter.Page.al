page 50117 "Secretary/Admon. RoleCenter" // TODO Traducir todo y derivados (part)
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Non-teaching staff";
    Caption = 'Secretary/Admon. RoleCenter', comment = 'ESP="Secretaria/Admón. RoleCenter"';

    layout
    {
        area(RoleCenter)
        {
            group("Informacion de interes")
            {
                Caption = 'General', comment = 'ESP="General"';

                part("Informacion del curso"; "Informacion del curso")
                {
                    Caption = 'Stadistics', comment = 'ESP="Informacion del curso"';
                    ApplicationArea = All;
                }
                part("Informacion del departamento"; "Informacion del Departamento")
                {
                    Caption = 'Stadistics', comment = 'ESP="Informacion del curso"';
                    ApplicationArea = All;
                }
            }
            group("Listas del personal")
            {
                Caption = 'General', comment = 'ESP="General"';

                part("ShortList de Non-teeaching"; "Lista de Non-teaching")
                {
                    Caption = 'Stadistics', comment = 'ESP="Informacion del curso"';
                    ApplicationArea = All;
                }
                part("ShortList de profesor"; "Lista de profesor")
                {
                    Caption = 'Stadistics', comment = 'ESP="Informacion del curso"';
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
                ApplicationArea = All;
                RunObject = page "Course CardPage";
            }
            action("Departments")
            {
                Caption = 'Departments', comment = 'ESP="Departamentos"';
                ApplicationArea = All;
                RunObject = page "Department CardPage";
            }
            action("Non-Teaching staff")
            {
                Caption = 'Non-Teaching staff', comment = 'ESP="Personal no docente"';
                ApplicationArea = All;
                RunObject = page "Non-teaching staff List";
            }
            action("Registration")
            {
                Caption = 'Registration', comment = 'ESP="Personal no docente"';
                ApplicationArea = All;
                RunObject = page "Registration CardPage";
            }
            action("Schedules")
            {
                Caption = 'Schedules', comment = 'ESP="Horarios"';
                ApplicationArea = All;
                RunObject = page "Schedule List";
            }
            action("Students")
            {
                Caption = 'Students', comment = 'ESP="Estudiantes"';
                ApplicationArea = All;
                RunObject = page "Student CardPage";
            }
            action("Teachers")
            {
                Caption = 'Teachers', comment = 'ESP="Profesores"';
                ApplicationArea = All;
                RunObject = page "Teacher CardPage";
            }
        }

    }
    /*
        trigger OnOpenPage()
        var
            myInt: Integer;
        begin

        end;
    */
}