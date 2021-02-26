add-type -AssemblyName microsoft.VisualBasic

add-type -AssemblyName System.Windows.Forms

$proc = Get-process BarTend
[Microsoft.VisualBasic.Interaction]::AppActivate($proc.Id)
foreach($line in Get-Content "\\profileserver\user-profiles`$\andrew.goode\Desktop\FrozenPIDs.txt") {
    if($line -match $regex){
        start-sleep -Milliseconds 1000
        [System.Windows.Forms.SendKeys]::SendWait("^p")
        start-sleep -Milliseconds 1000
        [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
	start-sleep -Milliseconds 1000
        [System.Windows.Forms.SendKeys]::SendWait($line)
        start-sleep -Milliseconds 1000
        [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
        start-sleep -Milliseconds 1500
        [System.Windows.Forms.SendKeys]::SendWait("1")
        start-sleep -Milliseconds 1000
        [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
	[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
        start-sleep -Milliseconds 500
    }
}   