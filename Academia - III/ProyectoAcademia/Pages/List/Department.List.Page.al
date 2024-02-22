page 50101 "Department List"
{
    PageType = List;
    SourceTable = Department;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Department List', comment = 'ESP="Lista de Departamentos"';
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
                    Tooltip = 'The unique identifier of the department.', comment = 'ESP="El identificador único del departamento."';
                    ApplicationArea = All;
                }
                field("NAME"; Rec."Name")
                {
                    Caption = 'NAME', comment = 'ESP="NOMBRE"';
                    Tooltip = 'The name of the department.', comment = 'ESP="El nombre del departamento."';
                    ApplicationArea = All;
                }
                field("ASSIGNED OFFICE"; Rec."Assigned office")
                {
                    Caption = 'ASSIGNED OFFICE', comment = 'ESP="DESPACHO ASIGNADO"';
                    Tooltip = 'The assigned office of the department.', comment = 'ESP="El despacho asignado del departamento."';
                    ApplicationArea = All;
                }
                field("HEAD DEPARTMENT No."; Rec."Head Professor No.")
                {
                    Caption = 'HEAD DEPARTMENT No.', comment = 'ESP="No. JEFE DEPARTAMENTO"';
                    Tooltip = 'The identifier of the head professor of the department.', comment = 'ESP="El identificador del jefe de departamento del departamento."';
                    ApplicationArea = All;
                }
                field("HEAD DEPARTMENT NAME"; Rec."Head Professor Name")
                {
                    Caption = 'HEAD DEPARTMENT NAME', comment = 'ESP="NOMBRE JEFE DEPARTAMENTO"';
                    Tooltip = 'The name of the head professor of the department.', comment = 'ESP="El nombre del jefe de departamento del departamento."';
                    ApplicationArea = All;
                }
                field("AVERAGE FEES"; Rec."Average fees")
                {
                    Caption = 'AVERAGE FEES', comment = 'ESP="PROMEDIO TARIFAS"';
                    Tooltip = 'The average fees of the department.', comment = 'ESP="El promedio de tarifas del departamento."';
                    ApplicationArea = All;
                }
                field("No. TEACHERS"; Rec."Number of teachers")
                {
                    Caption = 'No. TEACHERS', comment = 'ESP="No. PROFESORES"';
                    Tooltip = 'The number of teachers in the department.', comment = 'ESP="El número de profesores en el departamento."';
                    ApplicationArea = All;
                }
            }
        }
    }
}