page 50102 "Student Page"
{
    PageType = List;
    SourceTable = Student;
    Caption = 'STUDENT PAGE', comment = 'ESP="PÁGINA DEL ESTUDIANTE"';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."Student No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    ApplicationArea = All;
                }
                field("NAME"; Rec."Student Name")
                {
                    Caption = 'NAME', comment = 'ESP="ESTUDIANTE"';
                    ApplicationArea = All;
                }
                field("GENDER"; Rec."Student Sex")
                {
                    Caption = 'GENDER', comment = 'ESP="GENERO"';
                    ApplicationArea = All;
                }
                field("ADDRESS"; Rec."Adress Student")
                {
                    Caption = 'ADDRESS', comment = 'ESP="DIRECCIÓN"';
                    ApplicationArea = All;
                }
                field("PHONE"; Rec."Phone. Student")
                {
                    Caption = 'PHONE', comment = 'ESP="TELÉFONO"';
                    ApplicationArea = All;
                }
                field("BIRTHDATE"; Rec."Birthdate")
                {
                    Caption = 'BIRTHDATE', comment = 'ESP="FECHA DE NACIMIENTO"';
                    ApplicationArea = All;
                }
            }
        }
    }
}