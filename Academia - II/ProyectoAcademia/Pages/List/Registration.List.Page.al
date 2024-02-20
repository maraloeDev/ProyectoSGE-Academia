page 50104 "Registration List"
{
    PageType = Card;
    SourceTable = Registration;
    Caption = 'Registration List', comment = 'ESP="Lista de Matrículas"';
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
                }
                field("DATE/TIME REGISTRATION"; Rec."Date/Time Registration")
                {
                    Caption = 'DATE/TIME REGISTRATION', comment = 'ESP="FECHA MATRICULA"';
                    ApplicationArea = All;
                }
                field("No. STUDENT ENROLLED"; Rec."No. Student Enrolled")
                {
                    Caption = 'No. STUDENT ENROLLED', comment = 'ESP="No. ESTUDIANTE MATRLADO."';
                    ApplicationArea = All;
                }
                field("No. COURSE ENROLLED"; Rec."No. Course Enrolled")
                {
                    Caption = 'No. COURSE ENROLLED', comment = 'ESP="No. CURSO MATRLADO."';
                    ApplicationArea = All;
                }
                field("NAME ENROLLED STUDENT"; Rec."Name Student Enrolled")
                {
                    Caption = 'NAME ENROLLED STUDENT', comment = 'ESP="NOMBRE ESTUDIANTE MATRLADO."';
                    ApplicationArea = All;
                }
                field("NAME ENROLLED COURSE"; Rec."Name Enrolled Course")
                {
                    Caption = 'NAME ENROLLED COURSE', comment = 'ESP="NOMBRE CURSO MATRLADO."';
                    ApplicationArea = All;
                }
            }
        }
    }
}