  $selectedDirectory = fd --type d . 'C:\Users\jackwill'. 'C:\Users\jackwill\.config' . "C:\Users\jackwill\.dotfiles" . "D:\personal" ."D:\wujackwill.github.io" . 'D:\work' . 'D:\' . 'D:\OneDrive\应用\remotely-save\note' --min-depth 1 --max-depth 2 | fzf
   # 检查是否选择了目录
   if (-not [string]::IsNullOrWhiteSpace($selectedDirectory)) {
      # 打开选定的目录
       cd $selectedDirectory
        # 模拟按下回车键
       Add-Type -AssemblyName System.Windows.Forms
       [System.Windows.Forms.SendKeys]::SendWait("^{l}")

   }
   else {
       Write-Host "No directory selected."
        Add-Type -AssemblyName System.Windows.Forms
       [System.Windows.Forms.SendKeys]::SendWait("^{l}")
   }



