page 50102 "Student List"
{
    PageType = List;
    SourceTable = Student;
    Caption = 'Student List', comment = 'ESP="Lista de Estudiantes"';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    ApplicationArea = All;
                }
                field("NAME"; Rec."Name")
                {
                    Caption = 'NAME', comment = 'ESP="ESTUDIANTE"';
                    ApplicationArea = All;
                }
                field("GENDER"; Rec."Gender")
                {
                    Caption = 'GENDER', comment = 'ESP="GENERO"';
                    ApplicationArea = All;
                }
                field("ADDRESS"; Rec."Adress")
                {
                    Caption = 'ADDRESS', comment = 'ESP="DIRECCIÓN"';
                    ApplicationArea = All;
                }
                field("PHONE"; Rec."Phone")
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