function Show-Choco-Menu {
    param(
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$Title,
    
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$ChocoInstall
    )
   
 do
 {
    Clear-Host
    Write-Host "================ $Title ================"
    Write-Host "Y: Press 'Y' to do this."
    Write-Host "N: Press 'N' to skip this."
	  Write-Host "M: Press 'M' to go back to the Menu."
	  Write-Host "Q: Press 'Q' to stop the entire script."
	  Write-Host "Once your choices have been made you will go back to the menu atomatically." 
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    'y' { choco install $ChocoInstall -y }
    'n' { Break }
    'm' { InstallMenu }
    'q' { Exit }
    }
 }
 until ($selection -match "y" -or $selection -match "n" -or $selection -match "m" -or $selection -match "q")
}

Function InstallTutsProgs {
    do
     {
        Clear-Host
        Write-Host "================ Chocolatey-Install (requiered!) ================"
        Write-Host "Y: Press 'Y' to do this."
        Write-Host "N: Press 'N' to skip this."
        $selection = Read-Host "Please make a selection"
        switch ($selection)
        {
        'y' { InstallChoco 
            InstallMenu }
        'n' { Exit }
        }
     }
 until ($selection -match "y" -or $selection -match "n")
}
	
Function InstallChoco {
	Write-Output "Installing Chocolatey"
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	choco install chocolatey-core.extension -y
}

Function InstallFirefox {
	Show-Choco-Menu -Title "Do you want to install Firefox?" -ChocoInstall "firefox"
}

Function Install7Zip {
	Show-Choco-Menu -Title "Do you want to install 7-Zip?" -ChocoInstall "7zip"
}

Function InstallNotepadplusplus {
	Show-Choco-Menu -Title "Do you want to install Notepad++?" -ChocoInstall "notepadplusplus"
}

Function InstallGeekuninstaller {
	Show-Choco-Menu -Title "Do you want to install GeekUninstaller?" -ChocoInstall "geekuninstaller"
}

Function InstallKeepassxc {
	Show-Choco-Menu -Title "Do you want to install KeepassXC?" -ChocoInstall "keepassxc"
}

Function InstallSumatrapdf {
	Show-Choco-Menu -Title "Do you want to install SumatraPDF?" -ChocoInstall "sumatrapdf"
}

Function InstallThunderbird {
	Show-Choco-Menu -Title "Do you want to install Thunderbird?" -ChocoInstall "thunderbird"
}

Function InstallAutoruns {
	Show-Choco-Menu -Title "Do you want to install Autoruns?" -ChocoInstall "autoruns"
}

Function InstallTeracopy {
	Show-Choco-Menu -Title "Do you want to install Teracopy?" -ChocoInstall "teracopy"
}

Function InstallMultiCommander {
	Show-Choco-Menu -Title "Do you want to install MultiCommander?" -ChocoInstall "mutlicommander"
}

Function InstallTotalCommander {
	Show-Choco-Menu -Title "Do you want to install TotalCommander?" -ChocoInstall "totalcommander"
}

Function InstallChocoCleaner {
	Show-Choco-Menu -Title "Do you want to install Choco-Cleaner?" -ChocoInstall "choco-cleaner"
}

Function InstallPowerToys {
	Show-Choco-Menu -Title "Do you want to install PowerToys?" -ChocoInstall "powertoys"
}

Function InstallUnetbootin {
	Show-Choco-Menu -Title "Do you want to install Unetbootin?" -ChocoInstall "unetbootin"
}

Function InstallVirtualBox {
	Show-Choco-Menu -Title "Do you want to install Virtualbox?" -ChocoInstall "virtualbox"
}

Function InstallPrime95 {
	Show-Choco-Menu -Title "Do you want to install Prime95?" -ChocoInstall "prime95"
}


Function InstallCpu-z {
	Show-Choco-Menu -Title "Do you want to install CPU-Z?" -ChocoInstall "cpu-z"
}

Function InstallHWMonitor {
	Show-Choco-Menu -Title "Do you want to install HWMonitor?" -ChocoInstall "hwmonitor"
}

Function InstallProcesshacker {
	Show-Choco-Menu -Title "Do you want to install Processhacker?" -ChocoInstall "processhacker"
}

Function InstallSysInternals {
	Show-Choco-Menu -Title "Do you want to install SysInternals?" -ChocoInstall "sysinternals"
}

Function InstallCrystalDiskInfo {
	Show-Choco-Menu -Title "Do you want to install CrystalDiskInfo?" -ChocoInstall "crystaldiskinfo"
}


Function InstallClaws-mail {
	Show-Choco-Menu -Title "Do you want to install Claws-Mail?" -ChocoInstall "claws-mail"
}

Function InstallMumble {
	Show-Choco-Menu -Title "Do you want to install Mumble?" -ChocoInstall "mumble"
}

Function InstallElement {
	Show-Choco-Menu -Title "Do you want to install Element?" -ChocoInstall "element-desktop"
}

Function InstallJami {
	Show-Choco-Menu -Title "Do you want to install Jami?" -ChocoInstall "jami"
}

Function InstallqTox {
	Show-Choco-Menu -Title "Do you want to install qTox?" -ChocoInstall "qtox"
}

Function InstallTeamSpeak {
	Show-Choco-Menu -Title "Do you want to install Teamspeak?" -ChocoInstall "teamspeak"
}


Function InstallImageglass {
	Show-Choco-Menu -Title "Do you want to install Imageglass?" -ChocoInstall "imageglass"
}

Function InstallIrfanview {
	Show-Choco-Menu -Title "Do you want to install Irfanview?" -ChocoInstall "irfanview"
}

Function InstallJpegView {
	Show-Choco-Menu -Title "Do you want to install JpegView?" -ChocoInstall "jpegview"
}

Function InstallFSviewer {
	Show-Choco-Menu -Title "Do you want to install FastStone Image Viewer?" -ChocoInstall "fsviewer"
}

Function InstallFoxitReader {
	Show-Choco-Menu -Title "Do you want to install FoxitReader?" -ChocoInstall "foxitreader"
}


Function InstallWinrar {
	Show-Choco-Menu -Title "Do you want to install Winrar?" -ChocoInstall "winrar"
}

Function InstallPeaZip {
	Show-Choco-Menu -Title "Do you want to install PeaZip?" -ChocoInstall "peazip"
}

Function InstallVLC {
	Show-Choco-Menu -Title "Do you want to install VLC?" -ChocoInstall "vlc"
}

Function InstallKLite {
	Show-Choco-Menu -Title "Do you want to install K-Lite Codec [Full]?" -ChocoInstall "k-litecodecpackfull"
}

Function InstallAudacity {
	Show-Choco-Menu -Title "Do you want to install Audacity?" -ChocoInstall "Audacity"
}

Function InstallKdenlive {
	Show-Choco-Menu -Title "Do you want to install Kdenlive?" -ChocoInstall "kdenlive"
}

Function InstallAvidemux{
	Show-Choco-Menu -Title "Do you want to install Avidemux?" -ChocoInstall "avidemux"
}

Function InstallShotcut{
	Show-Choco-Menu -Title "Do you want to install Shotcut?" -ChocoInstall "shotcut"
}



Function InstallObsStudio {
	Show-Choco-Menu -Title "Do you want to install OBS Studio?" -ChocoInstall "obs-studio"
}

Function InstallStreamlabsObs {
	Show-Choco-Menu -Title "Do you want to install Streamlabs?" -ChocoInstall "streamlabs-obs"
}

Function InstallCamstudio {
	Show-Choco-Menu -Title "Do you want to install Camstudio?" -ChocoInstall "camstudio"
}



Function InstallKrita {
	Show-Choco-Menu -Title "Do you want to install Krita?" -ChocoInstall "krita"
}

Function InstallPaintNet {
	Show-Choco-Menu -Title "Do you want to install Paint.Net?" -ChocoInstall "paint.net"
}

Function InstallGimp {
	Show-Choco-Menu -Title "Do you want to install Gimp?" -ChocoInstall "gimp"
}



Function InstallSublimetext3 {
	Show-Choco-Menu -Title "Do you want to install Sublime 3?" -ChocoInstall "sublimetext3"
}

Function InstallAtom {
	Show-Choco-Menu -Title "Do you want to install Atom?" -ChocoInstall "atom"
}

Function InstallBrackets {
	Show-Choco-Menu -Title "Do you want to install Brackets?" -ChocoInstall "brackets"
}



Function InstallNextcloud-Client {
	Show-Choco-Menu -Title "Do you want to install Nextcloud?" -ChocoInstall "nextcloud-client"
}

Function InstallSimplewall {
	Show-Choco-Menu -Title "Do you want to install Simplewall?" -ChocoInstall "simplewall"
}

Function InstallW10privacy {
	Show-Choco-Menu -Title "Do you want to install W10privacy?" -ChocoInstall "w10privacy"
}

Function InstallBleachbit {
	Show-Choco-Menu -Title "Do you want to install Bleachbit?" -ChocoInstall "bleachbit"
}

Function InstallPrivazer {
	Show-Choco-Menu -Title "Do you want to install Privazer?" -ChocoInstall "privazer"
}

Function InstallClamWin {
	Show-Choco-Menu -Title "Do you want to install Clamwin?" -ChocoInstall "clamwin"
}

Function InstallVeracrypt {
	Show-Choco-Menu -Title "Do you want to install Veracrypt?" -ChocoInstall "veracrypt"
}

Function InstallWireshark {
	Show-Choco-Menu -Title "Do you want to install Wireshark?" -ChocoInstall "wireshark"
}

Function InstallWireguard {
	Show-Choco-Menu -Title "Do you want to install Wireguard?" -ChocoInstall "wireguard"
}


Function InstallMenu {
        do
	{
	   Clear-Host
	   Write-Host "================ Choose a category to install from ================"
	   Write-Host "1: Press '1' for Recommended programs"
	   Write-Host "2: Press '2' for Configuration-/Multitools."
	   Write-Host "3: Press '3' for Info-Tools"
	   Write-Host "4: Press '4' for Communicative programs"
	   Write-Host "5: Press '5' for Imageview/tools"
	   Write-Host "6: Press '6' for Media programs"
	   Write-Host "7: Press '7' for Screenrecording programs"
	   Write-Host "8: Press '8' for Painting-Tools"
	   Write-Host "9: Press '9' for Texteditor programs"
	   Write-Host "10: Press '10' for Privacy&Security-Tools"
	   Write-Host "11: Press 'S' to skip the installation steps."
	   $selection = Read-Host "Please make a selection"
	   switch ($selection)
	   {
		'1' { 
				InstallFirefox
				Install7Zip
				InstallNotepadplusplus
				InstallGeekuninstaller
				InstallKeepassxc
				InstallSumatrapdf
				InstallThunderbird
				InstallMenu 
			}

		'2' { 
				InstallTutsProgs
				InstallAutoruns
				InstallTeracopy
				InstallMultiCommander
				InstallTotalCommander
				InstallChocoCleaner
				InstallPowerToys
				InstallUnetbootin
				InstallVirtualBox
				InstallPrime95
				InstallMenu 
			}


		'3' { 
				InstallCpu-z
				InstallHWMonitor
				InstallProcesshacker
				InstallSysInternals
				InstallCrystalDiskInfo
				InstallMenu 
			}
	     
		'4' { 
				InstallClaws-mail
				InstallMumble
				InstallElement
				InstallJami
				InstallqTox
				InstallTeamSpeak
				InstallMenu 
			}

		'5' {  
		        InstallImageglass     
				InstallIrfanview
				InstallJpegView
				InstallFSviewer
				InstallFoxitReader
				InstallMenu 
			}

		'6' { 
		        InstallWinrar     
				InstallPeaZip
				InstallVLC
				InstallKLite
				InstallAudacity
				InstallKdenlive
				InstallAvidemux
				InstallShotcut
				InstallMenu 
			}
		
		'7' { 
				InstallObsStudio
				InstallStreamlabsObs
				InstallCamstudio
				InstallMenu
			}

		'8' { 
				InstallKrita
				InstallPaintNet
				InstallGimp
				InstallMenu
			}

		'9' { 
		        InstallSublimetext3     				  
				InstallAtom
				InstallBrackets
				InstallMenu 
			}
			
		'10' { 
		        InstallNextcloud-Client         
				InstallSimplewall
				InstallW10privacy
				InstallBleachbit
				InstallClamWin
				InstallPrivazer
				InstallVeracrypt
				InstallWireshark
				InstallWireguard
				InstallMenu 
			}

		'S' { Exit }
	   }
 }
  until ($selection -match "1" -or $selection -match "2" -or $selection -match "3" -or $selection -match "4" -or $selection -match "5" -or $selection -match "6" -or $selection -match "7" -or $selection -match "8" -or $selection -match "9" -or $selection -match "10" -or $selection -match "S")
}  

InstallTutsProgs
