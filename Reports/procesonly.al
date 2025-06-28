report 50105 ProcessOnlyReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;
    UseRequestPage = false;

    dataset
    {
        dataitem(Customer; Customer)
        {
            // column(ColumnName; SourceFieldName)
            // {

            // }


            trigger OnAfterGetRecord()    //it will run for every record retrived
            var
                myInt: Integer;
            begin
                if Customer."No." = '10000' then begin
                    Customer."E-Mail" := 'Adatum@gmail.com';
                    Customer.Modify();
                end;
            end;

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

    var
        myInt: Integer;
}