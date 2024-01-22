page 50100 "Profesor"
{

    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Profesor;

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
                field("FECHA DE CONTRATACION"; Rec."FECHA DE CONTRATACION")
                {
                    ApplicationArea = All;
                }
                field("SALARIO"; Rec."SALARIO")
                {
                    ApplicationArea = All;
                }
                field("DEPARTAMENTO ASIGNADO"; Rec."DEPART. ASIGNADO")
                {
                    ApplicationArea = All;
                }
                field("Nº AYUDANTES"; Rec."Nº AYUDANTES")
                {

                }
            }
        }
    }
}