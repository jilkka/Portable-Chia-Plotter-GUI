<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Portable Chia Plotter
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$PortableChiaPlotter             = New-Object system.Windows.Forms.Form
$PortableChiaPlotter.ClientSize  = New-Object System.Drawing.Point(478,445)
$PortableChiaPlotter.text        = "Portable Chia Plotter"
$PortableChiaPlotter.TopMost     = $false
$PortableChiaPlotter.BackColor   = [System.Drawing.ColorTranslator]::FromHtml("#ededed")

$Groupbox2                       = New-Object system.Windows.Forms.Groupbox
$Groupbox2.height                = 216
$Groupbox2.width                 = 457
$Groupbox2.text                  = "Plotter Settings"
$Groupbox2.location              = New-Object System.Drawing.Point(8,163)

$KeyPanel                        = New-Object system.Windows.Forms.Panel
$KeyPanel.height                 = 103
$KeyPanel.width                  = 241
$KeyPanel.location               = New-Object System.Drawing.Point(201,105)

$tbTemp                          = New-Object system.Windows.Forms.TextBox
$tbTemp.multiline                = $false
$tbTemp.width                    = 335
$tbTemp.height                   = 20
$tbTemp.enabled                  = $false
$tbTemp.location                 = New-Object System.Drawing.Point(16,41)
$tbTemp.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$lblTemp                         = New-Object system.Windows.Forms.Label
$lblTemp.text                    = "Temp (Plotting) Storage"
$lblTemp.AutoSize                = $true
$lblTemp.width                   = 25
$lblTemp.height                  = 10
$lblTemp.location                = New-Object System.Drawing.Point(16,17)
$lblTemp.Font                    = New-Object System.Drawing.Font('Arial Rounded MT',10)

$Groupbox1                       = New-Object system.Windows.Forms.Groupbox
$Groupbox1.height                = 127
$Groupbox1.width                 = 456
$Groupbox1.text                  = "Chia Storage Locations"
$Groupbox1.location              = New-Object System.Drawing.Point(9,16)

$lblFinal                        = New-Object system.Windows.Forms.Label
$lblFinal.text                   = "Final (Farming) Storage"
$lblFinal.AutoSize               = $true
$lblFinal.width                  = 25
$lblFinal.height                 = 10
$lblFinal.location               = New-Object System.Drawing.Point(16,70)
$lblFinal.Font                   = New-Object System.Drawing.Font('Arial Rounded MT',10)

$tbFinal                         = New-Object system.Windows.Forms.TextBox
$tbFinal.multiline               = $false
$tbFinal.width                   = 335
$tbFinal.height                  = 20
$tbFinal.enabled                 = $false
$tbFinal.location                = New-Object System.Drawing.Point(16,93)
$tbFinal.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TempButton                      = New-Object system.Windows.Forms.Button
$TempButton.text                 = "Browse"
$TempButton.width                = 60
$TempButton.height               = 30
$TempButton.location             = New-Object System.Drawing.Point(363,36)
$TempButton.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$FinalButton                     = New-Object system.Windows.Forms.Button
$FinalButton.text                = "Browse"
$FinalButton.width               = 60
$FinalButton.height              = 30
$FinalButton.location            = New-Object System.Drawing.Point(363,85)
$FinalButton.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$btnStartPlot                    = New-Object system.Windows.Forms.Button
$btnStartPlot.text               = "Start Plotting"
$btnStartPlot.width              = 108
$btnStartPlot.height             = 30
$btnStartPlot.location           = New-Object System.Drawing.Point(351,400)
$btnStartPlot.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$btnStartPlot.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")

$btnEmergencyStop                = New-Object system.Windows.Forms.Button
$btnEmergencyStop.text           = "Emergency Stop"
$btnEmergencyStop.width          = 130
$btnEmergencyStop.height         = 30
$btnEmergencyStop.enabled        = $false
$btnEmergencyStop.location       = New-Object System.Drawing.Point(12,404)
$btnEmergencyStop.Font           = New-Object System.Drawing.Font('Arial',10,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Strikeout))
$btnEmergencyStop.BackColor      = [System.Drawing.ColorTranslator]::FromHtml("#ff0000")

$lblRAM                          = New-Object system.Windows.Forms.Label
$lblRAM.text                     = "RAM Allocation"
$lblRAM.AutoSize                 = $true
$lblRAM.width                    = 25
$lblRAM.height                   = 10
$lblRAM.location                 = New-Object System.Drawing.Point(11,40)
$lblRAM.Font                     = New-Object System.Drawing.Font('Arial',10,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$tbRAMAllocation                 = New-Object system.Windows.Forms.TextBox
$tbRAMAllocation.multiline       = $false
$tbRAMAllocation.width           = 100
$tbRAMAllocation.height          = 20
$tbRAMAllocation.location        = New-Object System.Drawing.Point(12,60)
$tbRAMAllocation.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ToolTip1                        = New-Object system.Windows.Forms.ToolTip

$lblCPU                          = New-Object system.Windows.Forms.Label
$lblCPU.text                     = "CPU Threads"
$lblCPU.AutoSize                 = $true
$lblCPU.width                    = 25
$lblCPU.height                   = 10
$lblCPU.location                 = New-Object System.Drawing.Point(12,90)
$lblCPU.Font                     = New-Object System.Drawing.Font('Arial',10,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$tbCPUThreads                    = New-Object system.Windows.Forms.TextBox
$tbCPUThreads.multiline          = $false
$tbCPUThreads.width              = 86
$tbCPUThreads.height             = 20
$tbCPUThreads.location           = New-Object System.Drawing.Point(12,110)
$tbCPUThreads.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$lblCPUThreadCount               = New-Object system.Windows.Forms.Label
$lblCPUThreadCount.AutoSize      = $true
$lblCPUThreadCount.width         = 25
$lblCPUThreadCount.height        = 10
$lblCPUThreadCount.location      = New-Object System.Drawing.Point(103,112)
$lblCPUThreadCount.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$lblCPUThreadCount.ForeColor     = [System.Drawing.ColorTranslator]::FromHtml("#9b9b9b")

$ToolTip2                        = New-Object system.Windows.Forms.ToolTip
$ToolTip2.ToolTipTitle           = "!~"
$ToolTip2.isBalloon              = $true

$lblNumPlots                     = New-Object system.Windows.Forms.Label
$lblNumPlots.text                = "Number of Plots for Queue"
$lblNumPlots.AutoSize            = $true
$lblNumPlots.width               = 25
$lblNumPlots.height              = 10
$lblNumPlots.location            = New-Object System.Drawing.Point(222,15)
$lblNumPlots.Font                = New-Object System.Drawing.Font('Arial',10,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$lblNumPlots.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$tbNumPlots                      = New-Object system.Windows.Forms.TextBox
$tbNumPlots.multiline            = $false
$tbNumPlots.width                = 66
$tbNumPlots.height               = 20
$tbNumPlots.location             = New-Object System.Drawing.Point(222,35)
$tbNumPlots.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$tbNumPlots.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$btnGetFarmKey                   = New-Object system.Windows.Forms.Button
$btnGetFarmKey.text              = "Get Farm Key"
$btnGetFarmKey.width             = 104
$btnGetFarmKey.height            = 30
$btnGetFarmKey.location          = New-Object System.Drawing.Point(6,26)
$btnGetFarmKey.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',8)
$btnGetFarmKey.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$btnPoolKey                      = New-Object system.Windows.Forms.Button
$btnPoolKey.text                 = "Get Pool Key"
$btnPoolKey.width                = 104
$btnPoolKey.height               = 30
$btnPoolKey.location             = New-Object System.Drawing.Point(6,61)
$btnPoolKey.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',8)
$btnPoolKey.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$btnSetFarmKey                   = New-Object system.Windows.Forms.Button
$btnSetFarmKey.text              = "Set Farm Key"
$btnSetFarmKey.width             = 104
$btnSetFarmKey.height            = 30
$btnSetFarmKey.location          = New-Object System.Drawing.Point(123,26)
$btnSetFarmKey.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',8)
$btnSetFarmKey.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$btnSetPoolKey                   = New-Object system.Windows.Forms.Button
$btnSetPoolKey.text              = "Set Pool Key"
$btnSetPoolKey.width             = 104
$btnSetPoolKey.height            = 30
$btnSetPoolKey.location          = New-Object System.Drawing.Point(123,60)
$btnSetPoolKey.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',8)
$btnSetPoolKey.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$lblActOnFullNode                = New-Object system.Windows.Forms.Label
$lblActOnFullNode.text           = "Action on Node"
$lblActOnFullNode.AutoSize       = $true
$lblActOnFullNode.width          = 25
$lblActOnFullNode.height         = 10
$lblActOnFullNode.location       = New-Object System.Drawing.Point(6,5)
$lblActOnFullNode.Font           = New-Object System.Drawing.Font('Arial',10,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$lblActOnPlotter                 = New-Object system.Windows.Forms.Label
$lblActOnPlotter.text            = "Action on Plotter"
$lblActOnPlotter.AutoSize        = $true
$lblActOnPlotter.width           = 25
$lblActOnPlotter.height          = 10
$lblActOnPlotter.location        = New-Object System.Drawing.Point(123,5)
$lblActOnPlotter.Font            = New-Object System.Drawing.Font('Arial',9.5,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$lblRAMTotal                     = New-Object system.Windows.Forms.Label
$lblRAMTotal.AutoSize            = $true
$lblRAMTotal.width               = 25
$lblRAMTotal.height              = 10
$lblRAMTotal.location            = New-Object System.Drawing.Point(118,63)
$lblRAMTotal.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$lblRAMTotal.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#9b9b9b")

$lblNumPlotsAvail                = New-Object system.Windows.Forms.Label
$lblNumPlotsAvail.AutoSize       = $true
$lblNumPlotsAvail.width          = 25
$lblNumPlotsAvail.height         = 10
$lblNumPlotsAvail.location       = New-Object System.Drawing.Point(290,38)
$lblNumPlotsAvail.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$lblNumPlotsAvail.ForeColor      = [System.Drawing.ColorTranslator]::FromHtml("#9b9b9b")

$lblVersion                      = New-Object system.Windows.Forms.Label
$lblVersion.AutoSize             = $true
$lblVersion.width                = 25
$lblVersion.height               = 10
$lblVersion.location             = New-Object System.Drawing.Point(11,15)
$lblVersion.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$lblVersion.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$ToolTip1.SetToolTip($lblRAM,'Amount of RAM to allocate to plotting Chia')
$PortableChiaPlotter.controls.AddRange(@($Groupbox2,$Groupbox1,$btnStartPlot,$btnEmergencyStop))
$Groupbox2.controls.AddRange(@($KeyPanel,$lblRAM,$tbRAMAllocation,$lblCPU,$lblNumPlots,$tbNumPlots,$lblRAMTotal,$lblCPUThreadCount,$lblNumPlotsAvail,$lblClVersion,$lblVersion,$tbCPUThreads))
$Groupbox1.controls.AddRange(@($tbTemp,$lblTemp,$lblFinal,$tbFinal,$TempButton,$FinalButton))
$KeyPanel.controls.AddRange(@($btnGetFarmKey,$btnPoolKey,$btnSetFarmKey,$btnSetPoolKey,$Label1,$lblActOnFullNode,$lblActOnPlotter))

$TempButton.Add_Click({ Set-TempFolder })
$FinalButton.Add_Click({ Set-FarmFolder })
$btnStartPlot.Add_Click({ Start-Plotting })
$btnEmergencyStop.Add_Click({ Stop-Plotting })
$PortableChiaPlotter.Add_Load({ Set-LockedParameters })
$btnGetFarmKey.Add_Click({ Get-FarmKey })
$btnPoolKey.Add_Click({ Get-PoolKey })
$btnSetFarmKey.Add_Click({ Set-FarmKey })
$btnSetPoolKey.Add_Click({ Set-PoolKey })


function Set-LockedParameters { 
    # CPU Thread Count
    $threads = $env:NUMBER_OF_PROCESSORS
    $lblCPUThreadCount.Text = "of $threads threads"
    
    # Total RAM
    $RAM = ([math]::Round((Get-WmiObject -Class Win32_ComputerSystem).TotalPhysicalMemory / 1MB)).ToString()
    $lblRAMTotal.Text = "of $RAM MB"
    
    # Get Client version number
    $lblVersion.Text = (gci $env:localappdata\chia-blockchain -Filter app* -directory).Name
    
    # Calculate Plot availability based on Free Space
    $disk = (("F:\chia_completed_plots").Split("\")[-2])
    $disk = Get-WmiObject -Class Win32_LogicalDisk | Where-Object {$_.DeviceID -eq $disk}
    $sAvail = [math]::Round((($disk.FreeSpace)/1GB))
    $pSize = 102
    $numPlotsAvail = [math]::Round($sAvail/$pSize)
    $lblNumPlotsAvail.Text = If ($numPlotsAvail -lt 2){
                                "Space for $numPlotsAvail plot"
                                 }
                             Else { "Space for $numPlotsAvail plots"}
}
function Set-PoolKey { 
    $poolKey = Get-Content -Path $PSScriptRoot\keys.txt | Select -Index 1
}
function Set-FarmKey { 
    $farmKey = Get-Content -Path $PSScriptRoot\keys.txt | Select -Index 0
}
function Get-FarmKey {
    $clientVersion = (gci $env:localappdata\chia-blockchain -Filter app* -directory).Name
    cd $ENV:LOCALAPPDATA\chia-blockchain\$clientVersion\resources\app.asar.unpacked\daemon\
    $keys = cmd /c .\chia.exe keys show
    $filter = "Farmer public key"
    $key = ($keys | Select-String -Pattern $filter -SimpleMatch).ToString()
    $farmKey = $key.Split(": ")[5]
    $farmKey | Out-File -FilePath $PSScriptRoot\keys.txt
    Write-host "Farmer Key Exported to $PSScriptRoot\keys.txt`n"
}
function Get-PoolKey { 
    $clientVersion = (gci $env:localappdata\chia-blockchain -Filter app* -directory).Name
    cd $ENV:LOCALAPPDATA\chia-blockchain\$clientVersion\resources\app.asar.unpacked\daemon\
    $keys = cmd /c .\chia.exe keys show
    $filter = "Pool public key"
    $key = ($keys | Select-String -Pattern $filter -SimpleMatch).ToString()
    $poolKey = $key.Split(": ")[5]
    $poolKey | Out-File -Append -FilePath $PSScriptRoot\keys.txt
    Write-host "Pool Key Exported to $PSScriptRoot\keys.txt`n"
}
function Stop-Plotting { 
    taskkill /IM "chia.exe"
}
function Start-Plotting { 
    $clientVersion = (gci $env:localappdata\chia-blockchain -Filter app* -directory).Name
    $RAMAllocation = $tbRAMAllocation.Text
    $CPUThreads = $tbCPUThreads.Text
    $TemporaryPlotStorage = $tbTemp.Text
    $CompletedPlotStorage = $tbFinal.Text
    $numPlots = $tbNumPlots.Text
    write-host "Plotting $numPlots plots to $CompletedPlotStorage with $CPUThreads threads and $RAMAllocation MB of RAM`n`n"
    cd $ENV:LOCALAPPDATA\chia-blockchain\$clientVersion\resources\app.asar.unpacked\daemon\
    .\chia.exe plots create -k 32 -b $RAMAllocation -u 128 -r $CPUThreads -t $TemporaryPlotStorage -d $CompletedPlotStorage -n $numPlots
}
function Set-FarmFolder { 
    $FarmFolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
    $FarmFolderBrowser.RootFolder = 'MyComputer'
    $FarmFolderBrowser.Description = 'Select Directory for Chia Plot Farming...'
    $null = $FarmFolderBrowser.ShowDialog()
    $CompletedPlotStorage = $FarmFolderBrowser.SelectedPath
    $tbFinal.text = "$CompletedPlotStorage"
}
function Set-TempFolder { 
    $TempFolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
    $TempFolderBrowser.RootFolder = 'MyComputer'
    $TempFolderBrowser.Description = 'Select Directory for Chia Plot Creation...'
    $null = $TempFolderBrowser.ShowDialog()
    $TemporaryPlotStorage = $TempFolderBrowser.SelectedPath
    $tbTemp.text = "$TemporaryPlotStorage"
}

function Set-NumPlots {
    $NumPlots = $tbNumPlots.Text
}

#Write your logic code here
[void]$PortableChiaPlotter.ShowDialog()