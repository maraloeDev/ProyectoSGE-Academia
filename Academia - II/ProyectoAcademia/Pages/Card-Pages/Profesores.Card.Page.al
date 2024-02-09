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
                    Caption = 'Name of Teacher', comment = 'ESP="Nombre del Profesor"';
                    ApplicationArea = All;
                }

                field("Direccion del Profesor"; Rec.Address)
                {
                    Caption = 'Address of Teacher', comment = 'ESP="Direccion del Profesor"';
                    ApplicationArea = All;
                }
            }

            group("Labor")
            {
                Caption = 'Labor', comment = 'ESP="Laboral"';
                field("Date of hire"; Rec."Date of hire")
                {
                    Caption = 'Date of hire', comment = 'ESP="Fecha de Contratacion"';
                    ApplicationArea = All;
                }
                field("Salario"; Rec.Salary)
                {
                    Caption = 'Salary', comment = 'ESP="Salario"';
                    ApplicationArea = All;
                }
                field("No. Depart."; Rec."No. Depart. Asign.")
                {
                    Caption = 'No. Depart.', comment = 'ESP="No. Departamento Asignado"';
                    ApplicationArea = All;
                }
                field("Depart. Asign."; Rec."Name Deprt. Asign.")
                {
                    Caption = 'Depart. Asign.', comment = 'ESP="Departamento Asignado"';
                    ApplicationArea = All;
                }
            }
        }
        area(FactBoxes)
        {
            part("Stadistics"; "Stadistic - Teacher SubPage")
            {
                Caption = 'Stadistics', comment = 'ESP="Estadisticas"';
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
        }
    }
}