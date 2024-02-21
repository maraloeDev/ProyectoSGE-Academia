page 50116 "Lista de profesor"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Teacher;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    ApplicationArea = All;
                }
                field("NAME"; Rec."Name")
                {
                    Caption = 'NAME', comment = 'ESP="NOMBRE"';
                    ApplicationArea = All;
                }
                field("NAME DEPRT. ASIGN."; Rec."Name Deprt. Asign.")
                {
                    Caption = 'NAME DEPRT. ASIGN.', comment = 'ESP="NOMBRE DEPARTAMENTO ASIGNADO"';
                    ApplicationArea = All;
                }
            }
        }
    }
}