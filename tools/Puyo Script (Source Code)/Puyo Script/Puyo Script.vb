Public Class Puyo_Script
    Public Copy_Bytes(1000) As Byte

    Public LESSON_1(1000) As Byte
    Public LESSON_2(1000) As Byte
    Public LESSON_3(1000) As Byte
    Public LESSON_END(1000) As Byte
    Public STAGE_1(1000) As Byte
    Public STAGE_2(1000) As Byte
    Public STAGE_3(1000) As Byte
    Public STAGE_4(1000) As Byte
    Public STAGE_5(1000) As Byte
    Public STAGE_6(1000) As Byte
    Public STAGE_7(1000) As Byte
    Public STAGE_8(1000) As Byte
    Public STAGE_9(1000) As Byte
    Public STAGE_10(1000) As Byte
    Public STAGE_11(1000) As Byte
    Public STAGE_12(1000) As Byte
    Public STAGE_13(1000) As Byte
    Public STAGE_END_1(1000) As Byte
    Public STAGE_END_2(1000) As Byte
    Public HOW_TO_PLAY(1000) As Byte

    Public Store_Byte_1 As Byte
    Public Store_Byte_2 As Byte
    Public Store_Byte_3 As Byte
    Public Store_Byte_4 As Byte
    Public Store_Byte_5 As Byte
    Public Store_Byte_6 As Byte
    Public Store_Byte_7 As Byte
    Public Store_Byte_8 As Byte
    Public Store_Byte_9 As Byte
    Public Store_Byte_10 As Byte
    Public Store_Byte_11 As Byte
    Public Store_Byte_12 As Byte
    Public Store_Byte_13 As Byte
    Public Store_Byte_14 As Byte
    Public Store_Byte_15 As Byte
    Public Store_Byte_16 As Byte
    Public Store_Byte_17 As Byte
    Public Store_Byte_18 As Byte
    Public Store_Byte_19 As Byte

    Public Text_Pointer(99) As UInteger

    Public Add_Number As Long
    Public Test_Byte(4) As Byte
    Public Hex_To_Text As String
    Public Check_End As Byte

    Public Max_Letters As Byte
    Public Current_Letter As Byte
    Public Last_Line As Byte

    Public Offset_Address(99) As UInteger
    Public Offset_Text(99) As UInteger
    Public Offset_1 As Byte
    Public Offset_2 As Byte
    Public Offset_3 As Byte
    Public Offset_4 As Byte

    Public Letter(63) As String

    Public P1_Name As String = "Arle Nadje"
    Public P2_Name As String

    Private Sub Puyo_Script_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Stage_Select.Items.Add(New ValueDescriptionPair(1, "LESSON 1"))
        Stage_Select.Items.Add(New ValueDescriptionPair(2, "LESSON 2"))
        Stage_Select.Items.Add(New ValueDescriptionPair(3, "LESSON 3"))
        Stage_Select.Items.Add(New ValueDescriptionPair(4, "LESSON END"))
        Stage_Select.Items.Add(New ValueDescriptionPair(5, "STAGE 1"))
        Stage_Select.Items.Add(New ValueDescriptionPair(6, "STAGE 2"))
        Stage_Select.Items.Add(New ValueDescriptionPair(7, "STAGE 3"))
        Stage_Select.Items.Add(New ValueDescriptionPair(8, "STAGE 4"))
        Stage_Select.Items.Add(New ValueDescriptionPair(9, "STAGE 5"))
        Stage_Select.Items.Add(New ValueDescriptionPair(10, "STAGE 6"))
        Stage_Select.Items.Add(New ValueDescriptionPair(11, "STAGE 7"))
        Stage_Select.Items.Add(New ValueDescriptionPair(12, "STAGE 8"))
        Stage_Select.Items.Add(New ValueDescriptionPair(13, "STAGE 9"))
        Stage_Select.Items.Add(New ValueDescriptionPair(14, "STAGE 10"))
        Stage_Select.Items.Add(New ValueDescriptionPair(15, "STAGE 11"))
        Stage_Select.Items.Add(New ValueDescriptionPair(16, "STAGE 12"))
        Stage_Select.Items.Add(New ValueDescriptionPair(17, "STAGE 13"))

        Call Offsets_Text()
    End Sub

    Private Sub Stage_Select_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Stage_Select.SelectedIndexChanged
        Text_Output_1.Clear()
        Text_Output_2.Clear()
        Add_Number = 1

        Select Case CType(Stage_Select.SelectedItem, ValueDescriptionPair).Value
            Case Is = 1
                Do
                    Copy_Bytes(Add_Number) = LESSON_1(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Skeleton-T"
                Call Font_Lesson_1()
                Call Text_Stage()

            Case Is = 2
                Do
                    Copy_Bytes(Add_Number) = LESSON_2(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Nasu Grave"
                Call Font_Lesson_2()
                Call Text_Stage()

            Case Is = 3
                Do
                    Copy_Bytes(Add_Number) = LESSON_3(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Mummy"
                Call Font_Lesson_3()
                Call Text_Stage()

            Case Is = 4
                Do
                    Copy_Bytes(Add_Number) = LESSON_END(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Satan"
                Call Font_Lesson_End()
                Call Text_Stage()

            Case Is = 5
                Do
                    Copy_Bytes(Add_Number) = STAGE_1(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Draco Centauros"
                Call Font_Stage_1()
                Call Text_Stage()

            Case Is = 6
                Do
                    Copy_Bytes(Add_Number) = STAGE_2(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Suketoudara"
                Call Font_Stage_2()
                Call Text_Stage()

            Case Is = 7
                Do
                    Copy_Bytes(Add_Number) = STAGE_3(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Sukiyapodes"
                Call Font_Stage_3()
                Call Text_Stage()

            Case Is = 8
                Do
                    Copy_Bytes(Add_Number) = STAGE_4(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Harpy"
                Call Font_Stage_4()
                Call Text_Stage()

            Case Is = 9
                Do
                    Copy_Bytes(Add_Number) = STAGE_5(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Sasoriman"
                Call Font_Stage_5()
                Call Text_Stage()

            Case Is = 10
                Do
                    Copy_Bytes(Add_Number) = STAGE_6(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Panotty"
                Call Font_Stage_6()
                Call Text_Stage()

            Case Is = 11
                Do
                    Copy_Bytes(Add_Number) = STAGE_7(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Zombie"
                Call Font_Stage_7()
                Call Text_Stage()

            Case Is = 12
                Do
                    Copy_Bytes(Add_Number) = STAGE_8(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Witch"
                Call Font_Stage_8()
                Call Text_Stage()

            Case Is = 13
                Do
                    Copy_Bytes(Add_Number) = STAGE_9(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Zoh Daimaoh"
                Call Font_Stage_9()
                Call Text_Stage()

            Case Is = 14
                Do
                    Copy_Bytes(Add_Number) = STAGE_10(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Schezo Wegey"
                Call Font_Stage_10()
                Call Text_Stage()

            Case Is = 15
                Do
                    Copy_Bytes(Add_Number) = STAGE_11(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Minotauros"
                Call Font_Stage_11()
                Call Text_Stage()

            Case Is = 16
                Do
                    Copy_Bytes(Add_Number) = STAGE_12(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Rulue"
                Call Font_Stage_12()
                Call Text_Stage()

            Case Is = 17
                Do
                    Copy_Bytes(Add_Number) = STAGE_13(Add_Number)
                    Add_Number += 1
                Loop Until Add_Number = 1000

                P2_Name = "Satan"
                Call Font_Stage_13()
                Call Text_Stage()
        End Select
    End Sub

    Private Sub OpenToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles File_Open.Click
        If Open_File.ShowDialog <> DialogResult.Cancel Then ' Opens dialogue box | Exit code if Cancel is pressed
            Try ' Any errors, run error code

                FileOpen(1, Open_File.FileName, OpenMode.Binary, OpenAccess.Read) ' Opens file in Read mode

                Add_Number = 1

                Do
                    FileGet(1, Offset_1, Offset_Address(Add_Number) + 1)
                    FileGet(1, Offset_2, Offset_Address(Add_Number) + 2)
                    FileGet(1, Offset_3, Offset_Address(Add_Number) + 3)
                    FileGet(1, Offset_4, Offset_Address(Add_Number) + 4)

                    Offset_Text(Add_Number) = "&H" &
                    Microsoft.VisualBasic.Right("00" & Hex(Offset_1), 2) &
                    Microsoft.VisualBasic.Right("00" & Hex(Offset_2), 2) &
                    Microsoft.VisualBasic.Right("00" & Hex(Offset_3), 2) &
                    Microsoft.VisualBasic.Right("00" & Hex(Offset_4), 2)

                    Add_Number += 1

                Loop Until Add_Number = 18



                Add_Number = 1

                Do
                    FileGet(1, Store_Byte_1, Offset_Text(1) + 1)
                    FileGet(1, Store_Byte_2, Offset_Text(2) + 1)
                    FileGet(1, Store_Byte_3, Offset_Text(3) + 1)
                    FileGet(1, Store_Byte_4, Offset_Text(4) + 1)
                    FileGet(1, Store_Byte_5, Offset_Text(5) + 1)
                    FileGet(1, Store_Byte_6, Offset_Text(6) + 1)
                    FileGet(1, Store_Byte_7, Offset_Text(7) + 1)
                    FileGet(1, Store_Byte_8, Offset_Text(8) + 1)
                    FileGet(1, Store_Byte_9, Offset_Text(9) + 1)
                    FileGet(1, Store_Byte_10, Offset_Text(10) + 1)
                    FileGet(1, Store_Byte_11, Offset_Text(11) + 1)
                    FileGet(1, Store_Byte_12, Offset_Text(12) + 1)
                    FileGet(1, Store_Byte_13, Offset_Text(13) + 1)
                    FileGet(1, Store_Byte_14, Offset_Text(14) + 1)
                    FileGet(1, Store_Byte_15, Offset_Text(15) + 1)
                    FileGet(1, Store_Byte_16, Offset_Text(16) + 1)
                    FileGet(1, Store_Byte_17, Offset_Text(17) + 1)

                    LESSON_1(Add_Number) = Store_Byte_1
                    LESSON_2(Add_Number) = Store_Byte_2
                    LESSON_3(Add_Number) = Store_Byte_3
                    LESSON_END(Add_Number) = Store_Byte_4
                    STAGE_1(Add_Number) = Store_Byte_5
                    STAGE_2(Add_Number) = Store_Byte_6
                    STAGE_3(Add_Number) = Store_Byte_7
                    STAGE_4(Add_Number) = Store_Byte_8
                    STAGE_5(Add_Number) = Store_Byte_9
                    STAGE_6(Add_Number) = Store_Byte_10
                    STAGE_7(Add_Number) = Store_Byte_11
                    STAGE_8(Add_Number) = Store_Byte_12
                    STAGE_9(Add_Number) = Store_Byte_13
                    STAGE_10(Add_Number) = Store_Byte_14
                    STAGE_11(Add_Number) = Store_Byte_15
                    STAGE_12(Add_Number) = Store_Byte_16
                    STAGE_13(Add_Number) = Store_Byte_17

                    Add_Number += 1

                    Offset_Text(1) += 1
                    Offset_Text(2) += 1
                    Offset_Text(3) += 1
                    Offset_Text(4) += 1
                    Offset_Text(5) += 1
                    Offset_Text(6) += 1
                    Offset_Text(7) += 1
                    Offset_Text(8) += 1
                    Offset_Text(9) += 1
                    Offset_Text(10) += 1
                    Offset_Text(11) += 1
                    Offset_Text(12) += 1
                    Offset_Text(13) += 1
                    Offset_Text(14) += 1
                    Offset_Text(15) += 1
                    Offset_Text(16) += 1
                    Offset_Text(17) += 1

                Loop Until Add_Number = 1000

                FileClose(1)  ' Close the file

                Stage_Select.Enabled = True
                Stage_Select.SelectedIndex = 0

            Catch ex As Exception ' If an error occured (wrong file / file opened)
                FileClose(1)  ' Close the file
                Application.Exit() ' Close the tool
            End Try
        End If
    End Sub

    Private Sub About_Tool_Click(sender As Object, e As EventArgs) Handles About_Tool.Click
        MessageBox.Show("Puyo Puyo (Mega Drive) - Script Dumper" & vbNewLine & "by RadioTails", "About")
    End Sub

End Class


