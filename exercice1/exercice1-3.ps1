<#
==========================================================================
Description : Lister le nom, l'id et la description des processus "svchost" (sous forme de table)

Auteur : FRTDev
Date : 04/12/2024

Version : 1
==========================================================================
#>

Get-Process | Where-Object {$_.Name -like "svchost"} | Select-Object Id, ProcessName, Description
