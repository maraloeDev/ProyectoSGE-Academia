table 50107 Estudiante
{
    DataClassification = ToBeClassified;
    Caption = 'Estudiante';

    fields
    {
        field(1; "ID"; Text[50]) { DataClassification = ToBeClassified; }
        field(2; "NOMBRE"; Text[100]) { }
        field(3; "SEXO"; Option) { OptionMembers = "Masculino","Femenino"; }
        field(4; "DIRECCION"; Text[100]) { }
        field(5; "TELEFONO"; Integer) { }
        field(6; "FECHA DE NACIMIENTO"; Date) { }
        field(7; "idMatricula"; Integer) { TableRelation = Matricula."ID"; }
    }

    keys
    {
        key(pk1; "ID")
        {
            Clustered = true;
        }
    }
}