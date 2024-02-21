page 50101 "Department List"
{
    PageType = List;
    SourceTable = Department;
    Caption = 'Department List', comment = 'ESP="Lista de Departamentos"';
    Description = 'This page displays a list of departments in the academy.';
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
                    Description = 'The unique identifier of the department.';
                }
                field("NAME"; Rec."Name")
                {
                    Caption = 'NAME', comment = 'ESP="NOMBRE"';
                    ApplicationArea = All;
                    Description = 'The name of the department.';
                }
                field("ASSIGNED OFFICE"; Rec."Assigned office")
                {
                    Caption = 'ASSIGNED OFFICE', comment = 'ESP="DESPACHO ASIGNADO"';
                    ApplicationArea = All;
                    Description = 'The assigned office of the department.';
                }
                field("HEAD DEPARTMENT No."; Rec."Head Professor No.")
                {
                    Caption = 'HEAD DEPARTMENT No.', comment = 'ESP="No. JEFE DEPARTAMENTO"';
                    ApplicationArea = All;
                    Description = 'The identifier of the head professor of the department.';
                }
                field("HEAD DEPARTMENT NAME"; Rec."Head Professor Name")
                {
                    Caption = 'HEAD DEPARTMENT NAME', comment = 'ESP="NOMBRE JEFE DEPARTAMENTO"';
                    ApplicationArea = All;
                    Description = 'The name of the head professor of the department.';
                }
                field("AVERAGE FEES"; Rec."Average fees")
                {
                    Caption = 'AVERAGE FEES', comment = 'ESP="PROMEDIO TARIFAS"';
                    ApplicationArea = All;
                    Description = 'The average fees of the department.';
                }
                field("No. TEACHERS"; Rec."Number of teachers")
                {
                    Caption = 'No. TEACHERS', comment = 'ESP="No. PROFESORES"';
                    ApplicationArea = All;
                    Description = 'The number of teachers in the department.';
                }
            }
        }
    }
}
