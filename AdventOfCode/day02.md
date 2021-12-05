# Day 2 - Dive

Aufgabenstellung auf [adventofcode.com/2021/day/2](https://adventofcode.com/2021/day/2)

*tl;dr* Eine Liste muss Zeile für Zeile auf Richtungsanweisung und Menge an Schritten geprüft werden, daraus die Position und aus dessen Multiplikation die Lösung errechnet werden.

----

```python
with open('input02', 'r') as f:
    data = f.readlines()

line = [i.strip().split() for i in data]

hor, depth = 0, 0
for direction,value in line:
  if direction == "forward":
    hor += int(value)
  elif direction == "down":
    depth += int(value)
  elif direction == "up":
    depth -= int(value)

print(f"hor = {hor}, depth = {depth}")
print(f"hor * depth = {hor * depth}")
```

Das Ergebnis ist **hor = 1790, depth = 1222; hor * depth = 2187380**

Teil 2

```python
with open('input02', 'r') as f:
    data = f.readlines()

line = [i.strip().split() for i in data]

aim = 0
hor, depth = 0, 0
for direction,value in line:
  if direction == "forward":
    hor += int(value)
    depth += aim * int(value)
  elif direction == "down":
    aim += int(value)
  elif direction == "up":
    aim -= int(value)

print(f"Part 2")
print(f"hor = {hor}, depth = {depth}")
print(f"hor * depth = {hor * depth}")
```