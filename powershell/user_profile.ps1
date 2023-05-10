# Prompt

Import-Module posh-git

function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'hggmarks.omp.json'
$env:VIRTUAL_ENV_DISABLE_PROMPT = '1'

oh-my-posh init pwsh --config $PROMPT_CONFIG | Invoke-Expression

# Icons

Import-Module -Name Terminal-Icons

# PSReadLine

Set-PSReadLineOption -EditMode Vi
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar

# Fzf

Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Utilities

function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Alias

Set-Alias grep findstr

