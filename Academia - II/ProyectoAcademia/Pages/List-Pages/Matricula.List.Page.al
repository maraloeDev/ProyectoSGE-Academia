page 50104 "Registration Page"
{
    PageType = Card;
    SourceTable = Registration;
    Caption = 'REGISTRATION PAGE', comment = 'ESP="PÁGINA DE MATRICULA"';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Registration No."; Rec."Registration No.")
                {
                    ApplicationArea = All;
                    Caption = 'REGUSTRATION NO.', comment = 'ESP="REGISTRO No."';
                }
                field("Date/Time Registration"; Rec."Date/Time Registration")
                {
                    ApplicationArea = All;
                    Caption = 'DATE/TIME OF REGISTRATION', comment = 'ESP="FECHA / HORA DE LA MATRICULA"';
                }
                field("Id. Student. Enrolled."; Rec."Id. Student. Enrolled.")
                {
                    ApplicationArea = All;
                    Caption = 'ID.STUDENT ENROLLED', comment = 'ESP="ID. ESTUDIANTE MATRICULADO"';
                }
                field("Id. Course Enrolled."; Rec."Id. Course Enrolled.")
                {
                    ApplicationArea = All;
                    Caption = 'ID. COURSE ENROLLED', comment = 'ESP="ID. CURSO MATRICULADO"';
                }
                field("Name Student Enrolled"; Rec."Name Student Enrolled")
                {
                    ApplicationArea = All;
                    Caption = 'NAME OF ENROLLED STUDENT ', comment = 'ESP="NOMBRE DEL ESTUDIANTE MATRICULADO"';
                }
                field("Name Enrolled Course"; Rec."Name Enrolled Course")
                {
                    ApplicationArea = All;
                    Caption = 'NAME OF ENROLLED COURSE', comment = 'ESP="NOMBRE DEL CURSO MATRICULADO"';
                }
            }
        }
    }
}