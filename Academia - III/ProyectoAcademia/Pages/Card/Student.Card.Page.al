page 50112 "Student CardPage"
{
    PageType = Card;
    SourceTable = Student;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Student CardPage', comment = 'ESP="Ficha de Estudiante"';
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    Tooltip = 'The identification number of the student.', comment = 'ESP="El número de identificación del estudiante."';
                    ApplicationArea = All;
                }

                field("Name"; Rec."Name")
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    Tooltip = 'The name of the student.', comment = 'ESP="El nombre del estudiante."';
                    ApplicationArea = All;
                }

                field("Gender"; Rec."Gender")
                {
                    Caption = 'Gender', comment = 'ESP="Género"';
                    Tooltip = 'The gender of the student.', comment = 'ESP="El género del estudiante."';
                    ApplicationArea = All;
                }

                field("Birthdate"; Rec."Birthdate")
                {
                    Caption = 'Birthdate', comment = 'ESP="Fecha de Nacimiento"';
                    Tooltip = 'The birthdate of the student.', comment = 'ESP="La fecha de nacimiento del estudiante."';
                    ApplicationArea = All;
                }
            }

            group(Communication)
            {
                Caption = 'Communication', comment = 'ESP="Comunicación"';
                field("Address"; Rec."Address")
                {
                    Caption = 'Address', comment = 'ESP="Dirección"';
                    Tooltip = 'The address of the student.', comment = 'ESP="La dirección del estudiante."';
                    ApplicationArea = All;
                }

                field("Phone"; Rec."Phone")
                {
                    Caption = 'Phone', comment = 'ESP="Teléfono"';
                    Tooltip = 'The phone number of the student.', comment = 'ESP="El número de teléfono del estudiante."';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Actions - New Enrolment")
            {
                Caption = 'Actions - New Enrolment', comment = 'ESP="Acciones - Nueva Matrícula"';
                Tooltip = 'Create a new enrollment for this student.', comment = 'ESP="Crear una nueva matrícula para este estudiante."';
                ApplicationArea = All;
                RunObject = page "Registration List";
                RunPageMode = Create;
                Promoted = true;
            }

            action("Browse - Enrollments")
            {
                Caption = 'Browse - Enrollments', comment = 'ESP="Navegar - Matrículas"';
                Tooltip = 'View enrollments for this student.', comment = 'ESP="Ver matrículas de este estudiante."';
                ApplicationArea = All;
                RunObject = page "Registration List";
                RunPageLink = "No. Student Enrolled" = field("No.");
                RunPageMode = View;
            }
        }
    }
}