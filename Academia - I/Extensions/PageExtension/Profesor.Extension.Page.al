pageextension 50106 "Profesor Estension List" extends "Profesor List"
{
    layout
    {
        addafter("DEPARTAMENTO ASIGNADO: ")
        {
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