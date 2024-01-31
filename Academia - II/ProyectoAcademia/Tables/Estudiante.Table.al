table 50103 Student
{
    DataClassification = ToBeClassified;
    Caption = 'STUDENT', comment = 'ESP="ESTUDIANTE"';
    fields
    {
        field(1; "Student No."; Integer)
        {
            Caption = 'STUDENT.ID', comment = 'ESP="ID. ESTUDIANTE"';
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Student Name"; Text[50])
        {
            Caption = 'STUDENT NAME', comment = 'ESP="NOMBRE DEL ESTUDIANTE"';
        }
        field(3; "Student Sex"; Option)
        {
            Caption = 'STUDENT SEX', comment = 'ESP="SEXO DEL ESTUDIANTE"';
            OptionMembers = "Masculino","Femenino";
        }
        field(4; "Adress Student"; Text[50])
        {
            Caption = 'STUDENT ADDRESS', comment = 'ESP="DIRECCIÓN DEL ESTUDIANTE"';
        }
        field(5; "Phone. Student"; Integer)
        {
            Caption = 'STUDENT PHONE', comment = 'ESP="TELÉFONO DEL ESTUDIANTE"';
        }
        field(6; "Birthdate"; Date)
        {
            Caption = 'STUDENT BIRTHDATE', comment = 'ESP="FECHA DE NACIMIENTO DEL ESTUDIANTE"';
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