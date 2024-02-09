page 50110 "Secretaria/Admon. CardPage"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Non-teaching staff";

    layout
    {
        area(Content)
        {
            cuegroup(Generañ)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("Name"; Rec.Name)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                }
                field("Managment"; Rec.Managment)
                {
                    Caption = 'Managment', comment = 'ESP="Administración"';
                    ApplicationArea = All;
                }
                field("Position"; Rec.Position)
                {
                    Caption = 'Position', comment = 'ESP="Cargo"';
                    ApplicationArea = All;
                }
                field("Head Studies"; Rec."Head Studies Name")
                {
                    Caption = 'Head Studies', comment = 'ESP="Jefe de Estudios"';
                    ApplicationArea = All;
                }
                field("Salary"; Rec.Salary)
                {
                    Caption = 'Salary', comment = 'ESP="Salario"';
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
                RunObject = page "Teacher List";
                RunPageMode = Create;
            }
            action("Students")
            {
                Caption = 'Students', comment = 'ESP="Estudiantes"';
                ApplicationArea = All;
                RunObject = page "Student List";
                RunPageMode = Create;
            }
            action("Departments")
            {
                Caption = 'Departments', comment = 'ESP="Departamentos"';
                ApplicationArea = All;
                RunObject = page "Department List";
                RunPageMode = Create;
            }
            action("Courses")
            {
                Caption = 'Courses', comment = 'ESP="Cursos"';
                ApplicationArea = All;
                RunObject = page "Course List";
                RunPageMode = Create;
            }
            action("Schedules")
            {
                Caption = 'Schedules', comment = 'ESP="Horarios"';
                ApplicationArea = All;
                RunObject = page "Schedule List";
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