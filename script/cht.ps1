$language = "python","rust","r","golang"
$core_utils = "sed","awk","find","fd","fzf"
$selected = $language,$core_utils| fzf
Clear-Host
$query = Read-Host "Query "
curl cht.sh/$selected/$query
