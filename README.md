# Installation


## Proxy and Unicode
1. Change unicoe to UTF-8(for fzf to work with Chinese characters)

> Open Windows Control Panel -> Region.<br>Go to the Administrative tab and click Change system locale...<br>Remove the check mark next to Beta: Use UTF-8 for worldwide language support.<br>Click OK and restart your computer.

2. [VrayN](https://github.com/2dust/v2rayN/releases)
3. [Windows terminal](https://apps.microsoft.com/detail/9N0DX20HK701?hl=zh-cn&gl=US)
4. clone .dotfiles repo
```
git clone git@github.com:wujackwill/.dotfiles.git
```

5. add this line to your Microsoft.PowerShell_profile.ps1 file, which should be at C:\Users\YOURNAME\Documents\PowerShell
```
. $env:USERPROFILE\.dotfiles\powershell\user_profile.ps1
```

## Powsershell
1. Install Terminal-Icons Module
```
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
```


2. Install scoop
```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```


3. Install scoop apps
```
scoop import C:\Users\jackwill\.dotfiles\scoop_list\scoop-installed-software.txt
```


## Neovim

```
cd C:\Users\jackwill\AppData\Local
git clone git@github.com:wujackwill/nvim.git
```

## MPV


```
cd D:\
git clone git@github.com:wujackwill/mpv.git
cd mpv
sudo ln -s C:\Users\jackwill\.dotfiles\mpv\portable_config\ protable_config

```
