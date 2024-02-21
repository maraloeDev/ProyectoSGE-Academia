page 50114 "Statistic - Teacher SubPage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Teacher;
    Caption = 'Statistic - Teacher SubPage', comment = 'ESP="Subpágina de Estadísticas - Profesor"';
    Description = 'This subpage displays statistics related to teachers.';

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
                    ApplicationArea = All;
                    Description = 'Total number of assistants assigned to the teacher.';
                }

                field("Number of courses given"; Rec."Number of courses given")
                {
                    Caption = 'Number of courses given', comment = 'ESP="Número de cursos que imparte"';
                    ApplicationArea = All;
                    Description = 'Total number of courses taught by the teacher.';
                }
            }
        }
    }
}