# create and format disk

Get-Disk |
    Where PartitionStyle -eq 'Raw' |
    Select-Object -First 1 |
    Initialize-Disk -PartitionStyle MBR -PassThru |
    New-Partition -DriveLetter F -UseMaximumSize |
    Format-Volume -FileSystem NTFS -NewFileSystemLabel "Data" -Confirm:$false