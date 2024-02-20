page 50106 "Student SubPage"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Student;
    Caption = 'Student SubPage', comment = 'ESP="Estudiante SubPagina"';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                }
                field(Birthdate; Rec.Birthdate)
                {
                    ApplicationArea = All;
                }
                field(Adress; Rec.Adress)
                {
                    ApplicationArea = All;
                }
                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}