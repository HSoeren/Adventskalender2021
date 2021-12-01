# Santa's Geschenk

Aufgabenstellung und Passworteingabe auf [floriandalwigk.de/santas-geschenk-hackcember-1](https://www.floriandalwigk.de/santas-geschenk-hackcember-1)

----

tl;dr: ZIP Datei 2021 mal verpackt, Rekursive Entpackung notwendig

----

Ich habe mich für PowerShell entschieden, das Script dekomprimiert das erste Mal aus dem Ordner start (egal wie die Datei heißt) und legt sie in einem nummerierten Ordner ab. 

Danach übernimmt eine for Schleife die Dekompression, wobei über den Zähler die Zwischenstände benannt werden, aber auch automatisch nach jeder Operation der Quellordner entfernt wird, sodass nach abgeschlossener Ausführung nur der Startordner, Zielordner und das Script selbst vorhanden sind.

Während Testversuchen hat sich gezeigt, dass es gut war, die Dateien nicht anhand eines Namens zu wählen sondern über den Ordner in dem sie sind, da jede ZIP einen anderen Namen hat.

Optional kann in [Zeile 23](RecursiveUnzip.ps1#23) die Ausgabe des Fortschritts deaktiviert werden. 

In meinem Falle hat die Ausführung keine 5 Minuten gedauert und das richtige Passwort lag im Zielordner.