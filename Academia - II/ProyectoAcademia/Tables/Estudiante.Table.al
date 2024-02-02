table 50102 "Student"
{
    DataClassification = ToBeClassified;
    Caption = 'Student', comment = 'ESP="Estudiante"';
    fields
    {
        field(1; "Student No."; Integer)
        {
            Caption = 'Student No.', comment = 'ESP="Estudiante No."';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Student Name"; Text[50])
        {
            Caption = 'Student Name', comment = 'ESP="Nombre del Estudiante"';
        }
        field(3; "Student Gender"; Option)
        {
            Caption = 'Student Gender', comment = 'ESP="Genero del Estudiante"';
            OptionMembers = "Masculino","Femenino";
        }
        field(4; "Adress Student"; Text[50])
        {
            Caption = 'Adress Student', comment = 'ESP="Dirección del Estudiante"';
        }
        field(5; "Phone. Student"; Integer)
        {
            Caption = 'Phone. Student', comment = 'ESP="Teléfono del Estudiante"';
        }
        field(6; "Birthdate"; Date)
        {
            Caption = 'Birthdate', comment = 'ESP="Fecha de Nacimiento del Estudiante"';
        }
    }
    keys
    {
        key(pk1; "Student No.")
        {
            Clustered = true;
        }
    }
}