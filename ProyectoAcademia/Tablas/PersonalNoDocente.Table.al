table 50108 "PersonalNoDocente"
{
    DataClassification = ToBeClassified;
    Caption = 'Personal No Docente';
    fields
    {
        field(1; "Id. Personal"; Integer) { DataClassification = ToBeClassified; }
        field(2; "Nombre Personal"; Text[50]) { }
        field(3; "Dirección Personal"; Text[50]) { }
        field(4; "Salario Personal"; Decimal) { }
        field(5; "Puesto Personal"; Text[50]) { }
        field(6; "Id. Prof. Jefe"; Integer) { TableRelation = Profesor."Id. Profesor"; }
    }
    keys
    {
        key(pk1; "Id. Personal")
        {
            Clustered = true;
        }
    }
    /*
    trigger OnValidate()
    begin
        if "Puesto Personal" = 'Ayudante' then
            field(6).Mandatory := true;
    end if;
    */
}