<#
==========================================================================
Description : Lister le nom, l'id et la description des processus "svchost" (sous forme de table)

Auteur : Noah Froment
Date : 04/12/2024

Version : 1
==========================================================================
#>

    Get-Process | Where-Object {$_.Name -like "svchost"} | Format-Table Id, ProcessName, Description