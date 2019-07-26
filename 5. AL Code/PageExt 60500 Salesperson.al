pageextension 60500 SalespersonCode2 extends "Units of Measure"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast(Navigation)
        {
            action("Show Variables")
            {
                Image = Alerts;
                ApplicationArea = All;

                trigger OnAction()
                var
                    lvInteger: Integer;
                    lvDate: Date;
                    lvOption: Option Blue,Red,Green;

                Begin
                    lvInteger := 10;
                    lvDate := 20190725D;
                    lvOption := 0;
                    lvoption := lvOption::Green;

                    IF lvInteger <> 0 then BEGIN
                        Message('The value of lvinteger is %1', lvInteger);
                        Message('This iis statmeent 2 in a a compound statement');
                    END;


                    CASE true of
                        lvInteger > 0:
                            Message('THe value is positigve');
                        lvInteger = 0:
                            Message('The value is zero');
                        lvInteger < 0:
                            Message('The value is negative');
                    end;

                    Message('The value of lvDate is %1', lvDate);
                    Message('THe value of lvOption is %1', lvOption);

                    lvInteger := lvOption;
                    Message('The value of lvinteger is %1', lvInteger);

                End;
            }
            action(ToBeUsed)
            {
                ApplicationArea = All;
                RunObject = page "Attendance List";
            }
        }

    }

    var
        myInt: Integer;
}
