# dotfiles
My config/dotfiles for nvim and other nerd terminal (TUI) things

# How to setup

## Powershell 7 (Windows)

Install some [Nerdfont](https://github.com/ryanoasis/nerd-fonts) (i like Hack Nerd Font)


In windows terminal settings:
- enable acrylic material
- enable transparent background
- set the font to your Nerdfont of choice.


**Install scoop (command liner installer)**

    iwr -useb get.scoop.sh | iex

**Install Posh and Oh My Posh**

    Install-Module posh-git -Scope CurrentUser -Force

    Install-Module oh-my-posh -Scope CurrentUser -Force

**Install Terminal Icons**

    Install-Module -Name Terminal-Icons -Repository PSGallery -Force

**Install PSReadLine**

    Install-Module -Name PSReadLine -AllowClobber -Force

**Install Fzf - Fuzzy Finder**
    
    scoop install fzf

**Install PSFzf**
    
    Install-Module -Name PSFzf -Scope CurrentUser -Force
    
In your home directory create a .config folder.
Copy the powershell directory to .config

Go to your `$Home/Documents/Powershell/Microsoft.Powershell_profile.ps1` and add the following line at the top

    . $env:USERPROFILE\.config\powershell\user_profile.ps1