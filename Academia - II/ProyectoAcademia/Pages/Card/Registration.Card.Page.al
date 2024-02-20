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
            group(Student)
            {
                field("No. Student"; Rec."No. Student Enrolled")
                {
                    ApplicationArea = All;
                }
                field("Name of Student"; Rec."Name Student Enrolled")
                {
                    ApplicationArea = All;
                }
            }
            group(Course)
            {
                field("No. Course"; Rec."No. Course Enrolled")
                {
                    ApplicationArea = All;
                }
                field("Name of course"; Rec."Name Enrolled Course")
                {
                    ApplicationArea = All;
                }
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
                RunObject = page "Course CardPage";
                RunPageLink = "No." = field("No. Course Enrolled");
                RunPageMode = View;
                Image = Report2;
            }
            action("Estudiante - Datos")
            {
                Caption = 'Student - Data', comment = 'ESP="Estudiante - Datos"';
                ApplicationArea = All;
                RunObject = page "Student CardPage";
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