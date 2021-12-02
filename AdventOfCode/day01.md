# Day 1 - Sonar Sweep

Aufgabenstellung auf [adventofcode.com/2021/day/1](https://adventofcode.com/2021/day/1)

*tl;dr* Eine Liste muss Zeile für Zeile auf Änderung überprüft werden, die Lösung ist, wie oft der Wert größer ist als in der Zeile zuvor.

----

## Herangehensweise

Python, Datei mit den Werten importieren und dann in einer While Schleife vergleichen.

```python
with open('input01', 'r') as f:
    data = f.read()

res = [int(i) for i in data.split()]

count = 0
i = 0

while i < (len(res)-1):
  if (res[i] < res[i+1]):
    count += 1
  i += 1
print(count)
```

Das Ergebnis ist **1215**.

Teil 2 war ähnlich, einzig das if-Statement musste etwas angepasst werden:

```python
with open('input01', 'r') as f:
    data = f.read()

res = [int(i) for i in data.split()]

count = 0
i = 0

while i < (len(res)-3):
  if ((res[i]+res[i+1]+res[i+2]) < (res[i+1]+res[i+2]+res[i+3])):
    count += 1
  i += 1
print(count)
```

Das Ergebnis ist **1150**.
