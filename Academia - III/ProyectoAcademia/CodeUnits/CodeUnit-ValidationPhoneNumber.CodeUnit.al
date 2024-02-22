codeunit 50101 ValidatePhoneNumber
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;
    // En este procedimiento se valida que el número de teléfono sea correcto
    procedure ValidatePhoneNumber(PhoneNumber: Text[20]): Boolean
    var
        IsValid: Boolean;
        i: Integer;
    begin
        IsValid := true;
        if PhoneNumber = '' then begin
            IsValid := false;
        end
        else begin
            for i := 1 to StrLen(PhoneNumber) do begin
                if not (PhoneNumber[i] >= '0') and (PhoneNumber[i] <= '9') and (PhoneNumber[i] <> '-') then begin
                    IsValid := false;
                    exit;
                end;
            end;
        end;

        if IsValid then begin
            exit(IsValid);
        end else begin
            Message('The phone number you entered is incorrect. Check it out.');
        end;
    end;
}