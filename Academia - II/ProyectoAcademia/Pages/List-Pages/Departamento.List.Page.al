page 50101 "Department Page"
{
    PageType = List;
    SourceTable = Department;
    Caption = 'DEPARTMENT PAGE', comment = 'ESP="PÁGINA DEL DEPARTAMENTO"';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Department No."; Rec."Department No.")
                {
                    ApplicationArea = All;
                    Caption = 'DEPARTMENT NO.', comment = 'ESP="NOMBRE DEL DEPARTAMENTO"';
                }
                field("Department name"; Rec."Department name")
                {
                    ApplicationArea = All;
                    Caption = 'DEPARTMENT NAME', comment = 'ESP="NOMBRE DEL DEPARTAMENTO"';
                }
                field("Assigned office"; Rec."Assigned office")
                {
                    ApplicationArea = All;
                    Caption = 'ASSIGNED OFFICE', comment = 'ESP="DESPACHO ASIGNADO"';
                }
                field("Id. professor. head"; Rec."Id. professor. head")
                {
                    ApplicationArea = All;
                }
                field("Name  professor. head"; Rec."Name  professor. head")
                {
                    ApplicationArea = All;
                    Caption = 'NAME OF THE HEAD PROFESSOR', comment = 'ESP="NOMBRE DEL PROFESOR JEFE"';
                }
                field("Average fees"; Rec."Average fees")
                {
                    ApplicationArea = All;
                    Caption = 'AVERAGE FEES', comment = 'ESP="PROMEDIO DE TARIFAS"';
                }
            }
        }
    }
}