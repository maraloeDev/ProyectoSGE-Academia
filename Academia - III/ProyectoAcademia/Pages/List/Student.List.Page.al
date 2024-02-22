page 50105 "Student List"
{
    PageType = List;
    SourceTable = Student;
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Student List', comment = 'ESP="Lista de Estudiantes"';
    layout
    {
        area(content)
        {
            repeater(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="No."';
                    Tooltip = 'The unique identifier of the student.', comment = 'ESP="El identificador único del estudiante."';
                    ApplicationArea = All;
                }
                field("NAME"; Rec."Name")
                {
                    Caption = 'NAME', comment = 'ESP="ESTUDIANTE"';
                    Tooltip = 'The name of the student.', comment = 'ESP="El nombre del estudiante."';
                    ApplicationArea = All;
                }
                field("GENDER"; Rec."Gender")
                {
                    Caption = 'GENDER', comment = 'ESP="GENERO"';
                    Tooltip = 'The gender of the student.', comment = 'ESP="El género del estudiante."';
                    ApplicationArea = All;
                }
                field("ADDRESS"; Rec."Address")
                {
                    Caption = 'ADDRESS', comment = 'ESP="DIRECCIÓN"';
                    Tooltip = 'The address of the student.', comment = 'ESP="La dirección del estudiante."';
                    ApplicationArea = All;
                }
                field("PHONE"; Rec."Phone")
                {
                    Caption = 'PHONE', comment = 'ESP="TELÉFONO"';
                    Tooltip = 'The phone number of the student.', comment = 'ESP="El número de teléfono del estudiante."';
                    ApplicationArea = All;
                }
                field("BIRTHDATE"; Rec."Birthdate")
                {
                    Caption = 'BIRTHDATE', comment = 'ESP="FECHA DE NACIMIENTO"';
                    Tooltip = 'The birthdate of the student.', comment = 'ESP="La fecha de nacimiento del estudiante."';
                    ApplicationArea = All;
                }
            }
        }
    }
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
            Error('The phone number you entered is incorrect. Check it out.');
        end;
    end;

}