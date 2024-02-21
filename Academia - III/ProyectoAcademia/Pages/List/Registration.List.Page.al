page 50103 "Registration List"
{
    PageType = Card;
    SourceTable = Registration;
    Caption = 'Registration List', comment = 'ESP="Lista de Matrículas"';
    Description = 'This page displays a list of registrations in the academy.';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    ApplicationArea = All;
                    Description = 'The unique identifier of the registration.';
                }
                field("DATE/TIME REGISTRATION"; Rec."Date/Time Registration")
                {
                    Caption = 'DATE/TIME REGISTRATION', comment = 'ESP="FECHA MATRICULA"';
                    ApplicationArea = All;
                    Description = 'The date and time of the registration.';
                }
                field("No. STUDENT ENROLLED"; Rec."No. Student Enrolled")
                {
                    Caption = 'No. STUDENT ENROLLED', comment = 'ESP="No. ESTUDIANTE MATRLADO."';
                    ApplicationArea = All;
                    Description = 'The identifier of the enrolled student.';
                }
                field("No. COURSE ENROLLED"; Rec."No. Course Enrolled")
                {
                    Caption = 'No. COURSE ENROLLED', comment = 'ESP="No. CURSO MATRLADO."';
                    ApplicationArea = All;
                    Description = 'The identifier of the enrolled course.';
                }
                field("NAME ENROLLED STUDENT"; Rec."Name Student Enrolled")
                {
                    Caption = 'NAME ENROLLED STUDENT', comment = 'ESP="NOMBRE ESTUDIANTE MATRLADO."';
                    ApplicationArea = All;
                    Description = 'The name of the enrolled student.';
                }
                field("NAME ENROLLED COURSE"; Rec."Name Enrolled Course")
                {
                    Caption = 'NAME ENROLLED COURSE', comment = 'ESP="NOMBRE CURSO MATRLADO."';
                    ApplicationArea = All;
                    Description = 'The name of the enrolled course.';
                }
            }
        }
    }
}