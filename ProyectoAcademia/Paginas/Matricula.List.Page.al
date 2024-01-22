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
                field("ID"; FORMAT(Rec."IDESTUDIANTE" + '-' + Rec."IDCURSO"))
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("FECHA Y HORA"; Rec."FECHA Y HORA")
                {
                    ApplicationArea = All;
                }

                field("ESTUDIANTE"; Rec."ESTUDIANTE")
                {
                    ApplicationArea = All;
                }

                field("CURSO"; Rec."CURSO")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}