param ($ip, $porta)
#Parametros ip e porta são parametros que serão informados
if (!$ip -or !$porta) {# se o usuario informa somente o ip ou somente a porta irá retorna o modo de uso 
    echo " PORTA SCANNER "
    echo " modo de uso | ./portscan.ps1 192.168.0.1 80 ou g1.com.br 80"
} else {
if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
    echo "Porta aberta" 
    #Caso a porta do host ou do site informado esteja aberta 
} else {
    echo "Porta fechada"
      #Caso a porta do host ou do site informado esteja fechada 
}
}