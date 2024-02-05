page 50106 "Matriculación"
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
            group(Registration)
            {
                Caption = 'Registration', comment = 'ESP="Registro"';
                group(Student)
                {
                    Caption = 'Student', comment = 'ESP="Estudiante"';
                    part(""; "Student CardPart")
                    {
                        Caption = '', comment = 'ESP=""';
                        ApplicationArea = All;
                    }
                }
                group(Course)
                {
                    Caption = 'Course', comment = 'ESP="Curso"';
                    field("Course No."; Rec."No. Course Enrolled")
                    {
                        Caption = 'Course No.', comment = 'ESP="No. del Curso"';
                        ApplicationArea = All;
                    }
                    part("Course Data"; "Course CardPart")
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
        }
    }

    var
        myInt: Integer;
}