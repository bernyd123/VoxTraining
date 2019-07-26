tableextension 50001 "Car Per Customer" extends Customer
{
    fields
    {
        field(50000; Make; Option)
        {
            OptionMembers = Ford,BMW,Mercedes;
            DataClassification = ToBeClassified;
        }
        field(50001; Model; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}