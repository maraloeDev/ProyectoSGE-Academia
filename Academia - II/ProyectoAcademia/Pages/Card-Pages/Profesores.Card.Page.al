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
                field("No. Depart."; Rec."No. Depart. Asign.")
                {
                    ApplicationArea = All;
                }
                field("Depart. Asign."; Rec."Name Deprt. Asign.")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(FactBoxes)
        {
            part("Estadisticas"; "Teacher List")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
        }
    }
}