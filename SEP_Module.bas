Attribute VB_Name = "Module1"



Sub DeleteIrrevelentColuns()
Range("A1").Select

Do Until ActiveCell.Value = ""

    If ActiveCell.Value = "Pattern Date" _
        Or ActiveCell.Value = "Computer Name" _
        Or ActiveCell.Value = "Hardware Serial Number" _
        Or ActiveCell.Value = "Current User" _
        Or ActiveCell.Value = "Operating System" _
        Then

        ActiveCell.Offset(0, 1).Select

    Else

        ActiveCell.EntireColumn.Select
        Selection.Delete Shift:=xlToLeft
        Selection.End(xlUp).Select

    End If
Loop

End Sub

