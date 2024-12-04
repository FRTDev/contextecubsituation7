<#
==========================================================================
Description : Lister le nom, l'id et la description du processus saisie par l'utilisateur avec une fonction

Auteur : Noah Froment
Date : 04/12/2024

Version : 1
==========================================================================
#>

function InfoProcessus {
    param($ProcessName)
    Get-Process -Name $ProcessName | Select Id, ProcessName, Description
    return
}


$Saisie = Read-Host "Veuillez saisir le processus à filtrer"
InfoProcessus -ProcessName $Saisie
