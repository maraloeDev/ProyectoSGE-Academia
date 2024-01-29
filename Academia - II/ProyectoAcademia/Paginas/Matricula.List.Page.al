page 50104 "Matricula List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Matricula;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("ID: "; Rec."Id. Matricula")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("FECHAHORA MATRICULACIÓN: "; Rec."FechaHora Matricula")
                {
                    ApplicationArea = All;
                }
                /*
                                field("ESTUDIANTE: "; Rec."Nombre Estudiante Mtrldo.")
                                {
                                    ApplicationArea = All;
                                }

                                field("CURSO: "; Rec."Nombre Curso Mtrldo.")
                                {
                                    ApplicationArea = All;
                                }
                */
            }
        }
    }
}