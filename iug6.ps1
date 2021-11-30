param($p1)

echo "~~~~~~~~~WELCOME TO IUG6~~~~~~~~~~"
echo "~                                ~"
echo "~        Powered by: 1ugu1       ~"
echo "~                                ~"
echo "~ this tool will do a ping sweep ~"
echo "~                                ~"
echo "~                                ~"
echo "~                                ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"





if (!$p1){
        echo "how to use .\script.ps1 ip"
} else {
    foreach ($ip in 1..20){
    
    try{$resp =  ping -n 1 "$p1.$ip" | Select-String "bytes=32"
    $resp.Line.split(' ')[2] -replace ":",""
} catch{}
}
}
