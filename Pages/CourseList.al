page 50101 CourseList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Course Information";  //it will show records in the table
    //SourceTableView = where(CourseType = const(Offline));
    CardPageId = CourseCard;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(CourseId; Rec.CourseId)
                {

                }
                field(CourseName; Rec.CourseName)
                {

                }
                field(CourseType; Rec.CourseType)
                {

                }

                field(Instructor; Rec.Instructor)
                {

                }
                field(Active; Rec.Active)
                {

                }
                field(Email; Rec.Email) { }
                field(URL; Rec.URL) { }
                field(AvgPrice; Rec.AvgPrice) { }
                field(Price; Rec.Price)
                {

                }


            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(addition)
            {

                trigger OnAction()
                var
                    codeunitref: Codeunit CodeUnit1;
                begin
                    codeunitref.addition(10, 20);
                    codeunitref.MyProcedure2()
                end;
            }
            action(Array)
            {

                trigger OnAction()
                var
                    myarray1: array[5] of Integer;   //declare

                    list1: List of [Text];

                    dictionary1: Dictionary of [text, text];

                    countries: List of [Text];

                    capitals: List of [Text];
                    item: Text;
                    i: Integer;

                begin
                    myarray1[1] := 10;
                    myarray1[2] := 20;
                    myarray1[3] := 30;
                    myarray1[4] := 40;
                    myarray1[5] := 50;

                    //   Message('The 3rd element in array is %1', myarray1[3]);

                    list1.Add('vijay ab');
                    list1.Add('taofik');
                    list1.Add('john');
                    list1.Add('taofik');

                    // Message('The length is %1', list1.Count);

                    // Message('%1', list1.IndexOf('taofik'));

                    // Message('%1', list1.LastIndexOf('taofik'));

                    //  Message('%1',list1.Get(3));  //john


                    dictionary1.Add('india', 'delhi');
                    dictionary1.Add('nigeria', 'abuja');
                    dictionary1.Add('usa', 'washington dc');

                    countries := dictionary1.Keys;

                    capitals := dictionary1.Values;

                    foreach item in countries do begin
                        Message(item);
                    end;


                    foreach item in capitals do begin
                        Message(item);
                    end;

                    for i := 1 to 5 do begin
                        //code
                    end;

                    for i := 10 downto 1 do begin
                        //code
                    end;

                    while i < 15 do begin
                        //code
                        i := i + 2;

                    end;

                    repeat
                    //code
                    until i < 10;




                    // Message('%1', dictionary1.Get('usa'));


                end;
            }
            action(AddCustomer)
            {

                trigger OnAction()
                begin
                    Rec.Init();
                    Rec.CourseId := 'Demo';
                    Rec.CourseName := 'Demo Course';
                    Rec.CourseType := Rec.CourseType::Online;
                    Rec.Email := 'abc@gmail.com';
                    Rec.Insert(true);



                end;
            }
            action(Rename)
            {
                trigger OnAction()
                begin
                    if Rec.Get('ABC3') then
                        Rec.Rename('COBAL');   //it always executes onrename
                end;
            }
            action(Modify)
            {
                trigger OnAction()
                begin
                    if Rec.Get('JAVA 2') then begin
                        Rec.CourseName := 'JAVA programming';
                        Rec.Modify(true);
                    end;
                end;
            }
            action(Delete)
            {
                trigger OnAction()
                begin
                    if Rec.Get('DEMO') then
                        Rec.Delete();
                end;
            }

            action(LoopthroughaRecord)
            {
                trigger OnAction()
                var
                    Customer: Record Customer;
                begin

                    if Customer.FindSet() then
                        repeat
                            Message('Customer No - %1 || Customer Name - %2', Customer."No.", Customer.Name);
                        until Customer.Next() = 0;

                end;
            }
        }
    }


    var
        myint: Integer;    //global variable

}



enum 50100 MYEColors
{
    Extensible = true;

    value(0; Red)
    {
    }
    value(1; Black)
    {
    }
    value(2; Blue)
    {

    }
}