report 50128 CustomerReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    WordLayout = 'CustomerReport.docx';
    DefaultLayout = Word;
    // DefaultRenderingLayout = Layout1;


    dataset
    {
        dataitem(Customer; Customer)
        {
            column(No_; "No.")
            {

            }
            column(Name; Name)
            {

            }
            column(Phone_No_; "Phone No.")
            {

            }
            column(E_Mail; "E-Mail")
            {

            }
            dataitem("Sales Header"; "Sales Header")
            {
                DataItemLink = "Sell-to Customer No." = field("No.");
                column(Amount; Amount)
                {

                }
            }
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
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
                action(LayoutName)
                {

                }
            }
        }
    }

    // rendering
    // {
    //     layout(Layout1)
    //     {
    //         Type = Excel;
    //         LayoutFile = 'mySpreadsheet.xlsx';
    //     }
    //     layout(Layout2)
    //     {
    //         Type = Word;
    //         LayoutFile = 'mySpreadsheet.docx';
    //     }
    //     layout(Layout3)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mySpreadsheet.rdlc';
    //     }
    //       layout(Layout4)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mySpreadsheet2.rdlc';
    //     }
        

        

    // }

    var
        myInt: Integer;
}



