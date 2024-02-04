page 50101 "Department List"
{
    PageType = List;
    SourceTable = Department;
    Caption = 'DEPARTMENT LIST', comment = 'ESP="LISTA DE DEPARTAMENTOS"';

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
                field("ASSIGNED OFFICE"; Rec."Assigned office")
                {
                    Caption = 'ASSIGNED OFFICE', comment = 'ESP="DESPACHO ASIGNADO"';
                    ApplicationArea = All;
                }
                field("HEAD DEPARTMENT No."; Rec."Head Professor No.")
                {
                    Caption = 'HEAD DEPARTMENT No.', comment = 'ESP="No. JEFE DEPARTAMENTO"';
                    ApplicationArea = All;
                }
                field("HEAD DEPARTMENT NAME"; Rec."Head Professor Name")
                {
                    Caption = 'HEAD DEPARTMENT NAME', comment = 'ESP="NOMBRE JEFE DEPARTAMENTO"';
                    ApplicationArea = All;
                }
                field("AVERAGE FEES"; Rec."Average fees")
                {
                    Caption = 'AVERAGE FEES', comment = 'ESP="PROMEDIO TARIFAS"';
                    ApplicationArea = All;
                }
            }
        }
    }
}