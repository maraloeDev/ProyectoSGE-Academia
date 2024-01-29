page 50106 "Profesor List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Profesor;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("ID: "; Rec."Id. Profesor")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("NOMBRE: "; Rec."Nombre Profesor")
                {
                    ApplicationArea = All;
                }
                field("DIRECCIÓN: "; Rec."Dirección Profesor")
                {
                    ApplicationArea = All;
                }
                field("FECHA DE CONTRATACION: "; Rec."Fecha Contratación")
                {
                    ApplicationArea = All;
                }
                field("SALARIO: "; Rec."Salario Profesor")
                {
                    ApplicationArea = All;
                }
                field("ID DEPART. ASIGN.: "; Rec."Id. Depart. Asign.")
                {
                    ApplicationArea = All;
                }
                field("DEPARTAMENTO ASIGNADO: "; Rec."Nombre Deprt. Asign.")
                {
                    ApplicationArea = All;
                }
                field("Nº AYUDANTES: "; Rec."Cantidad Ayudantes")
                {
                    ApplicationArea = All;
                }
                field("Nº CURSOS: "; Rec."Cantidad Cursos Imp.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}