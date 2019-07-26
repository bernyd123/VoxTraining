table 60001 "MyDocument Lines"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document Type"; Option)
        {
            OptionMembers = "Order","Invoice";
        }
        field(2; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "MyDocument Header"."No." where ("Document Type" = field ("Document Type"));
        }
        field(3; "Line No."; Integer)
        {

        }
        field(4; Type; Option)
        {
            OptionMembers = "",Item,"G/L Account";
        }
        field(5; "No."; Code[20])
        {
            TableRelation = IF (Type = const ("")) "Standard Text"
            else
            if (Type = const ("Item")) Item
            ELSE
            IF (Type = const ("G/L Account")) "G/L Account";
        }
        field(6; Description; Text[50])
        {

        }
    }

    keys
    {
        key(PK; "Document Type", "Document No.", "Line No.")
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