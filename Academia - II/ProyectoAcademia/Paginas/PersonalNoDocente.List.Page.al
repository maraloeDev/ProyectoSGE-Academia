page 50105 "Personal No Docente List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = PersonalNoDocente;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("ID: "; Rec."Id. Personal")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("NOMBRE: "; Rec."Nombre Personal")
                {
                    ApplicationArea = All;
                }
                field("DIRECCIÓN: "; Rec."Dirección Personal")
                {
                    ApplicationArea = All;
                }
                field("SALARIO: "; Rec."Salario Personal")
                {
                    ApplicationArea = All;
                }
                field("PUESTO: "; Rec."Puesto Personal")
                {
                    ApplicationArea = All;
                }
                field("ID PROFESOR JEFE: "; Rec."Id. Prof. Jefe")
                {
                    ApplicationArea = All;
                }
                field("PROFESOR JEFE: "; Rec."Nombre Prof. Jefe")
                {
                    ApplicationArea = All;
                }

            }
        }
    }

}