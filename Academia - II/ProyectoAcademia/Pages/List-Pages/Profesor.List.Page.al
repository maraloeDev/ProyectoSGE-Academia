page 50107 "Teacher Page"
{
    PageType = Card;
    SourceTable = Teacher;
    Caption = 'TEACHER PAGE', comment = 'ESP="PÁGINA DEL PROFESOR"';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."Teacher .Id")
                {
                    ApplicationArea = All;
                    Caption = 'No.', comment = 'ESP="No."';
                }
                field("NAME"; Rec."Teacher Name")
                {
                    ApplicationArea = All;
                    Caption = 'NAME', comment = 'ESP="NOMBRE"';
                }
                field("ADDRESS"; Rec."Teacher Address")
                {
                    ApplicationArea = All;
                    Caption = 'ADDRESS', comment = 'ESP="DIRECCIÓN';
                }
                field("Date of Hire"; Rec."Date of Hire")
                {
                    ApplicationArea = All;
                    Caption = 'DATE OF HIRE', comment = 'ESP="FECHA DE CONTRATACION"';
                }
                field("SALARY"; Rec."Teacher Salary")
                {
                    ApplicationArea = All;
                    Caption = 'SALARY', comment = 'ESP="SALARIO"';
                }
                field("No. DEPART. ASIGN."; Rec."Id. Depart. Asign.")
                {
                    ApplicationArea = All;
                    Caption = 'No. DEPART. ASIGN.', comment = 'ESP="No. DEPARTAMENTO ASIGNADO"';
                }
                field("NAME DEPRT. ASIGN."; Rec."Name Deprt. Asign.")
                {
                    ApplicationArea = All;
                    Caption = 'NAME DEPRT. ASIGN.', comment = 'ESP="NOMBRE DEPARTAMENTO ASIGNADO"';
                }
                field("NUMBER ASSISTANTS"; Rec."Number of assistants")
                {
                    ApplicationArea = All;
                    Caption = 'NUMBER ASSISTANTS', comment = 'ESP="NÚMERO DE ASISTENTES"';
                }
                field("NUMBER COURSES GIVEN"; Rec."Number of courses given")
                {
                    ApplicationArea = All;
                    Caption = 'NUMBER COURSES GIVEN', comment = 'ESP="NÚMERO CURSOS IMPARTIDOS"';
                }
            }
        }
    }
}