[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

$mainform = New-Object System.Windows.Forms.Form
$mainform.Text = "Reminder"
$mainform.Size = New-Object System.Drawing.Size(300,150)
$mainform.StartPosition = "CenterScreen"
$mainform.FormBorderStyle = "FixedToolWindow"
$mainform.ShowInTaskbar = $false

$OKButton = New-Object System.Windows.Forms.Button
$OKButton.Location = New-Object System.Drawing.Size(75,120)
$OKButton.Size = New-Object System.Drawing.Size(70,24)
$OKButton.Text = "Done"
$OKButton.Add_Click({$x=$objTextBox.Text;$objForm.Close()})
$objForm.Controls.Add($OKButton)
