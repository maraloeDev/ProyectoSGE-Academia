page 50111 "Estudiante"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Student;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    ApplicationArea = All;
                    Editable = false;
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
            action("Acciones - Nueva matrícula")
            {
                ApplicationArea = All;
                RunObject = page "Registration List";
                //TODO que se pueda asignar un curso al alumno para hacer una matriculacion nueva
            }
            action("Navegar – Matrículas")
            {
                ApplicationArea = All;
                RunObject = page "Matricula CardPart";
                RunPageLink = "No. Student Enrolled" = field("No.");
            }
        }
    }

    var
        myInt: Integer;
}