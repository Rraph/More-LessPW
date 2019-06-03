#=========================#
# AUTEUR : Raphael BEGHIN #
# NOM : Plus ou Moins     #
# DATE : 03/06/2019       #
#=========================#

Write-Host "############## BIENVENUE DANS LE JEU DU PLUS OU MOINS ####################" -f "green"

$nombre = Get-Random -Maximum "100" -Minimum "0"

do {
    $choix = Read-Host "Entrez un nombre"
    if ($choix -gt $nombre) {
        Write-Host "c'est moins" -f "red"
    }
    elseif ($choix -lt $nombre) {
        Write-Host "c'est plus" -f "red"
    }
    else {
        Write-Host "You win !" -f "green"
    }
} while ($choix -ne $nombre)