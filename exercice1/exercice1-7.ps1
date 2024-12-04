<#
==========================================================================
Description : Lister les services (nom, description et status) et l'enregistrer dans un fichier .csv

Auteur : Noah Froment
Date : 04/12/2024

Version : 1
==========================================================================
#>

$resultats = Get-Service | Select-Object Status, Name, DisplayName

# Enregistrer les résultats dans un fichier CSV
$resultats | Export-CSV -Path "C:\Users\noah.froment\Desktop\AdminSys_Powershell\contextecubsituation7\exercice1\resultats\services.csv" -NoTypeInformation

# Afficher le résulat dans la console
Write-Output $resultats