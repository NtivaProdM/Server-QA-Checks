﻿<#
    DESCRIPTION: 
        Check System Event Log and ensure no errors or warnings are present in the last 14 days.  If found, will return the latest 15 entries



    PASS:    No errors found in system event log
    WARNING: Errors were found in the system event log
    FAIL:
    MANUAL:
    NA:

    APPLIES: All

    REQUIRED-FUNCTIONS:
#>

Function c-sys-05-system-event-log
{
    Param ( [string]$serverName, [string]$resultPath )

    $serverName    = $serverName.Replace('[0]', '')
    $resultPath    = $resultPath.Replace('[0]', '')
    $result        = newResult
    $result.server = $serverName
    $result.name   = 'System Event Log Errors'
    $result.check  = 'c-sys-05-system-event-log'

    #... CHECK STARTS HERE ...#

    Try
    {
        If ($PSVersionTable.PSVersion.Major -ge 4)
        {
            [double]$timeOffSet = ($script:appSettings['GetLatestEntriesAge'] -as [int]) * 60 * 60 * 24 * 1000    # Convert 'days' into 'miliseconds'
            [xml]   $xml        = '<QueryList><Query Id="0" Path="System"     ><Select Path="System"     >*[System[(Level=1 or Level=2) and TimeCreated[timediff(@SystemTime) &lt;= {0}]]]</Select></Query></QueryList>' -f $timeOffSet
            [object]$check      = Get-WinEvent -ComputerName $serverName -MaxEvents $script:appSettings['GetLatestEntriesCount'] -FilterXml $xml -ErrorAction SilentlyContinue | Select LevelDisplayName, TimeCreated, Id, ProviderName, Message
        }
        Else
        {
            $check = Get-EventLog -ComputerName $serverName -LogName System      -EntryType Error -Newest $script:appSettings['GetLatestEntriesCount'] -After (Get-Date).AddDays(-($script:appSettings['GetLatestEntriesAge'])) -ErrorAction SilentlyContinue
        }
    }
    Catch
    {
        $result.result  = 'Error'
        $result.message = 'SCRIPT ERROR'
        $result.data    = $_.Exception.Message
        Return $result
    }

    If ($check.Length -gt 0)
    {
        If ((Test-Path -Path ('{0}EventLogs' -f $resultPath)) -eq $false) { Try { New-Item -Path ('{0}EventLogs' -f $resultPath) -ItemType Directory -Force | Out-Null } Catch {} }
        [string]$outFile = '{0}EventLogs\{1}-Error-Events-System.csv' -f $resultPath, $serverName.ToUpper()
        $check | Export-Csv $outFile -NoTypeInformation

        $result.result  = 'Warning'
        $result.message = 'Errors were found in the system event log'
        $result.data    = (Split-Path -Path $outFile -Leaf)
    }
    Else
    {
        $result.result  = 'Pass'
        $result.message = 'No errors found in system event log'
    }
    
    Return $result
}