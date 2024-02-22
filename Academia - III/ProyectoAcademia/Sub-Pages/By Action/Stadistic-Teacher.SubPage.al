page 50114 "Statistic - Teacher SubPage"
{
    PageType = ListPart;
    SourceTable = Teacher;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Statistic - Teacher SubPage', comment = 'ESP="Subpágina de Estadísticas - Profesor"';
    layout
    {
        area(Content)
        {
            group("Statistics")
            {
                Caption = 'Statistics', comment = 'ESP="Estadísticas"';

                field("Number of helpers"; Rec."Number of helpers")
                {
                    Caption = 'Number of helpers', comment = 'ESP="Número de ayudantes"';
                    Tooltip = 'Total number of assistants assigned to the teacher.', comment = 'ESP="Número total de asistentes asignados al profesor."';
                    ApplicationArea = All;
                }

                field("Number of courses given"; Rec."Number of courses given")
                {
                    Caption = 'Number of courses given', comment = 'ESP="Número de cursos que imparte"';
                    Tooltip = 'Total number of courses taught by the teacher.', comment = 'ESP="Número total de cursos impartidos por el profesor."';
                    ApplicationArea = All;
                }
            }
        }
    }
}