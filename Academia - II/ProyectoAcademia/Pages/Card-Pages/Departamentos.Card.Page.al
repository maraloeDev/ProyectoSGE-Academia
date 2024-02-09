page 50109 "Department CardPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Department;
    Caption = 'Department CardPage', comment = 'ESP="Departamento CardPage"';
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("No."; Rec."No.")
                {
                    Caption = 'No. Depart', comment = 'ESP="No. Departamento"';
                    ApplicationArea = All;
                }
                field("Name"; Rec.Name)
                {
                    Caption = 'Nombre del departamento', comment = 'ESP="Name Department"';
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
            action("Navegar - Profesores")
            {
                Caption = 'Browse - Teachers', comment = 'ESP="Navegar - Profesores"';
                ApplicationArea = All;
                RunObject = page "Teacher List";
                RunPageLink = "No. Depart. Asign." = field("No.");
                RunPageMode = View;
            }
            action("Navegar - Coordenador")
            {
                Caption = 'Browse - Coordinator', comment = 'ESP="Navegar - Coordinador"';
                ApplicationArea = All;
                RunObject = page "Teacher List";
                RunPageLink = "No." = field("Head Professor No.");
                RunPageMode = View;
            }
            action("Cursos del Departamento")
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