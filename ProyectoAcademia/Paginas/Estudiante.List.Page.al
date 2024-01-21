page 50107 "Estudiante"
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
                field("ID: "; Rec.ID)
                {
                    ApplicationArea = All;
                    Editable = false;

                }

                field("NOMBRE: "; Rec.Nombre)
                {
                    ApplicationArea = All;

                }

                field("SEXO:"; Rec.SEXO)
                {
                    ApplicationArea = All;

                }

                field("DIRECCIÓN: "; Rec.DIRECCION)
                {
                    ApplicationArea = All;
                }

                field("TELÉFONO: "; Rec.TELEFONO)
                {
                    ApplicationArea = All;
                }

                field("FECHA DE NACIMIENTO: "; Rec."FECHA DE NACIMIENTO")
                {
                    ApplicationArea = All;
                }

                field("idMatricula"; Rec.idMatricula)
                {
                    ApplicationArea = All;
                    Editable = false;
                }


            }
        }
    }
}