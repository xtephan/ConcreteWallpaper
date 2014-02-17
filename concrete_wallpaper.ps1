# Daily wallpaper from Concrete5
# (C) Stefan Fodor @ 2014

#wallpaper location is date dependent
$today = Get-Date -format "yyyyMMdd";

#we need the user my pictures directory for saving the wallpapers
$picture_path = [Environment]::GetFolderPath("MyPictures")

#construct the source and destination vars
$wallpaper_remote = "http://backgroundimages.concrete5.org/wallpaper/" + $today + ".jpg"
$wallpaper_local = $picture_path + "\concrete_wallpapers\" + $today + ".jpg"

#Check if the directory where the wallpapers will be saved exists
if( !(Test-Path ($picture_path + "\concrete_wallpapers\") ) ){
    
	#If not, create it
	New-Item -ItemType directory -Path ($picture_path + "\concrete_wallpapers\")

} else {

	#else purge its content
	Remove-Item ($picture_path + "\concrete_wallpapers\*")

}

#download the wallpaper
$wc = New-Object System.Net.WebClient
$wc.DownloadFile($wallpaper_remote, $wallpaper_local )

#finally, set it
Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $wallpaper_local

#for some reason one needs to update the system prefs like crazy for the change to take effect
#well played MS
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe user32.dll, UpdatePerUserSystemParameters
