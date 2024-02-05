page 50112 "Profesor Card"
{
    PageType = Card;
    SourceTable = Teacher;
    Caption = 'Gestión de Profesores';

    layout
    {
        area(content)
        {
            group("General")
            {
                field("Nombre del Profesor"; Rec.Name)
                {
                    ApplicationArea = All;
                }

                field("Direccion del Profesor"; Rec.Address)
                {
                    ApplicationArea = All;
                }
            }

            group("Laboral")
            {
                Caption = 'Labor', comment = 'ESP="Laboral"';
                field("Date of hire"; Rec."Date of hire")
                {
                    ApplicationArea = All;
                }

                field("Salario"; Rec.Salary)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    /* factbox { 
        area(content)
        {
            part(Estadisticas; "Estadísticas de Profesor")
            {
                ApplicationArea = All;
                SubPageLink = "ID del Profesor" = field("ID del Profesor");
            }
        }
    }*/
}