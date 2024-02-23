page 50119 "Department Information"
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
                field("Number of teachers"; Rec."Number of teachers")
                {
                    ApplicationArea = All;
                    Caption = 'Number of Teachers', comment = 'ESP="Número de Profesores"';
                    Tooltip = 'The total number of teachers in all departments.', comment = 'ESP="El número total de profesores en todos los departamentos."';
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