table 50103 Instructors
{
    DataClassification = ToBeClassified;
    LookupPageId = InstructorList;

    fields
    {
        field(1; InstructorID; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; InstructorName; Text[60])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Address; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; PhoneNo; Text[10])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        // key(Key1; MyField)
        // {
        //     Clustered = true;
        // }
    }

    fieldgroups
    {
        // Add changes to field groups here
        fieldgroup(DropDown; InstructorID,InstructorName){}
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

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



page 50103 InstructorList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Instructors;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(InstructorID; Rec.InstructorID)
                {

                }
                field(InstructorName; Rec.InstructorName)
                {

                }
                field(PhoneNo; Rec.PhoneNo)
                {

                }
                field(Address; Rec.Address)
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
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
}


