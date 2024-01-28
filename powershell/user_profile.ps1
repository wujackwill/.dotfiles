
# theme
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/robbyrussell.omp.json" | Invoke-Expression

# zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# Import Module
Import-Module Terminal-Icons

# Alias

Set-Alias mpv mpv.exe
Set-Alias vim nvim
Set-Alias g git
Set-Alias ls eza
Set-Alias r1 Rscript
Set-Alias r2 R.exe
Set-Alias word WINWORD.EXE
Set-Alias ppt POWERPNT.EXE
Set-Alias excel EXCEL.EXE
Set-Alias pdf SumatraPDF
Set-Alias ug ugraf
Set-Alias ep E-Studio
Set-Alias em E-Merge
Set-Alias ed E-DataAid


$env:FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

function search {
    $query = Read-Host "file type"
    $file = fd -e $query . "D:\baocun"| fzf 
   if ($file.EndsWith(".pdf")) {
        SumatraPDF $file
     }
     elseif ($file.EndsWith(".docx")) {
         word /t $file
     }
     elseif ($file.EndsWith(".pptx")) {
         ppt $file
     }
     elseif ($file.EndsWith(".xlsx")) {
         excel $file
     }elseif ($file.EndsWith(".mp3")){
        mpv $file
     }elseif ($file.EndsWith(".es2")){
        ep "$file"
     }elseif ($file.EndsWith(".xlsm")){
        excel "$file"
     }elseif ($file.EndsWith(".csv")){
        excel "$file"
    }else {
         code $file
     }
    
    # }
}
# 使用 Start-Process 执行 curl 命令

Set-PSReadLineKeyHandler -Key "Ctrl+f" -ScriptBlock { search }


function search_note {
    $file = fd . "D:\OneDrive\应用\remotely-save\note"| fzf
    code $file
}

Set-PSReadLineKeyHandler -Key "Ctrl+n" -ScriptBlock { search_note }

# find directory
function Run-MyScript {
    # 获取选定的目录
    $selectedDirectory = fd --type d . 'C:\Users\jackwill'. 'C:\Users\jackwill\.config' . "C:\Users\jackwill\.dotfiles" . "D:\personal" ."D:\wujackwill.github.io" . 'D:\work' .  'D:\OneDrive\应用\remotely-save\md' 'C:\Users\jackwill\AppData\Local' --min-depth 1 --max-depth 2 | fzf
    # 检查是否选择了目录
    if (-not [string]::IsNullOrWhiteSpace($selectedDirectory)) {
        # 打开选定的目录
        cd $selectedDirectory
        # 模拟按下回车键
#        Add-Type -AssemblyName System.Windows.Forms
#        [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
        Add-Type -AssemblyName System.Windows.Forms
        [System.Windows.Forms.SendKeys]::SendWait("^{l}")

    }
    else {
        Write-Host "No directory selected."
        Add-Type -AssemblyName System.Windows.Forms
        [System.Windows.Forms.SendKeys]::SendWait("^{l}")
    }
}

# 设置快捷键 Ctrl+S 来运行脚本
Set-PSReadLineKeyHandler -Key "Ctrl+s" -ScriptBlock { Run-MyScript }


# 定义运行脚本的函数
function Run-cht {
    $language = "python", "rust", "r", "golang","c"
    $core_utils = "sed", "awk", "find", "fd", "fzf"
    $selected = $language, $core_utils | fzf
    $query = Read-Host "Query"
    Clear-Host
    # 将选择的内容转换为字符串
    $selectedString = $selected -join ","
    
    # if ($selected -eq "rust") {
    #     rustup doc $query

    # }
    # else {
        # 构建 URL
        $url = "cht.sh/$selectedString/$query"
    
        # 使用 Start-Process 执行 curl 命令
        Start-Process -FilePath "curl" -ArgumentList $url -NoNewWindow -Wait
    # }
}

# 设置快捷键 Ctrl+Alt+S 来运行脚本
Set-PSReadLineKeyHandler -Key "Ctrl+b" -ScriptBlock { Run-cht }

function Run-pwd {
    Explorer $pwd
}

Set-PSReadLineKeyHandler -Key "Ctrl+x" -ScriptBlock { Run-pwd }

function dd {cd C:\Users\jackwill\.dotfiles}
function pp {cd D:\personal }
function nn {cd D:\OneDrive\应用\remotely-save\md\note }
function ww {cd D:\work }
function bb {cd D:\wujackwill.github.io }
function mm {cd D:\OneDrive\应用\remotely-save\md }




function Copilot{
    $select = "suggest -t shell","suggest -t gh", "suggest -t git" ,"explain" | fzf
    $query = Read-Host "Query"


    Start-Process -FilePath "gh" -ArgumentList "copilot", $select,$query -NoNewWindow -Wait


}
Set-PSReadLineKeyHandler -Key "Ctrl+w" -ScriptBlock { Copilot }



function bw {
    $name = Read-Host "Blog name"
    New-Item -ItemType File -Path ("D:\personal\wujackwill.github.io\blog\$name.md") -Force
    mkdir -p D:\personal\wujackwill.github.io\docs\images\$name

    $tag = Read-Host "tags"
    $filePath = "D:\personal\wujackwill.github.io\blog\index.md"
    $date = Get-Date -Format "yyyy.MM.dd"
    $newRow = "|[$name](./$name.html)|$date|$tag|"

    $lines = Get-Content $filePath

    $separatorIndex = $lines.IndexOf("|---|---|---|")

    $lines = $lines[0..$separatorIndex] + $newRow + $lines[($separatorIndex + 1)..($lines.Count - 1)]

    $lines | Set-Content $filePath

}

function bg {
    cd D:\personal\wujackwill.github.io

    git add .
    git commit -m "add new blog"

    git push origin master
    
}


function bc {
    
        $blogDirectory = "D:\personal\wujackwill.github.io\blog"

        $docsDirectory = "D:\personal\wujackwill.github.io\docs"

        $markdownFiles = Get-ChildItem -Path $blogDirectory -Filter *.md

        foreach ($markdownFile in $markdownFiles) {
            $htmlFile = Join-Path $docsDirectory ($markdownFile.BaseName + ".html")

                pandoc --to=html5 $markdownFile.FullName -o $htmlFile -V mainfont="SimSun" --citeproc --bibliography="D:\Zotero\m.bib" --csl 'D:\personal\apa-style\american-psychological-association-7th-edition(blog).csl' --css=https://benjam.info/panam/styling.css  -s
        }


    Move-Item D:\personal\wujackwill.github.io\blog\*.html -Destination "D:\personal\wujackwill.github.io\docs" -Force



}
