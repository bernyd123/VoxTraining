pageextension 50502 SalespersonExt extends "Salespersons/Purchasers"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast(Navigation)
        {
            action(Training)
            {
                ApplicationArea = All;
                RunObject = page "Training List";
            }
            action(Attendance)
            {
                ApplicationArea = All;
                RunObject = page "Attendance List";
            }
        }

    }

    var
        myInt: Integer;
}