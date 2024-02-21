page 50109 "Department CardPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Department;
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
                    ApplicationArea = All;
                }
                field("Name"; Rec.Name)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                }
                field("Average fees"; Rec."Average fees")
                {
                    Caption = 'Average fees', comment = 'ESP="Promedio de tarifas"';
                    ApplicationArea = All;
                }
                field("Number of teachers"; Rec."Number of teachers")
                {
                    Caption = 'Number of teachers', comment = 'ESP="Numero de profesores"';
                    ApplicationArea = All;
                }
            }
            group(Comunication)
            {
                Caption = 'Comunication', comment = 'ESP="Comunicación"';
                field("Head Professor"; Rec."Head Professor Name")
                {
                    Caption = 'Head Teacher', comment = 'ESP="Nombre del profesor coordinador"';
                    ApplicationArea = All;
                }
                field("Office"; Rec."Assigned office")
                {
                    Caption = 'Office', comment = 'ESP="Oficina asignada"';
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
                ApplicationArea = All;
                RunObject = page "Teacher List";
                RunPageLink = "No. Depart. Asign." = field("No.");
                RunPageMode = View;
            }
            action("Browse - Coordinator")
            {
                Caption = 'Browse - Coordinator', comment = 'ESP="Navegar - Coordinador"';
                ApplicationArea = All;
                RunObject = page "Teacher List";
                RunPageLink = "No." = field("Head Professor No.");
                RunPageMode = View;
            }
            action("Courses of the Department")
            {
                Caption = 'Courses of the Department', comment = 'ESP="Cursos Departamento"';
                ApplicationArea = All;
                RunObject = page "Department - Course Subpage";
                RunPageLink = "Course provider No." = field("No.");
                RunPageMode = View;
            }
        }
    }
}