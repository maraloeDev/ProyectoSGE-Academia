table 50101 "Department"
{
    DataClassification = ToBeClassified;
    Caption = 'Departament', comment = 'ESP="Departamento"';
    DrillDownPageId = "Department List";
    LookupPageId = "Department List";
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.', comment = 'ESP="Número"';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Name"; Text[50])
        {
            Caption = 'Name', comment = 'ESP="Nombre"';
        }
        field(3; "Assigned office"; Text[50])
        {
            Caption = 'Assigned office', comment = 'ESP="Oficina asignada"';
        }
        field(4; "Head Professor No."; Integer)
        {
            Caption = 'Head Professor No.', comment = 'ESP="Número del Jefe de Departamento"';
            TableRelation = Teacher."No.";
        }
        field(5; "Head Professor Name"; Text[50])
        {
            Caption = 'Head Professor Name', comment = 'ESP="Nombre del Jefe de Departamento"';
            FieldClass = FlowField;
            CalcFormula = lookup(Teacher."Name" where("No." = field("Head Professor No.")));
        }
        field(6; "Average fees"; Decimal)
        {
            Caption = 'Average fees', comment = 'ESP="Tarifa Promedio"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average(Course."Course fee" where("Course provider No." = field("No.")));
        }
        field(7; "Number of teachers"; Integer)
        {
            Caption = 'Number of teachers', comment = 'ESP="Número de profesores"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Teacher where("Department No." = field("No.")));
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
