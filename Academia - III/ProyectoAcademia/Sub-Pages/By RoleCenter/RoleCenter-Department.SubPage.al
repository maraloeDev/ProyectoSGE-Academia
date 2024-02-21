page 50117 "Department Information"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Department;
    Caption = 'Department Information', comment = 'ESP="Información del Departamento"';

    layout
    {
        area(Content)
        {
            cuegroup("Department Information")
            {
                Caption = 'Department Information', comment = 'ESP="Información del Departamento"';
                Description = 'This card part displays information about the department.';

                field("Average fees"; Rec."Average fees")
                {
                    Caption = 'Average fees', comment = 'ESP="Tarifas Promedio"';
                    ApplicationArea = All;
                    Description = 'The average fees of the department.';
                    DrillDownPageId = "Course List";
                }

                field("Number of teachers"; Rec."Number of teachers")
                {
                    Caption = 'Number of teachers', comment = 'ESP="Número de Profesores"';
                    ApplicationArea = All;
                    Description = 'The total number of teachers in the department.';
                    DrillDownPageId = "Teacher List";
                }
            }
        }
    }
}