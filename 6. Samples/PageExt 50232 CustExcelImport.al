pageextension 50101 PageExtension50100 extends "Customer List"
{
    actions
    {
        addafter(Sales_LineDiscounts)
        {
            action("Excel Import")
            {
                ApplicationArea = All;
                Image = Import;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    FileINStream: InStream;
                    lvFileName: Text[250];
                    lvSheetName: Text[250];

                begin
                    gvExcelBuffer.RESET;
                    gvExcelBuffer.DELETEALL;

                    If UploadIntoStream('Excel Import File', 'C:\Temp', 'All Files (*.*)|*.*', lvFileName, FileINStream) THEN begin
                        lvSheetName := gvExcelBuffer.SelectSheetsNameStream(FileINStream);
                        gvExcelBuffer.OpenBookStream(FileINStream, lvSheetName);
                        IF lvSheetName = '' THEN
                            EXIT;
                        gvExcelBuffer.ReadSheet();
                    end;

                    CheckData;

                    InsertData();

                    gvExcelBuffer.DELETEALL;
                end;
            }
        }
    }

    var
        gvExcelBuffer: Record "Excel Buffer" temporary;

    procedure MaxRows() MaxRow: Integer;
    begin
        MaxRow := 0;
        IF gvExcelBuffer.FINDSET THEN
            REPEAT
                IF gvExcelBuffer."Row No." > MaxRow THEN
                    MaxRow := gvExcelBuffer."Row No."
            UNTIL gvExcelBuffer.NEXT = 0;
    end;

    procedure CheckData()
    begin
        //This is where the code goes to check the data
    end;

    procedure InsertData()
    var
        K: Integer;

    begin

        for K := 2 TO MaxRows() DO begin

        end;
    end;
}