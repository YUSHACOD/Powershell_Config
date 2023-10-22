########### Firs initialize OH MY POSH #####
oh-my-posh init pwsh --config 'C:\Users\91724\AppData\Local\Programs\oh-my-posh\themes\customApe.omp.json' | Invoke-Expression
############################################


# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

## Custom env variables ##############
$env:XDG_CONFIG_HOME = "$HOME\.config"
######################################

#### at startup ######
Set-Location "$HOME"
######################

## aliases #####################
Set-Alias -Name vim -Value nvim
Set-Alias -Name psconf -Value C:\Users\91724\Documents\PowerShell\conf_script_ps\psconf.ps1
Set-Alias -Name :q -Value C:\Users\91724\Documents\PowerShell\conf_script_ps\exit.ps1
Set-Alias -Name gtpsconf -Value C:\Users\91724\Documents\PowerShell\conf_script_ps\goto_conf.ps1
################################

