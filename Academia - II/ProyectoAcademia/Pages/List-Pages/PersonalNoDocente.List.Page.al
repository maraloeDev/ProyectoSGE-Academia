page 50108 "Non-teaching staff Page"
{
    PageType = Card;
    SourceTable = "Non-teaching staff";
    Caption = 'NON-TEACHING STAFF PAGE', comment = 'ESP="PÁGINA DEL PERSONAL NO DOCENTE"';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Staff .Id"; Rec."Staff .Id")
                {
                    ApplicationArea = All;
                    Caption = 'STAFF ID', comment = 'ESP="ID. DEL PERSONAL"';
                }
                field("Staff Name"; Rec."Staff Name")
                {
                    ApplicationArea = All;
                    Caption = 'STAFF NAME', comment = 'ESP="NOMBRE DEL PERSONAL"';
                }
                field("Staff Managment"; Rec."Staff Managment")
                {
                    ApplicationArea = All;
                    Caption = 'STAFF MANAGEMENT', comment = 'ESP="DIRECCION DEL PERSONAL"';
                }
                field("Staff Salary"; Rec."Staff Salary")
                {
                    ApplicationArea = All;
                    Caption = 'STAFF SALARY', comment = 'ESP="SALARIO DEL PERSONAL"';
                }
                field("Staff Position"; Rec."Staff Position")
                {
                    ApplicationArea = All;
                    Caption = 'STAFF POSITION', comment = 'ESP="PUESTO DEL PERSONAL"';
                }
                field("Head Studies .Id"; Rec."Head Studies .Id")
                {
                    ApplicationArea = All;
                    Caption = 'HEAD OF STUDIES ID', comment = 'ESP="ID. JEFE DE ESTUDIOS"';
                }
                field("Head Studies Name"; Rec."Head Studies Name")
                {
                    ApplicationArea = All;
                    Caption = 'HEAD OF STUDIES NAME', comment = 'ESP="NOMBRE DEL JEFE DE ESTUDIOS"';
                }
            }
        }
    }
}