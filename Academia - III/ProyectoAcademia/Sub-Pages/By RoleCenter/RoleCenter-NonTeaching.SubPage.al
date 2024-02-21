page 50106 "Lista de Non-teaching"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Non-teaching staff";

    layout
    {
        area(Content)
        {
            repeater(General)
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
                field("POSITION"; Rec."Position")
                {
                    Caption = 'POSITION', comment = 'ESP="PUESTO"';
                    ApplicationArea = All;
                }
                field("HEAD DEPARTMENT NAME"; Rec."Head Studies Name")
                {
                    Caption = 'HEAD DEPARTMENT NAME', comment = 'ESP="NOMBRE JEFE DE DEPART."';
                    ApplicationArea = All;
                }
            }
        }
    }
}