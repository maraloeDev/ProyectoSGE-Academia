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
            group(General)
            {
                group(Student)
                {
                    Caption = 'Student', comment = 'ESP="Estudiante"';
                    field("Student No."; Rec."No. Course Enrolled")
                    {
                        Caption = 'Course No.', comment = 'ESP="No. del Curso"';
                        ApplicationArea = All;
                    }
                    part("Student Data"; "Student-Registration CardPart")
                    {
                        Caption = '', comment = 'ESP=""';
                        ApplicationArea = All;
                        SubPageLink = "No." = field("No. Student Enrolled");
                    }
                }
                repeater(Course)
                {
                    Caption = 'Course', comment = 'ESP="Curso"';
                    field("Course No."; Rec."No. Course Enrolled")
                    {
                        Caption = 'Course No.', comment = 'ESP="No. del Curso"';
                        ApplicationArea = All;
                    }
                    part("Course Data"; "Course-Registration CardPart")
                    {
                        Caption = 'Course Data', comment = 'ESP="Datos del Curso"';
                        ApplicationArea = All;
                        SubPageLink = "No." = field("No. Course Enrolled");
                    }
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
                ApplicationArea = All;

                RunObject = page "Course List";
                Image = Report2;
            }
            action("Estudiante - Datos")
            {
                ApplicationArea = All;

                RunObject = page "Student List";
                Image = Report2;
            }
            action("Estudiante - Matrícula")
            {
                ApplicationArea = All;

                RunObject = page "Registration List";
                Image = Report2;
            }
        }
    }

    var
        myInt: Integer;
}