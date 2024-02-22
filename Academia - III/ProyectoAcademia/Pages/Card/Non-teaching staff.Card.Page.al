page 50120 "Non-teaching staff CardPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Non-teaching staff";

    layout
    {
        area(Content)
        {
            group(General)
            {

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;
                }
                field(Management; Rec.Management)
                {
                    ApplicationArea = All;
                }

                field(Salary; Rec.Salary)
                {
                    ApplicationArea = All;
                }
                field(Position; Rec.Position)
                {
                    ApplicationArea = All;
                }

                field("Head of Studies No."; Rec."Head of Studies No.")
                {
                    ApplicationArea = All;
                }

                field("Head of Studies Name"; Rec."Head of Studies Name")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}