page 50110 "Student CardPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Student;
    Caption = 'Student CardPage', comment = 'ESP="Ficha de Estudiante"';
    Description = 'This card page displays detailed information about a student.';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                Description = 'General information about the student.';

                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    ApplicationArea = All;
                    Description = 'The identification number of the student.';
                }

                field("Name"; Rec."Name")
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                    Description = 'The name of the student.';
                }

                field("Gender"; Rec."Gender")
                {
                    Caption = 'Gender', comment = 'ESP="Género"';
                    ApplicationArea = All;
                    Description = 'The gender of the student.';
                }

                field("Birthdate"; Rec."Birthdate")
                {
                    Caption = 'Birthdate', comment = 'ESP="Fecha de Nacimiento"';
                    ApplicationArea = All;
                    Description = 'The birthdate of the student.';
                }
            }

            group(Communication)
            {
                Caption = 'Communication', comment = 'ESP="Comunicación"';
                Description = 'Communication-related information for the student.';

                field("Address"; Rec."Address")
                {
                    Caption = 'Address', comment = 'ESP="Dirección"';
                    ApplicationArea = All;
                    Description = 'The address of the student.';
                }

                field("Phone"; Rec."Phone")
                {
                    Caption = 'Phone', comment = 'ESP="Teléfono"';
                    ApplicationArea = All;
                    Description = 'The phone number of the student.';
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
                ApplicationArea = All;
                Description = 'Create a new enrollment for this student.';
                RunObject = page "Registration List";
                RunPageMode = Create;
                Promoted = true;
            }

            action("Browse - Enrollments")
            {
                Caption = 'Browse - Enrollments', comment = 'ESP="Navegar - Matrículas"';
                ApplicationArea = All;
                Description = 'View enrollments for this student.';
                RunObject = page "Registration List";
                RunPageLink = "No. Student Enrolled" = field("No.");
                RunPageMode = View;
            }
        }
    }
}