page 50118 "Non-teaching Shortlist"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Non-teaching staff";
    Caption = 'Non-teaching Shortlist', comment = 'ESP="Lista Corta de Personal No Docente"';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'Non-teaching Shortlist', comment = 'ESP="Lista Corta de Personal No Docente"';
                Description = 'This list part displays a shortlist of non-teaching staff.';

                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    ApplicationArea = All;
                    Description = 'The identification number of the staff member.';
                }

                field("Name"; Rec."Name")
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                    Description = 'The name of the staff member.';
                }

                field("Position"; Rec."Position")
                {
                    Caption = 'Position', comment = 'ESP="Puesto"';
                    ApplicationArea = All;
                    Description = 'The position or role of the staff member.';
                }

                field("Head Department Name"; Rec."Head of Studies Name")
                {
                    Caption = 'Head Department Name', comment = 'ESP="Nombre del Jefe de Departamento"';
                    ApplicationArea = All;
                    Description = 'The name of the head of the department where the staff member works.';
                }
            }
        }
    }
}