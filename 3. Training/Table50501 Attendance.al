table 50501 Attendance
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Name; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Course Number"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Training;
        }
        field(3; Charge; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Name, "Course Number")
        {
            Clustered = true;
        }
        key(key2; "Course Number")
        {
            SumIndexFields = Charge;
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