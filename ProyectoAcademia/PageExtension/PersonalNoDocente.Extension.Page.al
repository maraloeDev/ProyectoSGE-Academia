pageextension 50105 "Personal No Docente Extension List" extends "Personal No Docente List"
{
    layout
    {
        addafter("SALARIO: ")
        {
            field("PROMEDIO TARIFAS: "; Rec.)
            {
                ApplicationArea = all;
            }
        }
    }
}