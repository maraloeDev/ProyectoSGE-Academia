table 50106 Horario
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Dia de la semana"; Option)
        {
            OptionMembers = "Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo";
            DataClassification = ToBeClassified;
        }
        field(2; "Hora de inicio"; Time)
        {

        }
        field(3; "Hora de fin"; Time)
        {

        }
    }

    keys
    {
        key(pk1; "Dia de la semana")
        {
            Clustered = true;
        }
    }
}