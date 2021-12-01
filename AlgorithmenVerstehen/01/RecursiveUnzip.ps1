# Powershell Script for recursive decompression

# initial decompress
Get-ChildItem 'start' -Filter *.zip | Expand-Archive -DestinationPath 'zip_1' -Force

# for loop / counter. 2021-1 runs needed
for ($count=1; $count -le 2020; $count++) {

    # using the counter to build foldernames
    $source = "zip_"
    $source += $count

    # same for target folder
    $target = "zip_"
    $target += $count+1
    
    Get-ChildItem $source -Filter *.zip | Expand-Archive -DestinationPath $target -Force

    # after decompression, the source folder is not needed anymore, so it can be deleted.
    Remove-Item $source -Recurse -Force

    # debug info 
    Write-Output $count
    }
# after mass-decompression
Write-Output "Success"