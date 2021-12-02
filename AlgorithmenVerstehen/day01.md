# Santa's Geschenk

Aufgabenstellung und Passworteingabe auf [floriandalwigk.de/santas-geschenk-hackcember-1](https://www.floriandalwigk.de/santas-geschenk-hackcember-1)

*tl;dr* ZIP Datei 2021 mal verpackt, Rekursive Entpackung notwendig

----

## Herangehensweise

PowerShell, Dekompression in einer for-Schleife.

Damit nicht zu viele Dateien entstehen und rummüllen, wird bei jedem Schleifendurchlauf direkt die Quelldatei wieder gelöscht, da diese eh nicht wieder gebraucht wird.

Im letzten Ordner, `zip_` liegt eine Textdatei mit dem Kennwort.

## Code

```powershell
# Powershell Script for recursive decompression

# erste dekompression 
Get-ChildItem 'start' -Filter *.zip | Expand-Archive -DestinationPath 'zip_1' -Force

# schleife für mehrfaches komprimieren. 2021-1 ausführung benötigt.
for ($count=1; $count -le 2020; $count++) {

    # source folder
    $source = "zip_"
    $source += $count

    # target folder
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
```

Die erste Datei muss in einem Unterordner namens `start` neben dem Skript liegen.