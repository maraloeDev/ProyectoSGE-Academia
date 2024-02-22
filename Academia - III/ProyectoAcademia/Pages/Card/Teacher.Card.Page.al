page 50113 "Teacher CardPage"
{
    PageType = Card;
    SourceTable = Teacher;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Teacher CardPage', comment = 'ESP="Ficha de Profesor"';
    layout
    {
        area(content)
        {
            group("General")
            {
                Caption = 'General', comment = 'ESP="General"';
                field("Nombre del Profesor"; Rec.Name)
                {
                    Caption = 'Name of Teacher', comment = 'ESP="Nombre del Profesor"';
                    Tooltip = 'The name of the teacher.', comment = 'ESP="El nombre del profesor."';
                    ApplicationArea = All;
                }

                field("Direccion del Profesor"; Rec.Address)
                {
                    Caption = 'Address of Teacher', comment = 'ESP="Dirección del Profesor"';
                    Tooltip = 'The address of the teacher.', comment = 'ESP="La dirección del profesor."';
                    ApplicationArea = All;
                }
            }

            group("Labor")
            {
                Caption = 'Labor', comment = 'ESP="Laboral"';
                field("Date of hire"; Rec."Date of hire")
                {
                    Caption = 'Date of hire', comment = 'ESP="Fecha de Contratación"';
                    Tooltip = 'The date when the teacher was hired.', comment = 'ESP="La fecha en que el profesor fue contratado."';
                    ApplicationArea = All;
                }

                field("Salario"; Rec.Salary)
                {
                    Caption = 'Salary', comment = 'ESP="Salario"';
                    Tooltip = 'The salary of the teacher.', comment = 'ESP="El salario del profesor."';
                    ApplicationArea = All;
                }

                field("No. Depart."; Rec."Department No.")
                {
                    Caption = 'No. Depart.', comment = 'ESP="No. Departamento Asignado"';
                    Tooltip = 'The identification number of the assigned department.', comment = 'ESP="El número de identificación del departamento asignado."';
                    ApplicationArea = All;
                }

                field("Depart. Asign."; Rec."Department Name")
                {
                    Caption = 'Depart. Asign.', comment = 'ESP="Departamento Asignado"';
                    Tooltip = 'The name of the assigned department.', comment = 'ESP="El nombre del departamento asignado."';
                    ApplicationArea = All;
                }
            }
        }

        area(FactBoxes)
        {
            part("Stadistics"; "Statistic - Teacher SubPage")
            {
                Caption = 'Stadistics', comment = 'ESP="Estadísticas"';
                Tooltip = 'Detailed statistics for the teacher.', comment = 'ESP="Estadísticas detalladas del profesor."';
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
        }
    }
}