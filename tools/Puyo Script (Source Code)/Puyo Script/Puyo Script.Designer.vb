<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Puyo_Script
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.Menu_Strip = New System.Windows.Forms.MenuStrip()
        Me.File_Menu = New System.Windows.Forms.ToolStripMenuItem()
        Me.File_Open = New System.Windows.Forms.ToolStripMenuItem()
        Me.About_Tool = New System.Windows.Forms.ToolStripMenuItem()
        Me.Open_File = New System.Windows.Forms.OpenFileDialog()
        Me.Stage_Select = New System.Windows.Forms.ListBox()
        Me.Text_Output_1 = New System.Windows.Forms.RichTextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Text_Output_2 = New System.Windows.Forms.RichTextBox()
        Me.Menu_Strip.SuspendLayout()
        Me.SuspendLayout()
        '
        'Menu_Strip
        '
        Me.Menu_Strip.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.File_Menu, Me.About_Tool})
        Me.Menu_Strip.Location = New System.Drawing.Point(0, 0)
        Me.Menu_Strip.Name = "Menu_Strip"
        Me.Menu_Strip.Size = New System.Drawing.Size(850, 24)
        Me.Menu_Strip.TabIndex = 0
        Me.Menu_Strip.Text = "MenuStrip1"
        '
        'File_Menu
        '
        Me.File_Menu.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.File_Open})
        Me.File_Menu.Name = "File_Menu"
        Me.File_Menu.Size = New System.Drawing.Size(37, 20)
        Me.File_Menu.Text = "File"
        '
        'File_Open
        '
        Me.File_Open.Name = "File_Open"
        Me.File_Open.Size = New System.Drawing.Size(152, 22)
        Me.File_Open.Text = "Open"
        '
        'About_Tool
        '
        Me.About_Tool.Name = "About_Tool"
        Me.About_Tool.Size = New System.Drawing.Size(52, 20)
        Me.About_Tool.Text = "About"
        '
        'Open_File
        '
        Me.Open_File.FileName = "OpenFileDialog1"
        '
        'Stage_Select
        '
        Me.Stage_Select.Enabled = False
        Me.Stage_Select.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Stage_Select.FormattingEnabled = True
        Me.Stage_Select.ItemHeight = 20
        Me.Stage_Select.Location = New System.Drawing.Point(12, 27)
        Me.Stage_Select.Name = "Stage_Select"
        Me.Stage_Select.Size = New System.Drawing.Size(161, 464)
        Me.Stage_Select.TabIndex = 2
        '
        'Text_Output_1
        '
        Me.Text_Output_1.Font = New System.Drawing.Font("Arial Unicode MS", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Text_Output_1.Location = New System.Drawing.Point(179, 63)
        Me.Text_Output_1.Name = "Text_Output_1"
        Me.Text_Output_1.ReadOnly = True
        Me.Text_Output_1.ScrollBars = System.Windows.Forms.RichTextBoxScrollBars.ForcedBoth
        Me.Text_Output_1.Size = New System.Drawing.Size(329, 428)
        Me.Text_Output_1.TabIndex = 3
        Me.Text_Output_1.Text = ""
        Me.Text_Output_1.WordWrap = False
        '
        'Label1
        '
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(514, 30)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(329, 30)
        Me.Label1.TabIndex = 5
        Me.Label1.Text = "Script:"
        '
        'Label2
        '
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(179, 30)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(329, 30)
        Me.Label2.TabIndex = 6
        Me.Label2.Text = "Instructions:"
        '
        'Text_Output_2
        '
        Me.Text_Output_2.Font = New System.Drawing.Font("Arial Unicode MS", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Text_Output_2.Location = New System.Drawing.Point(514, 63)
        Me.Text_Output_2.Name = "Text_Output_2"
        Me.Text_Output_2.ReadOnly = True
        Me.Text_Output_2.ScrollBars = System.Windows.Forms.RichTextBoxScrollBars.ForcedBoth
        Me.Text_Output_2.Size = New System.Drawing.Size(329, 428)
        Me.Text_Output_2.TabIndex = 7
        Me.Text_Output_2.Text = ""
        Me.Text_Output_2.WordWrap = False
        '
        'Puyo_Script
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(850, 500)
        Me.Controls.Add(Me.Text_Output_2)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Text_Output_1)
        Me.Controls.Add(Me.Stage_Select)
        Me.Controls.Add(Me.Menu_Strip)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.MainMenuStrip = Me.Menu_Strip
        Me.MaximizeBox = False
        Me.Name = "Puyo_Script"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Puyo Puyo (Mega Drive) - Script Dumper"
        Me.Menu_Strip.ResumeLayout(False)
        Me.Menu_Strip.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Menu_Strip As MenuStrip
    Friend WithEvents File_Menu As ToolStripMenuItem
    Friend WithEvents File_Open As ToolStripMenuItem
    Friend WithEvents About_Tool As ToolStripMenuItem
    Friend WithEvents Open_File As OpenFileDialog
    Friend WithEvents Stage_Select As ListBox
    Friend WithEvents Text_Output_1 As RichTextBox
    Friend WithEvents Label1 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents Text_Output_2 As RichTextBox
End Class
