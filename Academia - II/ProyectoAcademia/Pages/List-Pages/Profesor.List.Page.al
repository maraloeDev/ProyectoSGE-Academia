page 50107 "Teacher List"
{
    PageType = Card;
    SourceTable = Teacher;
    Caption = 'TEACHER LIST', comment = 'ESP="LISTA DE PROFESORES"';
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
                    Caption = 'NAME', comment = 'ESP="NOMBRE"';
                    ApplicationArea = All;
                }
                field("ADDRESS"; Rec."Address")
                {
                    Caption = 'ADDRESS', comment = 'ESP="DIRECCIÓN';
                    ApplicationArea = All;
                }
                field("Date of Hire"; Rec."Date of Hire")
                {
                    Caption = 'DATE OF HIRE', comment = 'ESP="FECHA DE CONTRATACION"';
                    ApplicationArea = All;
                }
                field("SALARY"; Rec."Salary")
                {
                    Caption = 'SALARY', comment = 'ESP="SALARIO"';
                    ApplicationArea = All;
                }
                field("No. DEPART. ASIGN."; Rec."No. Depart. Asign.")
                {
                    Caption = 'No. DEPART. ASIGN.', comment = 'ESP="No. DEPARTAMENTO ASIGNADO"';
                    ApplicationArea = All;
                }
                field("NAME DEPRT. ASIGN."; Rec."Name Deprt. Asign.")
                {
                    Caption = 'NAME DEPRT. ASIGN.', comment = 'ESP="NOMBRE DEPARTAMENTO ASIGNADO"';
                    ApplicationArea = All;
                }
                field("NUMBER ASSISTANTS"; Rec."Number of assistants")
                {
                    Caption = 'NUMBER ASSISTANTS', comment = 'ESP="NÚMERO DE ASISTENTES"';
                    ApplicationArea = All;
                }
                field("NUMBER COURSES GIVEN"; Rec."Number of courses given")
                {
                    Caption = 'NUMBER COURSES GIVEN', comment = 'ESP="NÚMERO CURSOS IMPARTIDOS"';
                    ApplicationArea = All;
                }
            }
        }
    }
}