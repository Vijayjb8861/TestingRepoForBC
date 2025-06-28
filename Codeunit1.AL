codeunit 50100 MyCodeunit1
{
    trigger OnRun()
    begin
        Message('Onrun trigger');
    end;

    local procedure addition(num1 : Integer; num2 : Integer):Integer         //local procedure
    begin
        mysum := num1 + num2;
        exit(mysum)
    end;

    local procedure MyProcedure2()           //global procedure
    var
        myInt: Integer;
    begin
        
    end;



    
    var
        mysum: Integer;
}