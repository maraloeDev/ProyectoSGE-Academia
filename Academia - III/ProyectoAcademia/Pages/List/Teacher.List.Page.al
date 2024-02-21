page 50106 "Teacher List"
{
    PageType = Card;
    SourceTable = Teacher;
    Caption = 'Teacher List', comment = 'ESP="Lista de Profesores"';
    Description = 'This page displays a list of teachers employed by the academy.';
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
                    Description = 'The unique identifier of the teacher.';
                }
                field("NAME"; Rec."Name")
                {
                    Caption = 'NAME', comment = 'ESP="NOMBRE"';
                    ApplicationArea = All;
                    Description = 'The name of the teacher.';
                }
                field("ADDRESS"; Rec."Address")
                {
                    Caption = 'ADDRESS', comment = 'ESP="DIRECCIÓN"';
                    ApplicationArea = All;
                    Description = 'The address of the teacher.';
                }
                field("DATE OF HIRE"; Rec."Date of Hire")
                {
                    Caption = 'DATE OF HIRE', comment = 'ESP="FECHA DE CONTRATACIÓN"';
                    ApplicationArea = All;
                    Description = 'The date when the teacher was hired.';
                }
                field("SALARY"; Rec."Salary")
                {
                    Caption = 'SALARY', comment = 'ESP="SALARIO"';
                    ApplicationArea = All;
                    Description = 'The salary of the teacher.';
                }
                field("No. DEPART. ASIGN."; Rec."Department No.")
                {
                    Caption = 'No. DEPART. ASIGN.', comment = 'ESP="No. DEPARTAMENTO ASIGNADO"';
                    ApplicationArea = All;
                    Description = 'The number of the department assigned to the teacher.';
                }
                field("NAME DEPRT. ASIGN."; Rec."Department Name")
                {
                    Caption = 'NAME DEPRT. ASIGN.', comment = 'ESP="NOMBRE DEPARTAMENTO ASIGNADO"';
                    ApplicationArea = All;
                    Description = 'The name of the department assigned to the teacher.';
                }
                field("NUMBER HELPERS"; Rec."Number of helpers")
                {
                    Caption = 'NUMBER HELPERS', comment = 'ESP="NÚMERO DE ASISTENTES"';
                    ApplicationArea = All;
                    Description = 'The number of assistants working under the teacher.';
                }
                field("NUMBER COURSES GIVEN"; Rec."Number of courses given")
                {
                    Caption = 'NUMBER COURSES GIVEN', comment = 'ESP="NÚMERO CURSOS IMPARTIDOS"';
                    ApplicationArea = All;
                    Description = 'The number of courses taught by the teacher.';
                }
            }
        }
    }
}
