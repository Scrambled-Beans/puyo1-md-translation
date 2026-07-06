Module STAGE_END
    Public Sub STAGE_END_1_TEXT()
        Puyo_Script.Check_End = 1
        Puyo_Script.Add_Number = 1

        Do
            Puyo_Script.Test_Byte(1) = Puyo_Script.STAGE_END_1(Puyo_Script.Add_Number + 0)
            Puyo_Script.Test_Byte(2) = Puyo_Script.STAGE_END_1(Puyo_Script.Add_Number + 1)
            Puyo_Script.Test_Byte(3) = Puyo_Script.STAGE_END_1(Puyo_Script.Add_Number + 2)
            Puyo_Script.Test_Byte(4) = Puyo_Script.STAGE_END_1(Puyo_Script.Add_Number + 3)

            Call STAGE_END_LETTERS()
            'Puyo_Script.Text_Output.Text += Puyo_Script.Hex_To_Text
            'Puyo_Script.Add_Number += 1
        Loop Until Puyo_Script.Test_Byte(1) = &HFF And Puyo_Script.Test_Byte(2) = &H0
    End Sub

    Public Sub STAGE_END_2_TEXT()
        Puyo_Script.Check_End = 1
        Puyo_Script.Add_Number = 1

        Do
            Puyo_Script.Test_Byte(1) = Puyo_Script.STAGE_END_2(Puyo_Script.Add_Number + 0)
            Puyo_Script.Test_Byte(2) = Puyo_Script.STAGE_END_2(Puyo_Script.Add_Number + 1)
            Puyo_Script.Test_Byte(3) = Puyo_Script.STAGE_END_2(Puyo_Script.Add_Number + 2)
            Puyo_Script.Test_Byte(4) = Puyo_Script.STAGE_END_2(Puyo_Script.Add_Number + 3)

            Call STAGE_END_LETTERS()
            'Puyo_Script.Text_Output.Text += Puyo_Script.Hex_To_Text
            Puyo_Script.Add_Number += 1
        Loop Until Puyo_Script.Test_Byte(1) = &HFF And Puyo_Script.Test_Byte(2) = &H0
    End Sub

    Public Sub STAGE_END_LETTERS()
        Select Case Puyo_Script.Test_Byte(1)
            Case = &H40 : Puyo_Script.Hex_To_Text = "い"
            Case = &H44 : Puyo_Script.Hex_To_Text = "う"
            Case = &H48 : Puyo_Script.Hex_To_Text = "か"
            Case = &H4C : Puyo_Script.Hex_To_Text = "く"
            Case = &H50 : Puyo_Script.Hex_To_Text = "こ"
            Case = &H54 : Puyo_Script.Hex_To_Text = "し"
            Case = &H58 : Puyo_Script.Hex_To_Text = "た"
            Case = &H5C : Puyo_Script.Hex_To_Text = "て"

            Case = &H60 : Puyo_Script.Hex_To_Text = "な"
            Case = &H64 : Puyo_Script.Hex_To_Text = "は"
            Case = &H68 : Puyo_Script.Hex_To_Text = "よ"
            Case = &H6C : Puyo_Script.Hex_To_Text = "わ"
            Case = &H70 : Puyo_Script.Hex_To_Text = "っ"
            Case = &H74 : Puyo_Script.Hex_To_Text = "ど"
            Case = &H78 : Puyo_Script.Hex_To_Text = "ぷ"
            Case = &H7C : Puyo_Script.Hex_To_Text = "。"

            Case = &H80 : Puyo_Script.Hex_To_Text = "「"
            Case = &H84 : Puyo_Script.Hex_To_Text = "」"
            Case = &H88 : Puyo_Script.Hex_To_Text = "・"
            Case = &H8C : Puyo_Script.Hex_To_Text = "！"
            Case = &H90 : Puyo_Script.Hex_To_Text = "勝"
            Case = &H94 : Puyo_Script.Hex_To_Text = "深"
            Case = &H98 : Puyo_Script.Hex_To_Text = "理"
            Case = &H9C : Puyo_Script.Hex_To_Text = "由"

            Case = &HA0 : Puyo_Script.Hex_To_Text = "地"
            Case = &HA4 : Puyo_Script.Hex_To_Text = "獄"
            Case = &HA8 : Puyo_Script.Hex_To_Text = "全"
            Case = &HAC : Puyo_Script.Hex_To_Text = "終"
            Case = &HB0 : Puyo_Script.Hex_To_Text = "■"
            Case = &HB4 : Puyo_Script.Hex_To_Text = "■"
            Case = &HB8 : Puyo_Script.Hex_To_Text = "■"
            Case = &HBC : Puyo_Script.Hex_To_Text = "■"

            Case = &HC0 : Puyo_Script.Hex_To_Text = "■"
            Case = &HC4 : Puyo_Script.Hex_To_Text = "■"
            Case = &HC8 : Puyo_Script.Hex_To_Text = "■"
            Case = &HCC : Puyo_Script.Hex_To_Text = "■"
            Case = &HD0 : Puyo_Script.Hex_To_Text = "■"
            Case = &HD4 : Puyo_Script.Hex_To_Text = "■"
            Case = &HD8 : Puyo_Script.Hex_To_Text = "■"
            Case = &HDC : Puyo_Script.Hex_To_Text = "■"

            Case = &HE0 : Puyo_Script.Hex_To_Text = "■"
            Case = &HE4 : Puyo_Script.Hex_To_Text = "■"
            Case = &HE8 : Puyo_Script.Hex_To_Text = "■"
            Case = &HEC : Puyo_Script.Hex_To_Text = "■"
            Case = &HF0 : Puyo_Script.Hex_To_Text = "■"
            Case = &HF4 : Puyo_Script.Hex_To_Text = "■"
            Case = &HF8 : Puyo_Script.Hex_To_Text = "■"
            Case = &HFC : Puyo_Script.Hex_To_Text = "■"

            Case Else : Puyo_Script.Hex_To_Text = ""
        End Select

        If Puyo_Script.Test_Byte(1) = &HFF And Puyo_Script.Test_Byte(2) = &H4 Then
            Puyo_Script.Hex_To_Text =
                vbNewLine & vbNewLine &
                "<Pause=" & Hex(Puyo_Script.Test_Byte(4)) & ">"
            Puyo_Script.Add_Number += 3
        End If

        If Puyo_Script.Test_Byte(1) = &HFF And Puyo_Script.Test_Byte(2) = &H8 Then
            Puyo_Script.Hex_To_Text =
                "<YX=" & Hex(Puyo_Script.Test_Byte(3)) & " " & Hex(Puyo_Script.Test_Byte(4)) & ">" _
                & vbNewLine
            Puyo_Script.Add_Number += 3
        End If
    End Sub
End Module
