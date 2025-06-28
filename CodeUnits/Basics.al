codeunit 50101 CodeUnit1
{
    trigger OnRun()
    begin
        Message('OnRun trigger code');
    end;

    procedure addition(num1: Integer; num2: Integer): Integer
    var
        mysum: Integer;
    begin
        Message('MyProcedure1');
        mysum := num1 + num2;
        exit(mysum)
    end;

    procedure MyProcedure2()
    var
        myInt: Integer;
    begin
        Message('MyProcedure2');
    end;

    var
        myInt: Integer;
}