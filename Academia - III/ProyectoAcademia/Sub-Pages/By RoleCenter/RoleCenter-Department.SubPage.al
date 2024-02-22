page 50117 "Department Information"
{
    PageType = CardPart;
    SourceTable = Department;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Department Information', comment = 'ESP="Información del Departamento"';
    layout
    {
        area(Content)
        {
            cuegroup("Department Information")
            {
                Caption = 'Department Information', comment = 'ESP="Información del Departamento"';
                field("Average fees"; Rec."Average fees")
                {
                    Caption = 'Average fees', comment = 'ESP="Tarifas Promedio"';
                    Tooltip = 'The average fees of the department.', comment = 'ESP="Las tarifas promedio del departamento."';
                    ApplicationArea = All;
                    DrillDownPageId = "Course List";
                }

                field("Number of teachers"; Rec."Number of teachers")
                {
                    Caption = 'Number of teachers', comment = 'ESP="Número de Profesores"';
                    Tooltip = 'The total number of teachers in the department.', comment = 'ESP="El número total de profesores en el departamento."';
                    ApplicationArea = All;
                    DrillDownPageId = "Teacher List";
                }
            }
        }
    }
    trigger OnOpenPage();
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}