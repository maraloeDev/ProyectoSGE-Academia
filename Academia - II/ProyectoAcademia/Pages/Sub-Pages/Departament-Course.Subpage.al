page 50113 "Department - Course Subpage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Course;
    Caption = 'Department - Course Subpage', comment = 'ESP="Departament - Course SubPage"';
    layout
    {
        area(Content)
        {
            group(GroupName)

            {
                field("Description"; Rec.Description)
                {
                    Caption = 'Description', comment = 'ESP=""Descripción""';
                    ApplicationArea = All;
                }
                field("Teacher"; Rec."Teacher Name")
                {
                    Caption = 'Teacher', comment = 'ESP="Profesor"';
                    ApplicationArea = All;
                }
                field("Total hours"; Rec."Total hours")
                {
                    Caption = 'Total hours', comment = 'ESP="Horas totales"';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Curso - Matrículas")
            {
                Caption = 'Enrolled Students', comment = 'ESP="Estudiantes matriculados"';
                ApplicationArea = All;
                RunObject = page "Registration List";
                RunPageLink = "No. Course Enrolled" = field("No.");
                RunPageMode = View;
            }
            action("Curso – Datos")
            {
                Caption = 'Course Data', comment = 'ESP="Datos del curso"';
                ApplicationArea = All;
                RunObject = page "Course List";
                RunPageLink = "No." = field("No.");
                RunPageMode = View;
            }
        }
    }

    var
        myInt: Integer;
}