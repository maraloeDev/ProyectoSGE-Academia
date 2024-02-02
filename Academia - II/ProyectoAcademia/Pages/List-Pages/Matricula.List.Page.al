page 50104 "Registration List"
{
    PageType = Card;
    SourceTable = Registration;
    Caption = 'REGISTRATION LIST', comment = 'ESP="LISTA DE MATRICULAS"';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."Registration No.")
                {
                    ApplicationArea = All;
                    Caption = 'No.', comment = 'ESP="No."';
                }
                field("DATE/TIME REGISTRATION"; Rec."Date/Time Registration")
                {
                    ApplicationArea = All;
                    Caption = 'DATE/TIME REGISTRATION', comment = 'ESP="FECHA MATRICULA"';
                }
                field("No. STUDENT ENROLLED"; Rec."Id. Student. Enrolled.")
                {
                    ApplicationArea = All;
                    Caption = 'No. STUDENT ENROLLED', comment = 'ESP="No. ESTUDIANTE MATRLADO."';
                }
                field("No. COURSE ENROLLED"; Rec."Id. Course Enrolled.")
                {
                    ApplicationArea = All;
                    Caption = 'No. COURSE ENROLLED', comment = 'ESP="No. CURSO MATRLADO."';
                }
                field("NAME ENROLLED STUDENT"; Rec."Name Student Enrolled")
                {
                    ApplicationArea = All;
                    Caption = 'NAME ENROLLED STUDENT', comment = 'ESP="NOMBRE ESTUDIANTE MATRLADO."';
                }
                field("NAME ENROLLED COURSE"; Rec."Name Enrolled Course")
                {
                    ApplicationArea = All;
                    Caption = 'NAME ENROLLED COURSE', comment = 'ESP="NOMBRE CURSO MATRLADO."';
                }
            }
        }
    }
}