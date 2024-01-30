table 50103 Student
{
    DataClassification = ToBeClassified;
    Caption = 'STUDENT', comment = 'ESP="ESTUDIANTE"';
    fields
    {
        field(1; "Id. Estudiante"; Integer) { Caption = 'STUDENT.ID', comment = 'ESP="ID. ESTUDIANTE"'; AutoIncrement = true; Editable = false; }
        field(2; "Nombre Estudiante"; Text[50]) { Caption = 'STUDENT NAME', comment = 'ESP="NOMBRE DEL ESTUDIANTE"'; }
        field(3; "Sexo Extudiante"; Option)
        {
            Caption = 'STUDENT SEX', comment = 'ESP="SEXO DEL ESTUDIANTE"';
            OptionMembers = "Masculino","Femenino";
        }
        field(4; "Dirección Estudiante"; Text[50]) { Caption = 'STUDENT ADDRESS', comment = 'ESP="DIRECCIÓN DEL ESTUDIANTE"'; }
        field(5; "Telfno. Estudiante"; Integer) { Caption = 'STUDENT PHONE', comment = 'ESP="TELÉFONO DEL ESTUDIANTE"'; }
        field(6; "Fecha Nacimiento"; Date) { Caption = 'STUDENT BIRTHDATE', comment = 'ESP="FECHA DE NACIMIENTO DEL ESTUDIANTE"'; }
    }
    keys
    {
        key(pk1; "Id. Estudiante")
        {
            Clustered = true;
        }
    }
}