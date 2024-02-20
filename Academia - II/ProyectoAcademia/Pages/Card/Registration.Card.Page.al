page 50111 "Registration CardPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Registration";
    Caption = 'Registration CardPage', comment = 'ESP="Ficha de Matrícula"';
    layout
    {
        area(Content)
        {
            part("Student"; "Student SubPage")
            {
                Caption = 'Student', comment = 'ESP="Estudiante"';
                ApplicationArea = All;
                SubPageLink = "No." = field("No. Student Enrolled");
            }

            part("Course"; "Course SubPage")
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
                Caption = 'Information - Course', comment = 'ESP="Información - Curso"';
                ApplicationArea = All;
                RunObject = page "Course List";
                RunPageLink = "No." = field("No. Course Enrolled");
                RunPageMode = View;
                Image = Report2;
            }
            action("Estudiante - Datos")
            {
                Caption = 'Student - Data', comment = 'ESP="Estudiante - Datos"';
                ApplicationArea = All;
                RunObject = page "Student List";
                RunPageLink = "No." = field("No. Student Enrolled");
                RunPageMode = View;
                Image = Report2;
            }
            action("Estudiante - Matrícula")
            {
                Caption = 'Student - Registration', comment = 'ESP="Estudiante - Matrícula"';
                ApplicationArea = All;
                RunObject = page "Registration List";
                RunPageLink = "No. Student Enrolled" = field("No. Student Enrolled");
                RunPageMode = View;
                Image = Report2;
            }
        }
    }
}