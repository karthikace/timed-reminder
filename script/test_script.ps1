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

while($true)
{
    Start-Sleep -Seconds 3 #testing
    
    $mainform.Add_KeyDown({
        if($_.KeyCode -eq "Enter")
        {
         $form.Close()
        }
    })

    $mainform.ShowDialog()
}
