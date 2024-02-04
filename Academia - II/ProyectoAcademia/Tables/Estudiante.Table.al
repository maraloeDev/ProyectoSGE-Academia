table 50102 "Student"
{
    DataClassification = ToBeClassified;
    Caption = 'Student', comment = 'ESP="Estudiante"';
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'Student No.', comment = 'ESP="No."';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Name"; Text[50])
        {
            Caption = 'Student Name', comment = 'ESP="Nombre"';
        }
        field(3; "Gender"; Option)
        {
            Caption = 'Student Gender', comment = 'ESP="Genero"';
            OptionMembers = "MASC","FEM";
        }
        field(4; "Adress"; Text[50])
        {
            Caption = 'Student Adress', comment = 'ESP="Dirección"';
        }
        field(5; "Phone"; Integer)
        {
            Caption = 'Student Phone', comment = 'ESP="Teléfono"';
        }
        field(6; "Birthdate"; Date)
        {
            Caption = 'Birthdate', comment = 'ESP="Fecha de Nacimiento"';
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