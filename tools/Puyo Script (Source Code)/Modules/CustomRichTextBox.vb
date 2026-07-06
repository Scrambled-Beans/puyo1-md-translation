Imports System
Imports System.Windows.Forms
Imports System.Drawing
Imports System.Runtime.InteropServices
Imports System.Drawing.Printing

Public Class CustomRichTextBox
    Inherits RichTextBox

    <StructLayout(LayoutKind.Sequential)> _
      Private Structure STRUCT_RECT
        Public left As Int32
        Public top As Int32
        Public right As Int32
        Public bottom As Int32
    End Structure

    <StructLayout(LayoutKind.Sequential)> _
    Private Structure STRUCT_CHARRANGE
        Public cpMin As Int32
        Public cpMax As Int32
    End Structure

    <StructLayout(LayoutKind.Sequential)> _
    Private Structure STRUCT_FORMATRANGE
        Public hdc As IntPtr
        Public hdcTarget As IntPtr
        Public rc As STRUCT_RECT
        Public rcPage As STRUCT_RECT
        Public chrg As STRUCT_CHARRANGE
    End Structure

    <StructLayout(LayoutKind.Sequential)> _
    Private Structure STRUCT_CHARFORMAT
        Public cbSize As Integer
        Public dwMask As UInt32
        Public dwEffects As UInt32
        Public yHeight As Int32
        Public yOffset As Int32
        Public crTextColor As Int32
        Public bCharSet As Byte
        Public bPitchAndFamily As Byte
        <MarshalAs(UnmanagedType.ByValArray, SizeConst:=32)> _
        Public szFaceName As Char()
    End Structure

    <DllImport("user32.dll")> _
    Private Shared Function SendMessage(ByVal hWnd As IntPtr, _
                    ByVal msg As Int32, _
                    ByVal wParam As Int32, _
                    ByVal lParam As IntPtr) As Int32
    End Function

    Private Const WM_USER As Int32 = &H400&
    Private Const EM_FORMATRANGE As Int32 = WM_USER + 57

    ' Calculate or render the contents of our RichTextBox for printing
    '
    ' Parameter "measureOnly": If true, only the calculation is performed,
    '             otherwise the text is rendered as well
    ' Parameter "e": The PrintPageEventArgs object from the PrintPage event
    ' Parameter "charFrom": Index of first character to be printed
    ' Parameter "charTo": Index of last character to be printed
    ' Return value: (Index of last character that fitted on the page) + 1
    Public Function FormatRange(ByVal measureOnly As Boolean, _
                  ByVal e As PrintPageEventArgs, _
                  ByVal charFrom As Integer, _
                  ByVal charTo As Integer) As Integer
        ' Specify which characters to print
        Dim cr As STRUCT_CHARRANGE
        cr.cpMin = charFrom
        cr.cpMax = charTo

        ' Specify the area inside page margins
        Dim rc As STRUCT_RECT
        rc.top = HundredthInchToTwips(e.MarginBounds.Top)
        rc.bottom = HundredthInchToTwips(e.MarginBounds.Bottom)
        rc.left = HundredthInchToTwips(e.MarginBounds.Left)
        rc.right = HundredthInchToTwips(e.MarginBounds.Right)

        ' Specify the page area
        Dim rcPage As STRUCT_RECT
        rcPage.top = HundredthInchToTwips(e.PageBounds.Top)
        rcPage.bottom = HundredthInchToTwips(e.PageBounds.Bottom)
        rcPage.left = HundredthInchToTwips(e.PageBounds.Left)
        rcPage.right = HundredthInchToTwips(e.PageBounds.Right)

        ' Get device context of output device
        Dim hdc As IntPtr
        hdc = e.Graphics.GetHdc()

        ' Fill in the FORMATRANGE structure
        Dim fr As STRUCT_FORMATRANGE
        fr.chrg = cr
        fr.hdc = hdc
        fr.hdcTarget = hdc
        fr.rc = rc
        fr.rcPage = rcPage

        ' Non-Zero wParam means render, Zero means measure
        Dim wParam As Int32
        If measureOnly Then
            wParam = 0
        Else
            wParam = 1
        End If

        ' Allocate memory for the FORMATRANGE struct and
        ' copy the contents of our struct to this memory
        Dim lParam As IntPtr
        lParam = Marshal.AllocCoTaskMem(Marshal.SizeOf(fr))
        Marshal.StructureToPtr(fr, lParam, False)

        ' Send the actual Win32 message
        Dim res As Integer
        res = SendMessage(Handle, EM_FORMATRANGE, wParam, lParam)

        ' Free allocated memory
        Marshal.FreeCoTaskMem(lParam)

        ' and release the device context
        e.Graphics.ReleaseHdc(hdc)

        Return res
    End Function

    ' Convert between 1/100 inch (unit used by the .NET framework)
    ' and twips (1/1440 inch, used by Win32 API calls)
    '
    ' Parameter "n": Value in 1/100 inch
    ' Return value: Value in twips
    Private Function HundredthInchToTwips(ByVal n As Integer) As Int32
        Return Convert.ToInt32(n * 14.4)
    End Function

    ' Free cached data from rich edit control after printing
    Public Sub FormatRangeDone()
        Dim lParam As New IntPtr(0)
        SendMessage(Handle, EM_FORMATRANGE, 0, lParam)
    End Sub

    Public Sub PrintRichTextContents()
        Dim printDoc As New PrintDocument()
        AddHandler printDoc.BeginPrint, AddressOf printDoc_BeginPrint
        AddHandler printDoc.PrintPage, AddressOf printDoc_PrintPage
        AddHandler printDoc.EndPrint, AddressOf printDoc_EndPrint
        ' Document Name
        printDoc.DocumentName = form_AWDS.Print_File_Name
        ' Start printing process
        printDoc.Print()
    End Sub

    ' variable to trace text to print for pagination
    Private m_nFirstCharOnPage As Integer

    Private Sub printDoc_BeginPrint(ByVal sender As Object, _
      ByVal e As System.Drawing.Printing.PrintEventArgs)
        ' Start at the beginning of the text
        m_nFirstCharOnPage = 0
    End Sub

    Private Sub printDoc_PrintPage(ByVal sender As Object, _
      ByVal e As System.Drawing.Printing.PrintPageEventArgs)
        ' To print the boundaries of the current page margins
        ' uncomment the next line:
        ' e.Graphics.DrawRectangle(System.Drawing.Pens.Blue, e.MarginBounds)

        ' make the RichTextBoxEx calculate and render as much text as will
        ' fit on the page and remember the last character printed for the
        ' beginning of the next page
        m_nFirstCharOnPage = FormatRange(False, _
        e, _
        m_nFirstCharOnPage, _
        MyBase.TextLength)

        ' check if there are more pages to print
        If (m_nFirstCharOnPage < MyBase.TextLength) Then
            e.HasMorePages = True
        Else
            e.HasMorePages = False
        End If
    End Sub

    Private Sub printDoc_EndPrint(ByVal sender As Object, _
      ByVal e As System.Drawing.Printing.PrintEventArgs)
        ' Clean up cached information
        FormatRangeDone()
    End Sub

End Class
