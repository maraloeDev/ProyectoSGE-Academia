page 50106 "Teacher List"
{
    PageType = List;
    SourceTable = Teacher;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Teacher List', comment = 'ESP="Lista de Profesores"';
    Editable = false;
    CardPageId = "Teacher CardPage";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    Tooltip = 'The unique identifier of the teacher.', comment = 'ESP="El identificador único del profesor."';
                    ApplicationArea = All;
                }
                field("NAME"; Rec."Name")
                {
                    Caption = 'NAME', comment = 'ESP="NOMBRE"';
                    Tooltip = 'The name of the teacher.', comment = 'ESP="El nombre del profesor."';
                    ApplicationArea = All;
                }
                field("ADDRESS"; Rec."Address")
                {
                    Caption = 'ADDRESS', comment = 'ESP="DIRECCIÓN"';
                    Tooltip = 'The address of the teacher.', comment = 'ESP="La dirección del profesor."';
                    ApplicationArea = All;
                }
                field("DATE OF HIRE"; Rec."Date of Hire")
                {
                    Caption = 'DATE OF HIRE', comment = 'ESP="FECHA DE CONTRATACIÓN"';
                    Tooltip = 'The date when the teacher was hired.', comment = 'ESP="La fecha en que el profesor fue contratado."';
                    ApplicationArea = All;
                }
                field("SALARY"; Rec."Salary")
                {
                    Caption = 'SALARY', comment = 'ESP="SALARIO"';
                    Tooltip = 'The salary of the teacher.', comment = 'ESP="El salario del profesor."';
                    ApplicationArea = All;
                }
                field("No. DEPART. ASIGN."; Rec."Department No.")
                {
                    Caption = 'No. DEPART. ASIGN.', comment = 'ESP="No. DEPARTAMENTO ASIGNADO"';
                    Tooltip = 'The number of the department assigned to the teacher.', comment = 'ESP="El número del departamento asignado al profesor."';
                    ApplicationArea = All;
                }
                field("NAME DEPRT. ASIGN."; Rec."Department Name")
                {
                    Caption = 'NAME DEPRT. ASIGN.', comment = 'ESP="NOMBRE DEPARTAMENTO ASIGNADO"';
                    Tooltip = 'The name of the department assigned to the teacher.', comment = 'ESP="El nombre del departamento asignado al profesor."';
                    ApplicationArea = All;
                }
                field("NUMBER HELPERS"; Rec."Number of helpers")
                {
                    Caption = 'NUMBER HELPERS', comment = 'ESP="NÚMERO DE ASISTENTES"';
                    Tooltip = 'The number of assistants working under the teacher.', comment = 'ESP="El número de asistentes que trabajan bajo el profesor."';
                    ApplicationArea = All;
                }
                field("NUMBER COURSES GIVEN"; Rec."Number of courses given")
                {
                    Caption = 'NUMBER COURSES GIVEN', comment = 'ESP="NÚMERO CURSOS IMPARTIDOS"';
                    Tooltip = 'The number of courses taught by the teacher.', comment = 'ESP="El número de cursos impartidos por el profesor."';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {

        area(Navigation)
        {
            action("Total Salario")
            {
                ApplicationArea = All;
                trigger OnAction()

                begin
                    Teacher.TotalSalariosProfesores();
                end;
            }

        }

    }


    var
        Teacher: Codeunit "Total salarios de profesores";
}