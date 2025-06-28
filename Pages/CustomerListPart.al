page 50109 CustomerListPart
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Customer;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No.";Rec."No.")
                {
                    
                }
                field(Name;Rec.Name)
                {
                    
                }
                field(Balance;Rec.Balance)
                {
                    
                }
                field(Contact;Rec.Contact)
                {
                    
                }
            }
        }
      
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
}