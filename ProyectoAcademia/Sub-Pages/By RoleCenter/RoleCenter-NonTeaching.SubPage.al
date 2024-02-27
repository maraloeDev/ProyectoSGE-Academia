page 50120 "Non-teaching Shortlist"
{
    PageType = ListPart;
    SourceTable = "Non-teaching staff";
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Non-teaching Shortlist', comment = 'ESP="Lista Corta de Personal No Docente"';
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'Non-teaching Shortlist', comment = 'ESP="Lista Corta de Personal No Docente"';
                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    Tooltip = 'The identification number of the staff member.', comment = 'ESP="El número de identificación del miembro del personal."';
                    ApplicationArea = All;
                }

                field("Name"; Rec."Name")
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    Tooltip = 'The name of the staff member.', comment = 'ESP="El nombre del miembro del personal."';
                    ApplicationArea = All;
                }

                field("Position"; Rec."Position")
                {
                    Caption = 'Position', comment = 'ESP="Puesto"';
                    Tooltip = 'The position or role of the staff member.', comment = 'ESP="El puesto o rol del miembro del personal."';
                    ApplicationArea = All;
                }

                field("Head Department Name"; Rec."Head of Studies Name")
                {
                    Caption = 'Head Department Name', comment = 'ESP="Nombre del Jefe de Departamento"';
                    Tooltip = 'The name of the head of the department where the staff member works.', comment = 'ESP="El nombre del jefe del departamento donde trabaja el miembro del personal."';
                    ApplicationArea = All;
                }
            }
        }
    }
}