table 50108 "Secretary/Admon. Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.', comment = 'ESP="No."';
        }
        field(2; "Number of Students"; Integer)
        {
            Caption = 'Number of Students', comment = 'ESP="Número total de Estudiantes Matriculados"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Student);
        }
        field(3; "Lowest Fee Course"; Decimal)
        {
            Caption = 'Lowest Fee Course', comment = 'ESP="Curso con la Tarifa Más Baja"';
            FieldClass = FlowField;
            CalcFormula = min(Course."Course fee");
        }
        field(4; "Number of teachers"; Integer)
        {
            Caption = 'Number of teachers', comment = 'ESP="Número de profesores"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Teacher);
        }
    }

    keys
    {
        key(pk1; "No.")
        {
            Clustered = true;
        }
    }

}