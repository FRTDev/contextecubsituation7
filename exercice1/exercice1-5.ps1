<#
==========================================================================
Description : Lister le nom, l'id et la description du processus saisie par l'utilisateur avec une fonction

Auteur : FRTDev
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
InfoProcessus -ProcessName $Saisie
