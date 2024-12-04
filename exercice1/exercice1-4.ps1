<#
==========================================================================
Description : Lister le nom, l'id et la description du processus saisie par l'utilisateur

Auteur : Noah Froment
Date : 04/12/2024

Version : 1
==========================================================================
#>

# Demande de saisie
$Process = Read-Host "Veuillez saisir le processus à filtrer"

Get-Process | Where-Object {$_.Name -like $Process} | Select-Object Id, ProcessName, Description