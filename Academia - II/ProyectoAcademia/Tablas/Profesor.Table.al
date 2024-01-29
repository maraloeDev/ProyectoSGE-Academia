table 50107 "Profesor"
{
    DataClassification = ToBeClassified;
    Caption = 'Profesor';
    fields
    {
        field(1; "Id. Profesor"; Integer) { AutoIncrement = true; }
        field(2; "Nombre Profesor"; Text[50]) { }
        field(3; "Dirección Profesor"; Text[50]) { }
        field(4; "Fecha Contratación"; Date) { }
        field(5; "Salario Profesor"; Decimal) { }
        field(6; "Id. Depart. Asign."; Integer) { TableRelation = Departamento."Id. Depart."; }
        field(7; "Nombre Deprt. Asign."; Text[50])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Departamento."Nombre Depart." where("Id. Depart." = field("Id. Depart. Asign.")));
        }

        // Campos calculados y filtros
        field(8; "Cantidad Ayudantes"; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(PersonalNoDocente where("Id. Prof. Jefe" = field("Id. Profesor")));
        }
        field(9; "Cantidad Cursos Imp."; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Curso where("Id. Prof. Impart." = field("Id. Profesor")));
        }
    }
    keys
    {
        key(pk1; "Id. Profesor")
        {
            Clustered = true;
        }
    }
}