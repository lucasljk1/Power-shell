param($p1)
if (!$p1){
  echo "Buscador de Hosts Ativos"
  echo "Exemplo de uso .\scanhost.ps1 192.168.0"
} else {
foreach ($ip in 1..254){
ping -n 1 "$p1.$ip" | Select-String "bytes=32"
}
}