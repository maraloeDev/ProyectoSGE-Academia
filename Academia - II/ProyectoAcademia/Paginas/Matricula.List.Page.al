page 50104 "Matricula List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = tuition;

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
                field("ID ESTUDIANTE: "; Rec."Id. Estudte. Matrldo.")
                {
                    ApplicationArea = All;
                }
                field("ESTUDIANTE: "; Rec."Nombre Estudiante Mtrldo.")
                {
                    ApplicationArea = All;
                }
                field("ID CURSO: "; Rec."Id. Curso Matrldo.")
                {
                    ApplicationArea = All;
                }
                field("CURSO: "; Rec."Nombre Curso Mtrldo.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}