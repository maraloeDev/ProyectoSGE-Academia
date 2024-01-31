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
                field("Student No."; Rec."Student No.")
                {
                    ApplicationArea = All;
                    Caption = 'STUDENT.ID', comment = 'ESP="ID. ESTUDIANTE"';
                }
                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                    Caption = 'STUDENT NAME', comment = 'ESP="NOMBRE DEL ESTUDIANTE"';
                }
                field("Student Sex"; Rec."Student Sex")
                {
                    ApplicationArea = All;
                    Caption = 'STUDENT SEX', comment = 'ESP="SEXO DEL ESTUDIANTE"';
                }
                field("Adress Student"; Rec."Adress Student")
                {
                    ApplicationArea = All;
                    Caption = 'STUDENT ADDRESS', comment = 'ESP="DIRECCIÓN DEL ESTUDIANTE"';
                }
                field("Phone. Student"; Rec."Phone. Student")
                {
                    ApplicationArea = All;
                    Caption = 'STUDENT PHONE', comment = 'ESP="TELÉFONO DEL ESTUDIANTE"';
                }
                field("Birthdate"; Rec."Birthdate")
                {
                    ApplicationArea = All;
                    Caption = 'STUDENT BIRTHDATE', comment = 'ESP="FECHA DE NACIMIENTO DEL ESTUDIANTE"';
                }
            }
        }
    }
}