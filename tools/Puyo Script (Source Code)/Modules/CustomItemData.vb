Module ItemData
    ' Stores values in ComboBoxes like in Visual Basic 6.0
    ' To add item data: ComboBox.Items.Add(New ValueDescriptionPair(15, "Text"))
    ' To get item data: CType(ComboBox.SelectedItem, ValueDescriptionPair).Value

    Public Class ValueDescriptionPair

        Public Value As Object
        Public Description As String

        Public Sub New(ByVal NewValue As Object, ByVal NewDescription As String)
            Value = NewValue
            Description = NewDescription
        End Sub

        Public Overrides Function ToString() As String
            Return Description
        End Function

    End Class
End Module
