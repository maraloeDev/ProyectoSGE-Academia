page 50114 "Stadistic - Teacher SubPage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Teacher;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("nº de ayudantes"; Rec."Number of assistants")
                {
                    ApplicationArea = All;
                }
                field("nº de cursos que imparte"; Rec."Number of courses given")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}