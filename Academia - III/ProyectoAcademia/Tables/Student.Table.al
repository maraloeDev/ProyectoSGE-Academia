table 50106 "Student"
{
    DataClassification = ToBeClassified;
    Caption = 'Student', comment = 'ESP="Estudiante"';
    DrillDownPageId = "Student List";
    LookupPageId = "Student List";
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'Student No.', comment = 'ESP="Número de Estudiante"';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Name"; Text[50])
        {
            Caption = 'Student Name', comment = 'ESP="Nombre"';
        }
        field(3; "Gender"; Option)
        {
            Caption = 'Student Gender', comment = 'ESP="Género"';
            OptionMembers = "M (♂)","F (♀)","NB","Unspecified","Other";
        }
        field(4; "Address"; Text[100])
        {
            Caption = 'Student Address', comment = 'ESP="Dirección"';
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
