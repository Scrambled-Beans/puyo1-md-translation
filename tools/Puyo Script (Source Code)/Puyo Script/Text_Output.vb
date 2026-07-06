Module Text_Output
    Public Sub Text_Stage()
        Puyo_Script.Check_End = 1
        Puyo_Script.Add_Number = 1

        Puyo_Script.Max_Letters = 15
        Puyo_Script.Current_Letter = 0
        Puyo_Script.Last_Line = 0

        Do
            Puyo_Script.Test_Byte(1) = Puyo_Script.Copy_Bytes(Puyo_Script.Add_Number + 0)
            Puyo_Script.Test_Byte(2) = Puyo_Script.Copy_Bytes(Puyo_Script.Add_Number + 1)
            Puyo_Script.Test_Byte(3) = Puyo_Script.Copy_Bytes(Puyo_Script.Add_Number + 2)
            Puyo_Script.Test_Byte(4) = Puyo_Script.Copy_Bytes(Puyo_Script.Add_Number + 3)

            Call List_Instructions()
            Call Show_Text()

            Puyo_Script.Add_Number += 1

        Loop Until Puyo_Script.Check_End = 2
    End Sub

    Public Sub List_Instructions()
        Select Case Puyo_Script.Test_Byte(1)
            Case = &H0 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(0) : Puyo_Script.Current_Letter += 1
            Case = &H1 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(1) : Puyo_Script.Current_Letter += 1
            Case = &H2 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(2) : Puyo_Script.Current_Letter += 1
            Case = &H3 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(3) : Puyo_Script.Current_Letter += 1
            Case = &H4 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(4) : Puyo_Script.Current_Letter += 1
            Case = &H5 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(5) : Puyo_Script.Current_Letter += 1
            Case = &H6 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(6) : Puyo_Script.Current_Letter += 1
            Case = &H7 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(7) : Puyo_Script.Current_Letter += 1

            Case = &H8 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(8) : Puyo_Script.Current_Letter += 1
            Case = &H9 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(9) : Puyo_Script.Current_Letter += 1
            Case = &HA : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(10) : Puyo_Script.Current_Letter += 1
            Case = &HB : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(11) : Puyo_Script.Current_Letter += 1
            Case = &HC : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(12) : Puyo_Script.Current_Letter += 1
            Case = &HD : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(13) : Puyo_Script.Current_Letter += 1
            Case = &HE : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(14) : Puyo_Script.Current_Letter += 1
            Case = &HF : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(15) : Puyo_Script.Current_Letter += 1

            Case = &H10 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(16) : Puyo_Script.Current_Letter += 1
            Case = &H11 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(17) : Puyo_Script.Current_Letter += 1
            Case = &H12 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(18) : Puyo_Script.Current_Letter += 1
            Case = &H13 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(19) : Puyo_Script.Current_Letter += 1
            Case = &H14 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(20) : Puyo_Script.Current_Letter += 1
            Case = &H15 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(21) : Puyo_Script.Current_Letter += 1
            Case = &H16 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(22) : Puyo_Script.Current_Letter += 1
            Case = &H17 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(23) : Puyo_Script.Current_Letter += 1

            Case = &H18 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(24) : Puyo_Script.Current_Letter += 1
            Case = &H19 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(25) : Puyo_Script.Current_Letter += 1
            Case = &H1A : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(26) : Puyo_Script.Current_Letter += 1
            Case = &H1B : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(27) : Puyo_Script.Current_Letter += 1
            Case = &H1C : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(28) : Puyo_Script.Current_Letter += 1
            Case = &H1D : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(29) : Puyo_Script.Current_Letter += 1
            Case = &H1E : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(30) : Puyo_Script.Current_Letter += 1
            Case = &H1F : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(31) : Puyo_Script.Current_Letter += 1

            Case = &H20 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(32) : Puyo_Script.Current_Letter += 1
            Case = &H21 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(33) : Puyo_Script.Current_Letter += 1
            Case = &H22 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(34) : Puyo_Script.Current_Letter += 1
            Case = &H23 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(35) : Puyo_Script.Current_Letter += 1
            Case = &H24 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(36) : Puyo_Script.Current_Letter += 1
            Case = &H25 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(37) : Puyo_Script.Current_Letter += 1
            Case = &H26 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(38) : Puyo_Script.Current_Letter += 1
            Case = &H27 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(39) : Puyo_Script.Current_Letter += 1

            Case = &H28 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(40) : Puyo_Script.Current_Letter += 1
            Case = &H29 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(41) : Puyo_Script.Current_Letter += 1
            Case = &H2A : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(42) : Puyo_Script.Current_Letter += 1
            Case = &H2B : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(43) : Puyo_Script.Current_Letter += 1
            Case = &H2C : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(44) : Puyo_Script.Current_Letter += 1
            Case = &H2D : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(45) : Puyo_Script.Current_Letter += 1
            Case = &H2E : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(46) : Puyo_Script.Current_Letter += 1
            Case = &H2F : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(47) : Puyo_Script.Current_Letter += 1

            Case = &H30 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(48) : Puyo_Script.Current_Letter += 1
            Case = &H31 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(49) : Puyo_Script.Current_Letter += 1
            Case = &H32 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(50) : Puyo_Script.Current_Letter += 1
            Case = &H33 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(51) : Puyo_Script.Current_Letter += 1
            Case = &H34 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(52) : Puyo_Script.Current_Letter += 1
            Case = &H35 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(53) : Puyo_Script.Current_Letter += 1
            Case = &H36 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(54) : Puyo_Script.Current_Letter += 1
            Case = &H37 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(55) : Puyo_Script.Current_Letter += 1

            Case = &H38 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(56) : Puyo_Script.Current_Letter += 1
            Case = &H39 : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(57) : Puyo_Script.Current_Letter += 1
            Case = &H3A : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(58) : Puyo_Script.Current_Letter += 1
            Case = &H3B : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(59) : Puyo_Script.Current_Letter += 1
            Case = &H3C : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(60) : Puyo_Script.Current_Letter += 1
            Case = &H3D : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(61) : Puyo_Script.Current_Letter += 1
            Case = &H3E : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(62) : Puyo_Script.Current_Letter += 1
            Case = &H3F : Puyo_Script.Hex_To_Text = Puyo_Script.Letter(63) : Puyo_Script.Current_Letter += 1

            Case = &H80 ' End Text
                Puyo_Script.Hex_To_Text = "<End>"
                Puyo_Script.Check_End = 2

            Case = &H81 ' Frame Size and Position
                Puyo_Script.Hex_To_Text =
                    "<Frame Size=" & Microsoft.VisualBasic.Right("00" & Hex(Puyo_Script.Test_Byte(2)), 2) & " | YX=" _
                    & Microsoft.VisualBasic.Right("00" & Hex(Puyo_Script.Test_Byte(3)), 2) _
                    & " " & Microsoft.VisualBasic.Right("00" & Hex(Puyo_Script.Test_Byte(4)), 2) & ">"
                Puyo_Script.Add_Number += 3

                Puyo_Script.Max_Letters = &HF And Puyo_Script.Test_Byte(2)

                Puyo_Script.Last_Line = Puyo_Script.Test_Byte(2) >> 4
                Puyo_Script.Last_Line = &H7 And Puyo_Script.Last_Line

                Puyo_Script.Current_Letter = 0

            Case = &H82 ' New Frame
                Puyo_Script.Hex_To_Text = "<New Frame>"

            Case = &H83 ' Pause Text
                Puyo_Script.Hex_To_Text = "<Pause=" & Puyo_Script.Test_Byte(2) & ">"
                Puyo_Script.Add_Number += 1

            Case = &H84 ' Arle Animation
                Puyo_Script.Hex_To_Text = "<" & Puyo_Script.P1_Name & "=" & Puyo_Script.Test_Byte(2) & ">"
                Puyo_Script.Add_Number += 1

            Case = &H85 ' Enemy Animation
                Puyo_Script.Hex_To_Text = "<" & Puyo_Script.P2_Name & "=" & Puyo_Script.Test_Byte(2) & ">"
                Puyo_Script.Add_Number += 1

            Case = &H86 ' New Line
                Puyo_Script.Hex_To_Text = "<New Line>"
                Puyo_Script.Current_Letter = 0
                Puyo_Script.Last_Line += -1

            Case = &H87 ' Frame does not disappear
                Puyo_Script.Hex_To_Text = "<Same Frame>"
                Puyo_Script.Current_Letter = 0

            Case = &H89 ' Space
                Puyo_Script.Hex_To_Text = "　"

            Case Else : Puyo_Script.Hex_To_Text = "■"
        End Select

        Puyo_Script.Text_Output_1.Text += Puyo_Script.Hex_To_Text & vbNewLine
    End Sub

    Public Sub Show_Text()
        Select Case Puyo_Script.Test_Byte(1)
            Case Is <= &H3F

                Puyo_Script.Text_Output_2.Text += Puyo_Script.Hex_To_Text

                If Puyo_Script.Current_Letter = Puyo_Script.Max_Letters And Puyo_Script.Last_Line <> 1 Then
                    Puyo_Script.Text_Output_2.Text += vbCrLf
                    Puyo_Script.Current_Letter = 0
                    Puyo_Script.Last_Line += -1
                End If

            Case Is = &H89 : Puyo_Script.Text_Output_2.Text += "　"
            Case Is = &H86 : Puyo_Script.Text_Output_2.Text += vbNewLine
            Case Is = &H87 : Puyo_Script.Text_Output_2.Text += vbNewLine & vbNewLine
            Case Is = &H82 : Puyo_Script.Text_Output_2.Text += vbNewLine & vbNewLine

            Case Is = &H81
                Select Case Puyo_Script.Test_Byte(2)
                    Case Is <= &H8F : Puyo_Script.Text_Output_2.Text += Puyo_Script.P1_Name & ":" & vbNewLine
                    Case Is >= &H90 : Puyo_Script.Text_Output_2.Text += Puyo_Script.P2_Name & ":" & vbNewLine
                End Select
        End Select
    End Sub
End Module
