page 50105 "Student List"
{
    PageType = List;
    SourceTable = Student;
    Caption = 'Student List', comment = 'ESP="Lista de Estudiantes"';
    Description = 'This page displays a list of students enrolled in the academy.';
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
                    Description = 'The unique identifier of the student.';
                }
                field("NAME"; Rec."Name")
                {
                    Caption = 'NAME', comment = 'ESP="ESTUDIANTE"';
                    ApplicationArea = All;
                    Description = 'The name of the student.';
                }
                field("GENDER"; Rec."Gender")
                {
                    Caption = 'GENDER', comment = 'ESP="GENERO"';
                    ApplicationArea = All;
                    Description = 'The gender of the student.';
                }
                field("ADDRESS"; Rec."Address")
                {
                    Caption = 'ADDRESS', comment = 'ESP="DIRECCIÓN"';
                    ApplicationArea = All;
                    Description = 'The address of the student.';
                }
                field("PHONE"; Rec."Phone")
                {
                    Caption = 'PHONE', comment = 'ESP="TELÉFONO"';
                    ApplicationArea = All;
                    Description = 'The phone number of the student.';
                }
                field("BIRTHDATE"; Rec."Birthdate")
                {
                    Caption = 'BIRTHDATE', comment = 'ESP="FECHA DE NACIMIENTO"';
                    ApplicationArea = All;
                    Description = 'The birthdate of the student.';
                }
            }
        }
    }
}
