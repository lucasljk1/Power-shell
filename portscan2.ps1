param ($ip, $porta)
if (!$ip){
    echo " PORTA SCANNER "
    echo " modo de uso | ./portscan2.ps1 192.168.0.1 80 ou g1.com.br 80"
} else {
foreach ($porta in 1..1024){
if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
    echo "Porta $porta aberta" 
    
} else {
    echo "Porta $porta fechada"
      
}}
}