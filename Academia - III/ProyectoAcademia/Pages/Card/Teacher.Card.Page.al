page 50111 "Teacher CardPage"
{
    PageType = Card;
    SourceTable = Teacher;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Teacher CardPage', comment = 'ESP="Ficha de Profesor"';
    Description = 'This card page displays detailed information about a teacher.';

    layout
    {
        area(content)
        {
            group("General")
            {
                Caption = 'General', comment = 'ESP="General"';
                Description = 'General information about the teacher.';

                field("Nombre del Profesor"; Rec.Name)
                {
                    Caption = 'Name of Teacher', comment = 'ESP="Nombre del Profesor"';
                    ApplicationArea = All;
                    Description = 'The name of the teacher.';
                }

                field("Direccion del Profesor"; Rec.Address)
                {
                    Caption = 'Address of Teacher', comment = 'ESP="Dirección del Profesor"';
                    ApplicationArea = All;
                    Description = 'The address of the teacher.';
                }
            }

            group("Labor")
            {
                Caption = 'Labor', comment = 'ESP="Laboral"';
                Description = 'Employment-related information for the teacher.';

                field("Date of hire"; Rec."Date of hire")
                {
                    Caption = 'Date of hire', comment = 'ESP="Fecha de Contratación"';
                    ApplicationArea = All;
                    Description = 'The date when the teacher was hired.';
                }

                field("Salario"; Rec.Salary)
                {
                    Caption = 'Salary', comment = 'ESP="Salario"';
                    ApplicationArea = All;
                    Description = 'The salary of the teacher.';
                }

                field("No. Depart."; Rec."Department No.")
                {
                    Caption = 'No. Depart.', comment = 'ESP="No. Departamento Asignado"';
                    ApplicationArea = All;
                    Description = 'The identification number of the assigned department.';
                }

                field("Depart. Asign."; Rec."Department Name")
                {
                    Caption = 'Depart. Asign.', comment = 'ESP="Departamento Asignado"';
                    ApplicationArea = All;
                    Description = 'The name of the assigned department.';
                }
            }
        }

        area(FactBoxes)
        {
            part("Stadistics"; "Statistic - Teacher SubPage")
            {
                Caption = 'Stadistics', comment = 'ESP="Estadísticas"';
                Description = 'Detailed statistics for the teacher.';
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
        }
    }
}