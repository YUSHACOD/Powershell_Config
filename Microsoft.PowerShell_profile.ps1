########### Firs initialize OH MY POSH #####
oh-my-posh init pwsh --config 'C:\Users\91724\AppData\Local\Programs\oh-my-posh\themes\customApe.omp.json' | Invoke-Expression
############################################


# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile))
{
	Import-Module "$ChocolateyProfile"
}

## Custom env variables ##############
$env:XDG_CONFIG_HOME = "$HOME\.config"
######################################

#### at startup ######
Set-Location "$HOME"
######################


## Zoxide Invocation ###############################################
Invoke-Expression (& { (zoxide init powershell | Out-String) })
###################################################################

## aliases #####################
Set-Alias -Name vim -Value nvim
Set-Alias -Name psconf -Value D:\Documents\PowerShell\conf_script_ps\psconf.ps1
Set-Alias -Name :q -Value D:\Documents\PowerShell\conf_script_ps\exit.ps1
Set-Alias -Name gtpsconf -Value D:\Documents\PowerShell\conf_script_ps\goto_conf.ps1
Set-Alias -Name github_pull -Value D:\Documents\PowerShell\conf_script_ps\github_pull.ps1
Set-Alias -Name which -Value Get-Command
Set-Alias -Name wintermconf -Value D:\Documents\PowerShell\conf_script_ps\wintermconf.ps1
Set-Alias -Name alias_save -Value D:\Documents\PowerShell\conf_script_ps\alias_save.ps1
Set-Alias -Name zbr -Value D:\Documents\PowerShell\conf_script_ps\zbr.ps1
Set-Alias -Name gs -Value D:\Documents\PowerShell\conf_script_ps\gs.ps1
Set-Alias -Name tasks -Value D:\Documents\PowerShell\conf_script_ps\tasks.ps1
Set-Alias -Name lg -Value D:\Documents\PowerShell\conf_script_ps\lg.ps1
Set-Alias -Name winget_upgrade -Value D:\Documents\PowerShell\conf_script_ps\winget_upgrade.ps1
