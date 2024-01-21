page 50102 "Cursos"
{
    PageType = List;

    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = cursos;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("ID: "; Rec.ID)
                {
                    ApplicationArea = All;
                    Editable = false;

                }

                field("NOMBRE: "; Rec.Nombre)
                {
                    ApplicationArea = All;

                }

                field("DESCRIPCIÓN: "; Rec.Descripcion)
                {
                    ApplicationArea = All;

                }

                field("HORAS: "; Rec.Horas)
                {
                    ApplicationArea = All;

                }

                field("TARIFA: "; Rec.TARIFA)
                {
                    ApplicationArea = All;

                }

                field("idImpartidor: "; Rec.idImpartidor)
                {
                    ApplicationArea = All;
                    Editable = false;

                }

                field("idOfertador: "; Rec.idOfertador)
                {
                    ApplicationArea = All;
                    Editable = false;

                }

                field("idHorario"; Rec.idHorario)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
            }
        }
    }
}