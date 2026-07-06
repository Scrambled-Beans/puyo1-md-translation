Public Class CustomGroupBox
    Inherits GroupBox

    Private _borderColor As Color

    Public Sub New()
        MyBase.New()
        Me._borderColor = Color.Black
    End Sub

    Public Property BorderColor() As Color
        Get
            Return Me._borderColor
        End Get
        Set(ByVal value As Color)
            Me._borderColor = value
        End Set
    End Property

    Protected Overrides Sub OnPaint(ByVal e As PaintEventArgs)
        Dim tSize As Size = TextRenderer.MeasureText(Me.Text, Me.Font)
        'Dim borderRect As Rectangle = e.ClipRectangle
        Dim borderRect As Rectangle = Me.ClientRectangle

        borderRect.Y = (borderRect.Y + (tSize.Height / 2))
        borderRect.Height = (borderRect.Height - (tSize.Height / 2))
        ControlPaint.DrawBorder(e.Graphics, borderRect, Me._borderColor, ButtonBorderStyle.Solid)

        'Dim textRect As Rectangle = e.ClipRectangle
        Dim textRect As Rectangle = Me.ClientRectangle
        textRect.X = (textRect.X + 6)
        textRect.Width = tSize.Width
        textRect.Height = tSize.Height
        e.Graphics.FillRectangle(New SolidBrush(Me.BackColor), textRect)

        e.Graphics.DrawString(Me.Text, Me.Font, New SolidBrush(Me.ForeColor), textRect)
    End Sub
End Class
