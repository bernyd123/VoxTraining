page 50500 "Training List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Training;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Course Number"; "Course Number")
                {
                    ApplicationArea = All;

                }

                field(Name; Name)
                {
                    ApplicationArea = All;
                }

                field(Revenue; Revenue)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}