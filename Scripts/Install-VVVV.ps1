#-------------------------
#----Installing vvvv------
#-------------------------

mkdir C:\vvvv\
Write-Host "--------------------------`r`n"
Write-Host "Downloading vvvv installer`r`n"
Write-Host "--------------------------`r`n"
Invoke-WebRequest "https://vvvv.org/sites/all/modules/general/pubdlcnt/pubdlcnt.php?file=https://vvvv.org/sites/default/files/vvvv_beta_42_x64_setup.exe&nid=1" -OutFile c:\vvvv\vvvv_beta_42_x64_setup.exe | Out-Null
Write-Host "Launching vvvv installer`r`n"
c:\vvvv\vvvv_beta_42_x64_setup.exe /silent | Out-Null
Write-Host "Deleting setup file`r`n"
Write-Host "--------------------------`r`n"
Remove-Item C:\vvvv\vvvv_beta_42_x64_setup.exe

#-------------------------
#----Install---Packs------
#-------------------------

#-------------------------
#------VAudio-------------
#-------------------------

Write-Host "Downloading VAudio`r`n"
Write-Host "--------------------------`r`n"
Invoke-WebRequest "https://vvvv.org/sites/all/modules/general/pubdlcnt/pubdlcnt.php?file=https://vvvv.org/sites/default/files/uploads/VVVV.Audio_AnyCPU_V18.zip&nid=111816" -OutFile C:\vvvv\vvvv_beta_42_x64\VVVV.Audio_AnyCPU_V18.zip | Out-Null
Write-Host "Expanding VAudio`r`n"
Write-Host "--------------------------`r`n"
Expand-Archive -Path C:\vvvv\vvvv_beta_42_x64\VVVV.Audio_AnyCPU_V18.zip -DestinationPath C:\vvvv\vvvv_beta_42_x64\ | Out-Null
Write-Host "Deleting VAudio install file`r`n"
Write-Host "--------------------------`r`n"
Remove-Item C:\vvvv\vvvv_beta_42_x64\VVVV.Audio_AnyCPU_V18.zip

#-------------------------
#------ DX11 -------------
#-------------------------

Write-Host "Downloading DX11`r`n"
Write-Host "--------------------------`r`n"
Invoke-WebRequest "https://vvvv.org/sites/all/modules/general/pubdlcnt/pubdlcnt.php?file=https://vvvv.org/sites/default/files/uploads/vvvv-packs-dx11-1.3.1.x64.zip&nid=98978" -outfile C:\vvvv\vvvv_beta_42_x64\vvvv-packs-dx11-1.3.1.x64.zip | Out-Null
Write-Host "Expanding DX11`r`n"
Write-Host "--------------------------`r`n"
Expand-Archive -Path C:\vvvv\vvvv_beta_42_x64\vvvv-packs-dx11-1.3.1.x64.zip -DestinationPath C:\vvvv\vvvv_beta_42_x64\ | Out-Null
Write-Host "Deleting DX11 install files`r`n"
Write-Host "--------------------------`r`n"
Remove-Item C:\vvvv\vvvv_beta_42_x64\vvvv-packs-dx11-1.3.1.x64.zip