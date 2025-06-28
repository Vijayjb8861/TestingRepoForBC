xmlport 50100 CustomerDataExport
{
    Direction = Export;
    Format = Xml;

    schema
    {
        textelement(CustomerData)
        {
            tableelement(Customer; Customer)
            {
                RequestFilterFields = "No.";
                fieldattribute(No; Customer."No.")
                {

                }
                fieldelement(Name; Customer.Name)
                {

                }
                fieldelement(Address; Customer.Address)
                {

                }
                fieldelement(Contact; Customer.Contact)
                {

                }
            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {

                    // }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {

                }
            }
        }
    }

    var
        myInt: Integer;
}




xmlport 50101 CustomerDataImport
{
    Direction = Import;
    Format = Xml;
    UseRequestPage = false;

    schema
    {
        textelement(CustomerData)
        {
            tableelement(Cust; Customer)
            {

                fieldattribute(No; Cust."No.")
                {

                }
                fieldelement(Name; Cust.Name)
                {

                }
                fieldelement(Address; Cust.Address)
                {

                }
                fieldelement(Contact; Cust.Contact)
                {

                }

                trigger OnBeforeInsertRecord()
                var
                    Customer: Record Customer;
                begin
                    if Customer.Get(Cust."No.") then
                        currXMLport.Skip();
                end;
            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {

                    // }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {

                }
            }
        }
    }

    var
        myInt: Integer;
}