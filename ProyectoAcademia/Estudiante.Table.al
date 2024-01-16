table 50107 Estudiante
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Nombre"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Sexo"; Option)
        {
            OptionMembers = "Masculino","Femenino";
        }
        field(3; "Direccion"; Text[100])
        {

        }
        field(4; "Telefono"; Integer)
        {

        }
        field(5; "Fecha de nacimiento"; Date)
        {

        }
    }

    keys
    {
        key(pk1; "Nombre")
        {
            Clustered = true;
        }
    }
}