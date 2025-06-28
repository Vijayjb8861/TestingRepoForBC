page 50102 CourseCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Course Information";
    PromotedActionCategories = ',,,Documents';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(CourseId; Rec.CourseId)
                {
                    Importance = Promoted;
                }
                field(CourseName; Rec.CourseName)
                {
                    Importance = Promoted;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field(CourseType; Rec.CourseType)
                {

                }


                field(Active; Rec.Active)
                {
                    Importance = Additional;
                }


                field(URL; Rec.URL)
                {
                    ShowMandatory = true;
                }
            }
            group(InstructorInfo)
            {
                field(Instructor; Rec.Instructor)
                {

                }
                field(Email; Rec.Email) { }
            }

            group(Pricing)
            {
                field(Price; Rec.Price)
                {

                }
            }
        }
        area(FactBoxes)
        {
            // part(AccntPayables; "Acc. Payables Activities")
            // {
            //     //to link between subpage and main page     SubPageLink = No = field(No);
            // }
            // part(PriceListLines; "Price List Lines")
            // {

            // }
            part(CustomerListPart; CustomerListPart)
            {

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(CustomerList)
            {
                Caption = 'Customer Document';
                Image = Report;
                Promoted = true;
                PromotedCategory = Category4;
                RunObject = report "Customer - List";



                trigger OnAction()
                begin
                    Message('action 1 is triggered');
                end;
            }
        }
        area(Reporting)
        {
            action(Vendors)
            {
                Image = Vendor;
                Promoted = true;
                PromotedCategory = Category4;
                RunObject = page "Vendor List";


                trigger OnAction()
                begin

                end;
            }
        }
        area(Navigation)
        {
            action(ActionName3)
            {

                trigger OnAction()
                begin
                    //the code that will be executed on the action button is clicked
                end;
            }
        }
        area(Creation)
        {
            action(ActionName4)
            {

                trigger OnAction()
                begin

                end;
            }
        }

    }

    var
        myInt: Integer;
}



