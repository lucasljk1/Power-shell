$site = Read-Host "Digite o site: " # a variavel site é um input que aguarda o site que o usuário irá digitar
$web = Invoke-WebRequest -uri "$site" -Method Options # Invoke-Web request é o comando que irá fazer todas as requisições de opções (Informa GET,HEAD,POST, E OUTRAS FUNCOES QUE O SITE ACEITA)
echo " o servidor roda: " #um echo que irá informar qual a versão do servidor usada 
$web.headers.server # o headers.server pega a informação do modelo do site
echo " "
echo " O servidor aceita os metodos: " 
$web.headers.allow # métodos que o servidor aceita 
echo ""
echo "Links encontrados: " #Links que o site aceita 
$web2 = Invoke-WebRequest -uri "$site"
$web2.links.href | Select-String http:// #flag select-string foi usada no sentido de melhorar a formatação do arquivo 