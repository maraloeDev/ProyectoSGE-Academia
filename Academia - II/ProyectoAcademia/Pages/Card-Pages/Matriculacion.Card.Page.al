page 50106 "Registration"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Registration";
    Caption = 'Registration', comment = 'ESP="Matriculación"';
    layout
    {
        area(Content)
        {
            part("Student"; "Student List")
            {
                Caption = '', comment = 'ESP=""';
                ApplicationArea = All;
                SubPageLink = "No." = field("No. Student Enrolled");
            }

            part("Course"; "Course List")
            {
                Caption = 'Course Data', comment = 'ESP="Datos del Curso"';
                ApplicationArea = All;
                SubPageLink = "No." = field("No. Course Enrolled");
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Información - Curso")
            {
                ApplicationArea = All;
                RunObject = page "Course List";
                RunPageLink = "No." = field("No. Course Enrolled");
                RunPageMode = View;
                Image = Report2;
            }
            action("Estudiante - Datos")
            {
                ApplicationArea = All;
                RunObject = page "Student List";
                RunPageLink = "No." = field("No. Student Enrolled");
                RunPageMode = View;
                Image = Report2;
            }
            action("Estudiante - Matrícula")
            {
                ApplicationArea = All;
                RunObject = page "Registration List";
                RunPageLink = "No. Student Enrolled" = field("No. Student Enrolled");
                RunPageMode = View;
                Image = Report2;
            }
        }
    }

    var
        myInt: Integer;
}