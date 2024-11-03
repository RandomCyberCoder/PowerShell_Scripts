param(
    [int]$Count = 10,
    [Parameter(
        Mandatory)]
    [string]$fileLoc
)

function pingNumTimes{
    param(
        [int]$Count,
        [Parameter(
            Mandatory)]
        [string]$fileLoc
    )
    
    Write-Host "Running ping test $Count times and storing"
        " The results at $fileLoc"
    ping 8.8.8.8 -n $Count > $fileLoc
    Write-Host "Ping Test finished"

}

function pingCSV{
    param(
        [int]$Count,
        [Parameter(
            Mandatory)]
        [string]$fileLoc
    )
    $job = ping 8.8.8.8 -n $Count
    $job | Export-CSV $fileLoc
}

pingNumTimes $Count $fileLoc
#pingCSV $Count $fileLoc



