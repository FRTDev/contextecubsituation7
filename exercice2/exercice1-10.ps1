<#
==========================================================================
Description : Tous les services qui contient ce que l'utilistrauer a saisie coloré en vert

Auteur : Noah Froment
Date : 04/12/2024

Version : 1
==========================================================================
#>

$Saisie = Read-Host "Veuillez saisir la liste des services qui va être suligné en vert"

# Importer le fichier CSV
$ServicesCSV = Import-Csv -Path "C:\Users\noah.froment\Desktop\AdminSys_Powershell\contextecubsituation7\exercice2\resultats\services.csv"

# Parcourir chaque ligne du CSV
foreach ($Service in $ServicesCSV) {
    # Vérifier si le nom du service contient "system"
    if ($Service.Name -like ("*"+ $Saisie +"*")) {
        # Afficher le nom et le statut du service en vert
        Write-Host ($Service.Name, $Service.Status) -ForegroundColor Green
    }
    else {
        Write-Host $Service.Name
    }
}








