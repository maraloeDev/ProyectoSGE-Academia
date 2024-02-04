page 50106 "Matricula: Registro de Alumno"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Student;
    Caption = 'Registration', comment = 'ESP="Matricula: Registro de Alumno"';
    layout
    {
        area(Content)
        {
            group(Student)
            {
                Caption = 'Student', comment = 'ESP="Estudiante"';
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
                field("Birthdate"; Rec."Birthdate")
                {
                    Caption = 'Birthdate', comment = 'ESP="Fecha de nacimiento"';
                    ApplicationArea = All;
                }
            }
            part("Courso"; "Course List")
            {
                Caption = 'Courso', comment = 'ESP="Curso"';
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}