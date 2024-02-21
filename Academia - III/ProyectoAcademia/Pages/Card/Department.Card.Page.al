page 50108 "Department CardPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Department;
    Caption = 'Department CardPage', comment = 'ESP="Ficha de Departamento"';
    Description = 'This card page displays detailed information about a department.';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                Description = 'General information about the department.';

                field("No."; Rec."No.")
                {
                    Caption = 'No. Depart.', comment = 'ESP="No. Depart."';
                    ApplicationArea = All;
                    Description = 'The identification number of the department.';
                }

                field("Name"; Rec.Name)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                    Description = 'The name of the department.';
                }

                field("Average fees"; Rec."Average fees")
                {
                    Caption = 'Average fees', comment = 'ESP="Promedio de tarifas"';
                    ApplicationArea = All;
                    Description = 'The average fees of the department.';
                }

                field("Number of teachers"; Rec."Number of teachers")
                {
                    Caption = 'Number of teachers', comment = 'ESP="Número de profesores"';
                    ApplicationArea = All;
                    Description = 'The total number of teachers in the department.';
                }
            }

            group(Communication)
            {
                Caption = 'Communication', comment = 'ESP="Comunicación"';
                Description = 'Communication-related information for the department.';

                field("Head Professor"; Rec."Head Professor Name")
                {
                    Caption = 'Head Teacher', comment = 'ESP="Nombre del profesor coordinador"';
                    ApplicationArea = All;
                    Description = 'The name of the head professor coordinating the department.';
                }

                field("Office"; Rec."Assigned office")
                {
                    Caption = 'Office', comment = 'ESP="Oficina asignada"';
                    ApplicationArea = All;
                    Description = 'The assigned office for the department.';
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
                ApplicationArea = All;
                Description = 'View a list of teachers associated with this department.';
                RunObject = page "Teacher List";
                RunPageLink = "Department No." = field("No.");
                RunPageMode = View;
            }

            action("Browse - Coordinator")
            {
                Caption = 'Browse - Coordinator', comment = 'ESP="Navegar - Coordinador"';
                ApplicationArea = All;
                Description = 'View details of the head professor coordinating this department.';
                RunObject = page "Teacher List";
                RunPageLink = "No." = field("Head Professor No.");
                RunPageMode = View;
            }

            action("Courses of the Department")
            {
                Caption = 'Courses of the Department', comment = 'ESP="Cursos Departamento"';
                ApplicationArea = All;
                Description = 'View a list of courses offered by this department.';
                RunObject = page "Department - Course Subpage";
                RunPageLink = "Course provider No." = field("No.");
            }
        }
    }
}
