page 50109 "Non-teaching staff CardPage"
{
    PageType = Card;

    UsageCategory = None;
    SourceTable = "Non-teaching staff";
    Caption = 'Non-teaching staff CardPage', comment = 'ESP="Página de Tarjeta de Personal No Docente"';
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("No."; Rec."No.")
                {
                    Caption = 'Number', comment = 'ESP="Número"';
                    Tooltip = 'The identification number of the non-teaching staff.', comment = 'ESP="El número de identificación del personal no docente."';
                    ApplicationArea = All;
                }
                field("Name"; Rec."Name")
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    Tooltip = 'The name of the non-teaching staff.', comment = 'ESP="El nombre del personal no docente."';
                    ApplicationArea = All;
                }

                field(Salary; Rec.Salary)
                {
                    Caption = 'Salary', comment = 'ESP="Salario"';
                    Tooltip = 'The salary of the non-teaching staff.', comment = 'ESP="El salario del personal no docente."';
                    ApplicationArea = All;
                }
                field(Position; Rec.Position)
                {
                    Caption = 'Position', comment = 'ESP="Posición"';
                    Tooltip = 'The position of the non-teaching staff.', comment = 'ESP="La posición del personal no docente."';
                    ApplicationArea = All;
                }
                field("Head of Studies No."; Rec."Head of Studies No.")
                {
                    Caption = 'Head of Studies Number', comment = 'ESP="Número de Jefe de Estudios"';
                    Tooltip = 'The identification number of the head of studies.', comment = 'ESP="El número de identificación del jefe de estudios."';
                    ApplicationArea = All;
                }
                field("Head of Studies Name"; Rec."Head of Studies Name")
                {
                    Caption = 'Head of Studies Name', comment = 'ESP="Nombre de Jefe de Estudios"';
                    Tooltip = 'The name of the head of studies.', comment = 'ESP="El nombre del jefe de estudios."';
                    ApplicationArea = All;
                }
            }
        }
    }
}