# Foxhound Defence - Domain Controller Deployment Script
# Author: Leemooo
# Usage: Run on a fresh server core instance to promote it to a DC

# 1. Install Active directory domain services 
Write-Host "Installing AD DS Role..." -ForegroundColor Cyan 
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# 2. Promote to Domain Controller (New Forest)
# Note: the server will reboot after this step
Write-Host "Promoting to Domain Controller for foxhound.local..." -ForegroundColor Cyan
Install-ADDSForest `
    -DomainName "foxhound.local" `
    -DomainNetbiosName "FOXHOUND" `
    -InstallDns:$true `
    -DatabasePath "C:\Windows\NTDS" `
    -LogPath "C:\Windows\NTDS" `
    -SysvolPath "C:\Windows\SYSVOL" `
    -Force:$true