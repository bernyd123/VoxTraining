table 50500 Training
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course Number"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Revenue; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = SUM (Attendance.Charge where ("Course Number" = field ("Course Number")));
            Editable=false;
        }
    }


    keys
    {
        key(PK; "Course Number")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Course Number", Name)
        {

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