//create a table with ID 50119, name "Employee" and fields No, Name, Salary, Email
table 50119 "Employee4"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Salary; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Email; Text[200])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
        }
    }

    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
}