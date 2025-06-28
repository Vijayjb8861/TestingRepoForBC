table 50104 "Course Information"
{
    DataClassification = ToBeClassified;
    Caption = 'Course Info';
    DataCaptionFields = CourseId, CourseName, Instructor;

    fields
    {
        field(1; CourseId; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; CourseName; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Price; Decimal)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if Rec.Price < 0 then
                    Error('Enter a positive value');
            end;
        }
        field(4; Instructor; code[20])
        {
            DataClassification = ToBeClassified;
            //Regular Table relation
            // TableRelation = Resource;

            //filtered table realation
            //TableRelation = Resource where(Type = const(Person));

            //Conditional table relation
            // TableRelation = if (CourseType = const(Online)) Resource where(Type = const(Person))
            // else if (CourseType = const(Offline)) Customer
            // else if (CourseType = const(SelfPaced)) Resource where(Type = const(Person));

            TableRelation = Customer;
        }
        field(5; CourseType; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Offline","Online","SelfPaced";
        }
        field(6; Active; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Email; Text[200])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;

            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if not Rec.Email.Contains('@') then
                    Error('Enter a valid email');
            end;
        }
        field(8; URL; Text[200])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
        field(9; AvgPrice; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = average("Course Information".Price);
        }
    }

    keys
    {
        key(PK; CourseId)       //primary key
        {
            Clustered = true;
        }
        key(SK1; CourseName)
        {

        }
        key(SK2; Instructor)
        {

        }

    }

    fieldgroups
    {
        // Add changes to field groups here
        fieldgroup(Brick; CourseName, CourseId, CourseType, Price, Instructor, URL) { }


    }

    var
        myInt: Integer;
        num2: text;
        CUstomerRef: Record Customer;

    trigger OnInsert()
    var
        localint: Integer;
    begin
        Message('Base code executed after a new record is inserted');    //PK
        localint := 10;
    end;

    trigger OnModify()
    begin
        Message('A record is modified');

    end;

    trigger OnDelete()
    begin
        Message('Record is deleted');
    end;

    trigger OnRename()
    begin
        Message('A record is renamed');   //PK
    end;

}



