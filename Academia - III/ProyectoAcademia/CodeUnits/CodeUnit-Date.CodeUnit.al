codeunit 50100 "CodeUnit-Date"
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;

    procedure CheckIfAdult(Birthdate: Date): Boolean;
    var
        Age: Integer;
    begin
        Age := Today - Birthdate;

        if Age >= 6570 then // Sacado de internet, los dias para 18 years
            exit(true)
        else
            exit(false);
    end;
}