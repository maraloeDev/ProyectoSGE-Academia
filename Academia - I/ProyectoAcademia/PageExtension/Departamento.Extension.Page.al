pageextension 50101 "Departamento Extension List" extends "Departamento List"
{
    layout
    {
        addafter("PROF. JEFE:")
        {
            field("PROMEDIO TARIFAS: "; Rec."Promedio Tarifas")
            {
                ApplicationArea = all;
            }
        }
    }
}