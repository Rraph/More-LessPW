#=========================#
# AUTEUR : Raphael BEGHIN #
# NOM : Plus ou Moins     #
# DATE : 03/06/2019       #
#=========================#

Write-Host "############## BIENVENUE DANS LE JEU DU PLUS OU MOINS ####################" -f "green"

$nombre = Get-Random -Maximum "100" -Minimum "0"
$essais = 0

    do {
        $choix = Read-Host "Entrez un nombre"
        
        if ($choix -gt $nombre) {
            $essais = $essais + 1
            Write-Host "c'est moins" -f "red"
        }
        elseif ($choix -lt $nombre) {
            $essais = $essais + 1
            Write-Host "c'est plus" -f "red"
        }
        elseif ($choix -eq $nombre) {
            if ($essais -gt 1) {
                $essais = $essais +1
                Write-Host "GG, tu as trouve en $essais essais !" -f Green    
            }
            else{
                Write-Host "WAOW DU PREMIER COUP !! CHAPEAU !" -f Green
            }
        }
    }
    while ($choix -ne $nombre)