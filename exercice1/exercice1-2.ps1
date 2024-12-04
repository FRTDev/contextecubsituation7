<#
==========================================================================
Description : Lister les num�ros d'id et le noms des processus "svchost"

Auteur : Noah Froment
Date : 04/12/2024

Version : 1
==========================================================================
#>

    Get-Process | Where-Object {$_.Name -like "svchost"} | Format-Table Id, ProcessName, Description