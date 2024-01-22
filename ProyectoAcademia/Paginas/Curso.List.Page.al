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

                field("PROF. IMPARTIDOR: "; Rec.NOMBRE)
                {
                    ApplicationArea = All;
                }

                field("CURSO OFERTADOR: "; Rec.NOMBRE)
                {
                    ApplicationArea = All;
                }

                field("HORARIO: "; Rec.DESCRIPCION)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
            }
        }
    }
}