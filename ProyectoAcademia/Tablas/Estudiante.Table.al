table 50103 Estudiante
{
    DataClassification = ToBeClassified;
    Caption = 'Estudiante';
    fields
    {
        field(1; "Id. Estudiante"; Integer) { DataClassification = ToBeClassified; }
        field(2; "Nombre Estudiante"; Text[50]) { }
        field(3; "Sexo Extudiante"; Option) { OptionMembers = "Masculino","Femenino"; }
        field(4; "Dirección Estudiante"; Text[50]) { }
        field(5; "Telfno. Estudiante"; Integer) { }
        field(6; "Fecha Nacimiento"; Date) { }
    }
    keys
    {
        key(pk1; "Id. Estudiante")
        {
            Clustered = true;
        }
    }
}