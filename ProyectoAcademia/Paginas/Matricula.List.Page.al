page 50105 "Matricula"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Matricula;

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

                field("FECHA Y HORA"; Rec."FECHA Y HORA")
                {
                    ApplicationArea = All;
                }

                field("IDESTUDIANTE"; Rec."IDESTUDIANTE")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("IDCURSO"; Rec."IDCURSO")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

            }
        }
    }
}