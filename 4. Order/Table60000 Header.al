table 60000 "MyDocument Header"
{
    DataClassification = ToBeClassified;
    DataCaptionFields = "No.", "Customer No.";

    fields
    {
        field(1; "Document Type"; Option)
        {
            OptionMembers = "Order;Invoice";
        }
        field(2; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Customer No."; Code[20])
        {
            TableRelation = Customer;
        }
    }

    keys
    {
        key(PK; "Document Type", "No.")
        {
            Clustered = true;
        }
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