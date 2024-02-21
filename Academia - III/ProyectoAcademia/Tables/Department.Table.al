table 50101 "Department"
{
    DataClassification = ToBeClassified;
    Caption = 'Departement', comment = 'ESP="Departamento"';
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.', comment = 'ESP="No."';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Name"; Text[50])
        {
            Caption = 'Name', comment = 'ESP="Nombre"';
        }
        field(3; "Assigned office"; Text[50])
        {
            Caption = 'Assigned office', comment = 'ESP="Despacho asignado"';
        }
        field(4; "Head Professor No."; Integer)
        {
            Caption = 'Head Professor No.', comment = 'ESP="No. Jefe Depart."';
            TableRelation = Teacher."No.";
        }
        field(5; "Head Professor Name"; Text[50])
        {
            Caption = 'Head Professor Name', comment = 'ESP="Nombre Jefe Depart."';
            FieldClass = FlowField;
            CalcFormula = lookup(Teacher."Name" where("No." = field("Head Professor No.")));
        }
        field(6; "Average fees"; Decimal)
        {
            Caption = 'Average fees', comment = 'ESP="Promedio de tarifas"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average(Course."Course fee" where("Course provider No." = field("No.")));
        }
        field(7; "Number of teachers"; Integer)
        {
            Caption = 'Number of teachers', comment = 'ESP="Número de profesores"';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Teacher where("No. Depart. Asign." = field("No.")));
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