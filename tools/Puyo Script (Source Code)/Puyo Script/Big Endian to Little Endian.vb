Module Big_Endian_to_Little_Endian
    Function ReverseEndian(ByVal InNumb As Long) As Long

        Dim TheBytes(3) As Byte
        Dim Idx As Integer
        Dim RevNumb As Long

        ' Separate Number into Individual Bytes
        For Idx = 0 To 2
            TheBytes(Idx) = InNumb Mod 256
            InNumb = InNumb / 256
        Next Idx
        TheBytes(3) = InNumb Mod 256

        ' Recombine in Reverse Order
        RevNumb = TheBytes(0)
        RevNumb = (RevNumb * 256) + TheBytes(1)
        RevNumb = (RevNumb * 256) + TheBytes(2)
        RevNumb = (RevNumb * 256) + TheBytes(3)

        ReverseEndian = RevNumb

    End Function
End Module
