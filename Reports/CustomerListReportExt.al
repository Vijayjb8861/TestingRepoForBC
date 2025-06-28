reportextension 50121 CustomerListReportExt extends "Customer - List"
{
    dataset
    {
        // Add changes to dataitems and columns here
        add(Customer)
        {
            column(Address; Address)
            {

            }

        }
    }

    requestpage
    {
        // Add changes to the requestpage here
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'mylayout.rdl';
        }
    }
}