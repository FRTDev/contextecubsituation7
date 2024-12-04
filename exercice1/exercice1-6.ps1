<#
==========================================================================
Description : Lister le nom, l'id et la description du processus saisie par l'utilisateur (fonction) avec l'enregistrement des résultats dans 2 fichiers de sauvegarde

Auteur : Noah Froment
Date : 04/12/2024

Version : 1
==========================================================================
#>

function InfoProcessus {
    param($ProcessName)
    Get-Process | Where-Object {$_.Name -like $ProcessName} | Select-Object Id, ProcessName, Description
    return
}

# Demande de saisie
$Saisie = Read-Host "Veuillez saisir le processus à filtrer"

# Appel de la fonction
$resultats = InfoProcessus -ProcessName $Saisie

# Enregistrer les résultats dans un fichier texte
$resultats | Out-File -FilePath "C:\Users\noah.froment\Desktop\AdminSys_Powershell\contextecubsituation7\exercice1\resultats\sauvegarde.txt"

# Enregistrer les résultats dans un fichier CSV
$resultats | Export-CSV -Path "C:\Users\noah.froment\Desktop\AdminSys_Powershell\contextecubsituation7\exercice1\resultats\sauvegarde.csv" -NoTypeInformation
