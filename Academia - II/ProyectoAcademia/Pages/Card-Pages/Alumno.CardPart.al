page 50108 "Student CardPart"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Student;
    layout
    {
        area(Content)
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
    }

    /*actions
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
        myInt: Integer;*/
}