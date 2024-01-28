
$selectedDirectory = Get-ChildItem -Directory -Recurse D:\ | %{ $_.FullName } | fzf --preview="dir {}"
if ($selectedDirectory) { Set-Location -Path $selectedDirectory }



