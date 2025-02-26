<#
==========================================================================
Description : Lister les numéros d'id et le noms des processus "svchost"

Auteur : FRTDev
Date : 04/12/2024

Version : 1
==========================================================================
#>

Get-Process | Where-Object {$_.Name -like "svchost"} | Select-Object Id, ProcessName
