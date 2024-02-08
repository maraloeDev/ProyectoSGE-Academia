page 50109 "Departamento - Curso Subpage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Course;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Description"; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Teacher"; Rec."Teacher Name")
                {
                    ApplicationArea = All;
                }
                field("Total hours"; Rec."Total hours")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Curso - Matrículas")
            {
                ApplicationArea = All;
                RunObject = page "Registration List";
                RunPageLink = "No. Course Enrolled" = field("No.");
                RunPageMode = View;
            }
            action("Curso – Datos")
            {
                ApplicationArea = All;
                RunObject = page "Course List";
                RunPageLink = "No." = field("No.");
                RunPageMode = View;
            }
        }
    }

    var
        myInt: Integer;
}