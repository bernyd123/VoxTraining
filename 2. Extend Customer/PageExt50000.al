pageextension 50000 "Customer Card Car" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(Make; Make)
            {
                ApplicationArea = All;
            }
            field(Model; Model)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}