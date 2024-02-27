page 50103 "Registration List"
{
    PageType = List;
    SourceTable = Registration;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Registration List', comment = 'ESP="Lista de Matrículas"';
    Editable = true;
    CardPageId = "Registration CardPage";
    layout
    {
        area(content)
        {
            repeater(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    Tooltip = 'The unique identifier of the registration.', comment = 'ESP="El identificador único de la matrícula."';
                    ApplicationArea = All;
                }
                field("DATE/TIME REGISTRATION"; Rec."Date/Time Registration")
                {
                    Caption = 'DATE/TIME REGISTRATION', comment = 'ESP="FECHA MATRICULA"';
                    Tooltip = 'The date and time of the registration.', comment = 'ESP="La fecha y hora de la matrícula."';
                    ApplicationArea = All;
                }
                field("No. STUDENT ENROLLED"; Rec."No. Student Enrolled")
                {
                    Caption = 'No. STUDENT ENROLLED', comment = 'ESP="No. ESTUDIANTE MATRLADO."';
                    Tooltip = 'The identifier of the enrolled student.', comment = 'ESP="El identificador del estudiante matriculado."';
                    ApplicationArea = All;
                }
                field("No. COURSE ENROLLED"; Rec."No. Course Enrolled")
                {
                    Caption = 'No. COURSE ENROLLED', comment = 'ESP="No. CURSO MATRLADO."';
                    Tooltip = 'The identifier of the enrolled course.', comment = 'ESP="El identificador del curso matriculado."';
                    ApplicationArea = All;
                }
                field("NAME ENROLLED STUDENT"; Rec."Name Student Enrolled")
                {
                    Caption = 'NAME ENROLLED STUDENT', comment = 'ESP="NOMBRE ESTUDIANTE MATRLADO."';
                    Tooltip = 'The name of the enrolled student.', comment = 'ESP="El nombre del estudiante matriculado."';
                    ApplicationArea = All;
                }
                field("NAME ENROLLED COURSE"; Rec."Name Enrolled Course")
                {
                    Caption = 'NAME ENROLLED COURSE', comment = 'ESP="NOMBRE CURSO MATRLADO."';
                    Tooltip = 'The name of the enrolled course.', comment = 'ESP="El nombre del curso matriculado."';
                    ApplicationArea = All;
                }
            }
        }
    }
}