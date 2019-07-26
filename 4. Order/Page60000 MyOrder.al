page 60000 MyOrder
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "MyDocument Header";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Customer No."; "Customer No.")
                {
                    ApplicationArea = All;

                }
            }
            part("MyOrder Lines"; "MyOrder Subform")
            {
                ApplicationArea = All;
                SubPageLink = "Document No." = field ("No.");
                UpdatePropagation = Both;
            }
            group(Testing)
            {
                field("No.2"; "No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}