page 50106 "Horario"
{

    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Horario;

    layout
    {
        area(Content)
        {
            repeater(Repeater)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("DESCRIPCIÓN"; Rec."DESCRIPCIÓN")
                {
                    ApplicationArea = All;
                }

                field("DIA DE LA SEMANA"; Rec."DIA DE LA SEMANA")
                {
                    ApplicationArea = All;
                }

                field("HORA DE INICIO"; Rec."HORA DE INICIO")
                {
                    ApplicationArea = All;
                }

                field("HORA DE FIN"; Rec."HORA DE FIN")
                {
                    ApplicationArea = All;
                }

                field("ID DEL CURSO"; Rec."ID DEL CURSO")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }
}