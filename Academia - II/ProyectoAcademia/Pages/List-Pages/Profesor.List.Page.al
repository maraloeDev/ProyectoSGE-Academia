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
                field("Teacher .Id"; Rec."Teacher .Id")
                {
                    ApplicationArea = All;
                    Caption = 'TEACHER ID', comment = 'ESP="ID DEL PROFESOR"';
                }
                field("Teacher Name"; Rec."Teacher Name")
                {
                    ApplicationArea = All;
                    Caption = 'TEACHER NAME', comment = 'ESP="NOMBRE DEL PROFESOR"';
                }
                field("Teacher Address"; Rec."Teacher Address")
                {
                    ApplicationArea = All;
                    Caption = 'TEACHER ADDRESS', comment = 'ESP="DIRECCION DEL PROFESOR"';
                }
                field("Date of Hire"; Rec."Date of Hire")
                {
                    ApplicationArea = All;
                    Caption = 'DATE OF HIRE', comment = 'ESP="FECHA DE CONTRATACION"';
                }
                field("Teacher Salary"; Rec."Teacher Salary")
                {
                    ApplicationArea = All;
                    Caption = 'TEACHER SALARY', comment = 'ESP="SALARIO DEL PROFESOR"';
                }
                field("Id. Depart. Asign."; Rec."Id. Depart. Asign.")
                {
                    ApplicationArea = All;
                    Caption = 'ID. DEPART. ASIGN.', comment = 'ESP="ID. DEPARTAMENTO ASIGNADO"';
                }
                field("Name Deprt. Asign."; Rec."Name Deprt. Asign.")
                {
                    ApplicationArea = All;
                    Caption = 'NAME DEPRT. ASIGN.', comment = 'ESP="NOMBRE DEPARTAMENTO ASIGNADO"';
                }
                field("Number of assistants"; Rec."Number of assistants")
                {
                    ApplicationArea = All;
                    Caption = 'NUMBER OF ASSISTANTS', comment = 'ESP="NUMERO DE ASISTENTES"';
                }
                field("Number of courses given"; Rec."Number of courses given")
                {
                    ApplicationArea = All;
                    Caption = 'NUMBER OF COURSES GIVEN', comment = 'ESP="NUMERO DE CURSOS IMPARTIDOS"';
                }
            }
        }
    }
}