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
                Caption = 'Student', comment = 'ESP="Estudiante"';
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