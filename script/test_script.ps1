[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 

$mainform = New-Object System.Windows.Forms.Form 
$mainform.Text = "Reminder"
$mainform.Size = New-Object System.Drawing.Size(300,150) 
$mainform.StartPosition = "CenterScreen"
$mainform.FormBorderStyle = "None"
$mainform.ShowInTaskbar = $false
$mainform.TopMost = $true
$mainform.KeyPreview = $true

$subform = New-Object System.Windows.Forms.Form
$subform.Size = New-Object System.Drawing.Size(300,150) 
$subform.StartPosition = "CenterScreen"
$subform.FormBorderStyle = "None"
$subform.BackColor = "DarkOrange"
$subform.ShowInTaskbar = $false
$subform.TopMost = $true
$subform.KeyPreview = $true
$sublabel = New-Object System.Windows.Forms.Label
$sublabel.Location = New-Object System.Drawing.Size(10,20) 
$sublabel.Size = New-Object System.Drawing.Size(280,20) 
$sublabel.Text = "Please enter the information in the space below:"
$subform.Controls.Add($objLabel) 


while($true)
{
    Start-Sleep -Seconds 3

    
    $mainform.Add_KeyDown({
        if($_.KeyCode -eq "Enter")
        {
            #progressbar
            $mainform.Dispose()
        }
    })
    $mainform.Add_KeyDown({
        if($_.KeyCode -eq "Escape")
        {
            $delay = $true
            $count = 1
            $mainform.Dispose()
            while($delay)
            {
                Start-Sleep -Seconds 2
                $subform.Text
                $subform.ShowDialog()

            }
              
        }
    })

    $mainform.ShowDialog()
}