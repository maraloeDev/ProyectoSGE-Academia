page 50101 "Departament List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Departamento;
    Caption = 'Departament', comment = 'ESP="Departamento"';

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
                    Caption = 'NAME', comment = 'ESP="NOMBRE"';
                }
                field("DESPACHO: "; Rec."Despacho Asign.")
                {
                    ApplicationArea = All;
                    Caption = 'OFFICE', comment = 'ESP="DESPACHO"';
                }
                field("ID PROF. JEFE:"; Rec."Id. Prof. Jefe")
                {
                    ApplicationArea = All;
                }
                field("PROF. JEFE:"; Rec."Nombre Prof. Jefe")
                {
                    ApplicationArea = All;
                    Caption = 'HEAD PROFESSOR', comment = 'ESP="PROF. JEFE"';
                }
                field("PROMEDIO TARIFAS: "; Rec."Promedio Tarifas")
                {
                    ApplicationArea = all;
                    Caption = 'AVERAGE RATES', comment = 'ESP="PROMEDIO TARIFAS"';
                }
            }
        }
    }
}