page 50101 "Departamento"
{

    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Departamento;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("ID"; Rec.ID)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("NOMBRE"; Rec.NOMBRE)
                {
                    ApplicationArea = All;
                }

                field("DESPACHO"; Rec.DESPACHO)
                {
                    ApplicationArea = All;
                }

                field("PROF. DIRECTOR"; Rec.NOMBRE)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}