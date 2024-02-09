page 50110 "Student CardPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Student;
    Caption = 'Student CardPage', comment = 'ESP="Estudiante CardPage"';
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
                    ApplicationArea = All;
                }
                field("Name"; Rec."Name")
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                }
                field("Gender"; Rec."Gender")
                {
                    Caption = 'Gender', comment = 'ESP="Género"';
                    ApplicationArea = All;
                }
                field("Birthdate"; Rec."Birthdate")
                {
                    Caption = 'Birthdate', comment = 'ESP="Fecha de nacimiento"';
                    ApplicationArea = All;
                }
            }
            group(Comunication)
            {
                Caption = 'Comunication', comment = 'ESP="Comunicación"';
                field("Address"; Rec."Adress")
                {
                    Caption = 'Address', comment = 'ESP="Dirección"';
                    ApplicationArea = All;
                }
                field("Phone"; Rec."Phone")
                {
                    Caption = 'Phone', comment = 'ESP="Teléfono"';
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
                Caption = 'Actions - New Enrolment', comment = 'ESP="Acciones - Nueva matrícula"';
                ApplicationArea = All;
                RunObject = page "Registration List";
                RunPageMode = Create;
                Promoted = true;
            }
            action("Browse - Enrollments")
            {
                Caption = 'Actions - New Enrolment', comment = 'ESP="Navegar - Matrículas"';
                ApplicationArea = All;
                RunObject = page "Registration List";
                RunPageLink = "No. Student Enrolled" = field("No.");
                RunPageMode = View;
            }
        }
    }
}