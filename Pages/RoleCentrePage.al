pageextension 50108 BMRoleCentreExt extends "Business Manager Role Center"
{
    layout
    {
        // Add changes to page layout here
        addafter(Emails)
        {
            part(CLP; CustomerListPart)
            {
                ApplicationArea = All;
            }
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}