page 50110 "Secretaria/Admon. CardPage"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Non-teaching staff";

    layout
    {
        area(Content)
        {
            cuegroup(Datos)
            {
                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Managment"; Rec.Managment)
                {
                    ApplicationArea = All;
                }
                field("Position"; Rec.Position)
                {
                    ApplicationArea = All;
                }
                field("Head Studies"; Rec."Head Studies Name")
                {
                    ApplicationArea = All;
                }
                field("Salary"; Rec.Salary)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action("Non-Teaching staff")
            {
                ApplicationArea = All;
                RunObject = page "Non-teaching staff List";
                RunPageMode = Create;
            }
            action("Teachers")
            {
                ApplicationArea = All;
                RunObject = page "Teacher List";
                RunPageMode = Create;
            }
            action("Students")
            {
                ApplicationArea = All;
                RunObject = page "Student List";
                RunPageMode = Create;
            }
            action("Departments")
            {
                ApplicationArea = All;
                RunObject = page "Department List";
                RunPageMode = Create;
            }
            action("Courses")
            {
                ApplicationArea = All;
                RunObject = page "Course List";
                RunPageMode = Create;
            }
            action("Schedules")
            {
                ApplicationArea = All;
                RunObject = page "Schedule List";
                RunPageMode = Create;
            }
        }

    }

    var
        myInt: Integer;
}