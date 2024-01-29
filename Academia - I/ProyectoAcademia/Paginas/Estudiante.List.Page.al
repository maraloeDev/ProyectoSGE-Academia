page 50102 "Estudiante List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Estudiante;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("ID: "; Rec."Id. Estudiante")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("NOMBRE: "; Rec."Nombre Estudiante")
                {
                    ApplicationArea = All;
                }
                field("SEXO:"; Rec."Sexo Extudiante")
                {
                    ApplicationArea = All;
                }
                field("DIRECCIÓN: "; Rec."Dirección Estudiante")
                {
                    ApplicationArea = All;
                }
                field("TELÉFONO: "; Rec."Telfno. Estudiante")
                {
                    ApplicationArea = All;
                }
                field("FECHA DE NACIMIENTO: "; Rec."Fecha Nacimiento")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}