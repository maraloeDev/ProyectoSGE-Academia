page 50117 "Secretary/Admon. RoleCenter" // TODO Translation
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
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action("Non-Teaching staff")
            {
                Caption = 'Non-Teaching staff', comment = 'ESP="Personal no docente"';
                ApplicationArea = All;
                RunObject = page "Non-teaching staff List";
                RunPageMode = Create;
            }
            action("Teachers")
            {
                Caption = 'Teachers', comment = 'ESP="Profesores"';
                ApplicationArea = All;
                RunObject = page "Teacher CardPage";
                RunPageMode = Create;
            }
            action("Students")
            {
                Caption = 'Students', comment = 'ESP="Estudiantes"';
                ApplicationArea = All;
                RunObject = page "Student CardPage";
                RunPageMode = Create;
            }
            action("Departments")
            {
                Caption = 'Departments', comment = 'ESP="Departamentos"';
                ApplicationArea = All;
                RunObject = page "Department CardPage";
                RunPageMode = Create;
            }
            action("Courses")
            {
                Caption = 'Courses', comment = 'ESP="Cursos"';
                ApplicationArea = All;
                RunObject = page "Course CardPage";
                RunPageMode = Create;
            }
            action("Schedules")
            {
                Caption = 'Schedules', comment = 'ESP="Horarios"';
                ApplicationArea = All;
                RunObject = page "Schedule List";
                RunPageMode = Create;
            }
            action("Registration")
            {
                Caption = 'Registration', comment = 'ESP="Personal no docente"';
                ApplicationArea = All;
                RunObject = page "Registration CardPage";
                RunPageMode = Create;
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