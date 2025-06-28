tableextension 50114 CustomerExt extends Customer
{

    DataCaptionFields = "E-Mail";
    LookupPageId = "Customer List";


    fields
    {
        // Add changes to table fields here
        field(50100; LinkedIn; Text[200])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
        field(50101; Twitter; Text[200])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
        // modify(Address)
        // {
        //     TableRelation = Customer;
        // }
        modify("E-Mail")
        {
            Caption = 'Email';
        }

    }

    keys
    {
        // Add changes to keys here
        key(SK38; LinkedIn)   //secondary keys
        {

        }
    }

    fieldgroups
    {
        // Add changes to field groups here
        addlast(DropDown; Address) { }

    }



    var
        myInt: Integer;
}



pageextension 50105 CustomerCardExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(Address)
        {
            field(LinkedIn; Rec.LinkedIn)
            {
                ApplicationArea = All;
            }
            field(Twitter; Rec.Twitter)
            {
                ApplicationArea = All;
            }
        }

        modify(Address)
        {
            Caption = 'Location';
            ShowMandatory = true;


        }
        modify(MobilePhoneNo)
        {
            Enabled = false;
        }
        // modify("Phone No.")
        // {
        //     tablerelation = "Country/Region";
        // }       

    }

    actions
    {
        // Add changes to page actions here
        addafter(ApplyTemplate)
        {
            action(Action1)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category19;
                trigger OnAction()
                begin
                end;
            }
        }

    }



    var
        myInt: Integer;
}




pageextension 50106 CustomerListExt5 extends "Customer List"
{


    layout
    {
        // Add changes to page layout here
        addafter(Name)
        {
            field(LinkedIn; Rec.LinkedIn)
            {
                ApplicationArea = All;
            }
            field(Twitter; Rec.Twitter)
            {
                ApplicationArea = All;
            }
        }

    }

    actions
    {
        // Add changes to page actions here
        addafter(ApplyTemplate)
        {
            action(MyCustomAction)
            {
                ApplicationArea = All;
                Image = Download;
                Promoted = true;
                PromotedCategory = Category15;

                trigger OnAction()
                begin
                    Message('Custom action is triggered');
                end;
            }
            action(ExportCustomerData)
            {
                ApplicationArea = All;
                Image = Export;
                Promoted = true;
                PromotedCategory = Category15;
                RunObject = xmlport 50100;

                trigger OnAction()
                begin

                end;
            }
            action(Import)
            {
                ApplicationArea = All;
                Image = Import;
                Promoted = true;
                PromotedCategory = Category15;
                RunObject = xmlport 50101;

                trigger OnAction()
                begin

                end;
            }
            action(UpdateAllNames)
            {
                ApplicationArea = All;
                Image = UpdateDescription;
                Promoted = true;
                PromotedCategory = Category15;
                RunObject = report ProcessOnlyReport;

                trigger OnAction()
                begin
                    
                end;
            }

        }
    }

    var
        myInt: Integer;
}