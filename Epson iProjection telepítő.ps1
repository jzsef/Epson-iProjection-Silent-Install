MsiExec.exe /i "C:\Users\user\Desktop\iProjection\Epson iProjection Ver.4.01.msi" TRANSFORMS=1038.mst /qn
Start-Sleep -Seconds 60
New-Item -Path "HKLM:\SOFTWARE\SEIKO EPSON CORPORATION\EasyMP Multi PC Projection\Setting"
New-ItemProperty -Path "HKLM:\SOFTWARE\SEIKO EPSON CORPORATION\EasyMP Multi PC Projection\Setting" -Name "ConnectedType" -Value "1" -PropertyType DWORD -Force
New-ItemProperty -Path "HKLM:\SOFTWARE\SEIKO EPSON CORPORATION\EasyMP Multi PC Projection\Setting" -Name "ConnectType" -Value "0" -PropertyType DWORD -Force

New-Item -Path "HKCU:\SOFTWARE\SEIKO EPSON CORPORATION\EasyMP Multi PC Projection\Setting" -Force
New-ItemProperty -Path "HKCU:\SOFTWARE\SEIKO EPSON CORPORATION\EasyMP Multi PC Projection\Setting" -Name "ReserachUsageSituation" -Value "0" -PropertyType DWORD -Force
New-ItemProperty -Path "HKCU:\SOFTWARE\SEIKO EPSON CORPORATION\EasyMP Multi PC Projection\Setting" -Name "LastReserachUsageSituationVersion" -Value "1" -PropertyType DWORD -Force
New-ItemProperty -Path "HKCU:\SOFTWARE\SEIKO EPSON CORPORATION\EasyMP Multi PC Projection\Setting" -Name "UploadProjectorLog" -Value "0" -PropertyType DWORD -Force
#New-ItemProperty -Path "HKCU:\SOFTWARE\SEIKO EPSON CORPORATION\EasyMP Multi PC Projection\Setting" -Name "LastCheckedPrivacyStatementVersion" -Value "1" -PropertyType DWORD -Force

New-NetFirewallRule -DisplayName "Epson iProjection Ver.4.01" -Description "Epson iProjection Ver.4.01" -Group "Epson iProjection Ver.4.01" -EdgeTraversalPolicy Allow -Direction Inbound -Program "C:\Program Files\EPSON Projector\Epson iProjection\EMP_MPP.exe" -Action Allow
New-NetFirewallRule -DisplayName "Epson iProjection Ver.4.01" -Description "Epson iProjection Ver.4.01" -Group "Epson iProjection Ver.4.01" -Direction Outbound -Program "C:\Program Files\EPSON Projector\Epson iProjection\EMP_MPP.exe" -Action Allow
