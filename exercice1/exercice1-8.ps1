<#
==========================================================================
Description : Lister les services arr�t�s ou d�marr�s (nom, description et status)

Auteur : Noah Froment
Date : 04/12/2024

Version : 1
==========================================================================
#>

function InfoServices {
    param($Status)
    Get-Service | Where-Object {$_.Status -eq $Status} | Select-Object Status, Name, DisplayName
    return
}

# Demande de saisie
$Saisie = Read-Host "Liste des services d�marr�s[1] ou arr�t�s[2]"

if ($Saisie -eq 1){
    $StatusSaisie = "Running"
}
else {
    $StatusSaisie = "Stopped"
}

# Appel de la fonction
$resultats = InfoServices -Status $StatusSaisie

# Enregistrer les r�sultats dans un fichier CSV
$resultats | Export-CSV -Path "C:\Users\noah.froment\Desktop\AdminSys_Powershell\contextecubsituation7\exercice1\resultats\services.csv" -NoTypeInformation

# Afficher le r�sulat dans la console
Write-Output $resultats