query 50130 CustomerSales
{
    QueryType = Normal;

    elements
    {
        dataitem(Customer; Customer)
        {
            /// DataItemTableFilter = "No." = const('10000');
            column(No_; "No.")
            {

            }
            column(Name; Name)
            {

            }
            column(Phone_No_; "Phone No.")
            {

            }
            column(Address; Address)
            {

            }
            filter(Date_Filter; "Date Filter")
            {

            }
            dataitem(SalesHeader; "Sales Header")
            {
                DataItemLink = "Sell-to Customer No." = Customer."No.";
                SqlJoinType = InnerJoin;
                column(Amount; Amount)
                {
                    Method = Sum;
                    ColumnFilter = Amount = filter(> 5000);
                }
                // column(OrderNo; "No.")
                // {

                // }
            }

        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin
        CurrQuery.SetFilter(CurrQuery.Date_Filter, '10.10.2020');
    end;
}


//query menthods

table 50107 CustomerSales
{
    DataClassification = ToBeClassified;

    fields
    {
        field(6; SlNo; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(1; No; code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; PhoneNo; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(4; address; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; amount; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        // key(pk; SlNo)
        // {
        //     Clustered = true;
        // }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    var
        noSeriesmgt: Codeunit NoSeriesManagement;
        noseries: Record "No. Series";
    begin
        if No = '' then begin
            // noSeriesmgt.InitSeries(SlNo,xRec.SlNo,0D,No,);
        end;
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}


page 50118 CustomerSalesData
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = CustomerSales;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                // field(SlNo; Rec.SlNo)
                // {

                // }
                field(No; Rec.No)
                {

                }
                field(Name; Rec.Name)
                {

                }
                field(address; Rec.address)
                {

                }
                field(amount; Rec.amount)
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
            action(ReadDatafromQuery)
            {
                Image = Database;
                // RunObject = query 50100;

                trigger OnAction()
                var
                    CustomerSalesQuery: Query CustomerSales;
                begin
                    CustomerSalesQuery.Open();

                    while CustomerSalesQuery.Read() do begin
                        //Message('No -%1 | Amount - %2', CustomerSalesQuery.No_, CustomerSalesQuery.Amount);
                        Rec.Init();
                        Rec.No := CustomerSalesQuery.No_;
                        Rec.Name := CustomerSalesQuery.Name;
                        Rec.address := CustomerSalesQuery.Address;
                        rec.amount := CustomerSalesQuery.Amount;
                        Rec.Insert();
                    end;

                    CustomerSalesQuery.Close();

                end;
            }
        }
    }
}