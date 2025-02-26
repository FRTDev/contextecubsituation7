<#
==========================================================================
Description : Tous les services qui contient "system" coloré en vert 

Auteur : FRTDev
Date : 04/12/2024

Version : 1
==========================================================================
#>

# Importer le fichier CSV
$ServicesCSV = Import-Csv -Path "C:\Users\noah.froment\Desktop\AdminSys_Powershell\contextecubsituation7\exercice2\resultats\services.csv"

# Parcourir chaque ligne du CSV
foreach ($Service in $ServicesCSV) {
    # Vérifier si le nom du service contient "system"
    if ($Service.Name -like "*system*") {
        # Afficher le nom et le statut du service en vert
        Write-Host ($Service.Name, $Service.Status) -ForegroundColor Green
    }
    else {
        Write-Host $Service.Name
    }
}








