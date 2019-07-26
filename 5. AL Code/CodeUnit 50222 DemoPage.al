page 50222 "Test Page"
{
    UsageCategory = Administration;
    ApplicationArea =;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(gvInt; gvInt)
                {
                    ApplicationArea = All;
                    Caption = 'Integer';
                }
                field(gvText; gvText)
                {
                    ApplicationArea = All;
                    Caption = 'Text Value';
                }
            }
            group("Record Variable")
            {
                field("No."; gvCust."No.")
                {
                    ApplicationArea = All;
                    Caption = 'No.';
                }
                field(Name; gvCust.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(Address; gvCust.Address)
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                }
                field(City; gvCust.City)
                {
                    ApplicationArea = All;
                    Caption = 'City';
                }
                field("<Control12>"; gvCust."Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Phone No.';
                }
                field(Balance; gvCust.Balance)
                {
                    ApplicationArea = All;
                    Caption = 'Balance';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Set Integer")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    gvInt := 10;
                end;
            }
            action("Set Text")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    gvText := 'THis is the value';
                end;
            }
        }
        area(reporting)
        {
            action(FINDFIRST)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    gvCust.FINDFIRST;
                end;
            }
            action(GET)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    gvCust.GET(gvInt);
                end;
            }
            action(FINDLAST)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    gvCust.FINDLAST;
                end;
            }
            action(DELETE)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    gvCust.DELETE;
                end;
            }
            action(DELETEALL)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    gvCust.DELETEALL;
                end;
            }
            action(NEXT)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    gvCust.NEXT;
                end;
            }
            action("NEXT(-1)")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    gvCust.NEXT(-1);
                end;
            }
            action(MODIFY)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    gvCust.MODIFY;
                end;
            }
            action(RENAME)
            {
                ApplicationArea = ALl;

                trigger OnAction()
                begin
                    gvCust.RENAME(gvInt);
                end;
            }
            action(INIT)
            {
                ApplicationArea = All;
                Caption = 'INIT';

                trigger OnAction()
                begin
                    gvCust.INIT;
                end;
            }
            action(RESETFILTER)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    gvCust.SETRANGE(gvCust.Address);
                end;
            }
            action(SETFILTER)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    gvCust.SETFILTER(gvCust.Address, '%1', gvText);
                end;
            }
            action(SETRANGE)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    gvCust.SETRANGE(gvCust.Address, gvText);
                end;
            }
            action(RUNFUNC)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    MESSAGE('The other value before is %1', gvText);
                    CalculateBalance(gvText);
                    MESSAGE('The other value after is %1', gvText);
                end;
            }
            action(CALCFIELDS)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    gvCust.CALCFIELDS(gvCust.Balance);
                end;
            }
        }
    }

    var
        gvInt: Integer;
        gvText: Text[50];
        gvCust: Record Customer;

    procedure CalculateBalance(var lvpText: Text[50])
    begin
        MESSAGE(lvpText);
        lvpText := 'This is modified in the function';
        MESSAGE('THe value in the function after modification is %1', lvpText);
    end;
}

