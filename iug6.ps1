param($p1)
if (!$p1){
    echo "Desec"
    echo "exemplo de uso .\script.ps1 ip"
} else {
    foreach ($ip in 1..20){
    
    try{$resp =  ping -n 1 "$p1.$ip" | Select-String "bytes=32"
    $resp.Line.split(' ')[2] -replace ":",""
} catch{}
}
}
