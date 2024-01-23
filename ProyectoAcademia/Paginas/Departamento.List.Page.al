page 50101 "Departamento List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Departamento;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("ID: "; Rec."Id. Depart.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("NOMBRE: "; Rec."Nombre Depart.")
                {
                    ApplicationArea = All;
                }
                field("DESPACHO: "; Rec."Despacho Asign.")
                {
                    ApplicationArea = All;
                }
                field("PROF. JEFE:"; Rec."Nombre Prof. Jefe")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}