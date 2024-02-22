page 50108 "Department CardPage"
{
    PageType = Card;
    SourceTable = Department;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Department CardPage', comment = 'ESP="Ficha de Departamento"';
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("No."; Rec."No.")
                {
                    Caption = 'No. Depart.', comment = 'ESP="No. Depart."';
                    Tooltip = 'The identification number of the department.', comment = 'ESP="El número de identificación del departamento."';
                    ApplicationArea = All;
                }

                field("Name"; Rec.Name)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    Tooltip = 'The name of the department.', comment = 'ESP="El nombre del departamento."';
                    ApplicationArea = All;
                }

                field("Average fees"; Rec."Average fees")
                {
                    Caption = 'Average fees', comment = 'ESP="Promedio de tarifas"';
                    Tooltip = 'The average fees of the department.', comment = 'ESP="Las tarifas promedio del departamento."';
                    ApplicationArea = All;
                }

                field("Number of teachers"; Rec."Number of teachers")
                {
                    Caption = 'Number of teachers', comment = 'ESP="Número de profesores"';
                    Tooltip = 'The total number of teachers in the department.', comment = 'ESP="El número total de profesores en el departamento."';
                    ApplicationArea = All;
                }
            }

            group(Communication)
            {
                Caption = 'Communication', comment = 'ESP="Comunicación"';
                field("Head Professor"; Rec."Head Professor Name")
                {
                    Caption = 'Head Teacher', comment = 'ESP="Nombre del profesor coordinador"';
                    Tooltip = 'The name of the head professor coordinating the department.', comment = 'ESP="El nombre del profesor coordinador del departamento."';
                    ApplicationArea = All;
                }

                field("Office"; Rec."Assigned office")
                {
                    Caption = 'Office', comment = 'ESP="Oficina asignada"';
                    Tooltip = 'The assigned office for the department.', comment = 'ESP="La oficina asignada para el departamento."';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Browse - Teachers")
            {
                Caption = 'Browse - Teachers', comment = 'ESP="Navegar - Profesores"';
                Tooltip = 'View a list of teachers associated with this department.', comment = 'ESP="Ver una lista de profesores asociados con este departamento."';
                ApplicationArea = All;
                RunObject = page "Teacher List";
                RunPageLink = "Department No." = field("No.");
                RunPageMode = View;
            }

            action("Browse - Coordinator")
            {
                Caption = 'Browse - Coordinator', comment = 'ESP="Navegar - Coordinador"';
                Tooltip = 'View details of the head professor coordinating this department.', comment = 'ESP="Ver detalles del profesor coordinador de este departamento."';
                ApplicationArea = All;
                RunObject = page "Teacher List";
                RunPageLink = "No." = field("Head Professor No.");
                RunPageMode = View;
            }

            action("Courses of the Department")
            {
                Caption = 'Courses of the Department', comment = 'ESP="Cursos Departamento"';
                Tooltip = 'View a list of courses offered by this department.', comment = 'ESP="Ver una lista de cursos ofrecidos por este departamento."';
                ApplicationArea = All;
                RunObject = page "Department - Course Subpage";
                RunPageLink = "Course provider No." = field("No.");
            }
        }
    }
}