page 50104 "Personal"
{

    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Personal;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field("ID"; Rec."ID")
                {
                    ApplicationArea = All;
                    Editable = false; 
                }
                field("NOMBRE"; Rec."NOMBRE")

                {
                    ApplicationArea = All;
                }

                field("DIRECCIÓN"; Rec."DIRECCIÓN")
                {
                    ApplicationArea = All;
                }

                field("SALARIO"; Rec."SALARIO")
                {
                    ApplicationArea = All;
                }

                field("PUESTO"; Rec."PUESTO")
                {
                    ApplicationArea = All;
                }
            }
        }

    }
}