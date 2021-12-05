# Day 3 - Binary Diagnostic

Aufgabenstellung auf [adventofcode.com/2021/day/3](https://adventofcode.com/2021/day/3)

*tl;dr* Binäre Decodierung 

```python
with open('day03', 'r') as f:
    data = f.readlines()

line = [i.strip() for i in data]

gamma = " "
epsilon = " "
for j in range(len(line[0])):
  zero = 0
  one = 0
  for i in range(len(data)):
    if int(data[i][j]) == 1:
      one += 1
    else:
      zero += 1
    
  if zero>one:
    gamma += "0"
    epsilon += "1"
  else:
    gamma += "1"
    epsilon += "0"
print("consumption", int(gamma,2)*int(epsilon,2))
```

Das Ergebnis ist **4147524**.

Teil 2

```python
with open('day03', 'r') as f:
    data = f.readlines()

line = [i.strip() for i in data]

o2 = line
for j in range(len(o2[0])):
    num0 = 0
    num1 = 0
    for i in range(len(o2)):
        if int(o2[i][j]) == 1 :
            num1 += 1
        else :
            num0 += 1  
    if num0>0 and num1>0:
        if num1>=num0:
            o2 = list(filter(lambda a: int(a[j])==1, o2))
        
        if num0>num1:
            o2 = list(filter(lambda a: int(a[j])==0, o2)) 

co2 = line
for j in range(len(co2[0])):
    num0 = 0
    num1 = 0
    for i in range(len(co2)):
        if int(co2[i][j]) == 1 :
            num1 += 1
        else :
            num0 += 1 
    if num0>0 and num1>0:
        if num1>=num0:
            co2 = list(filter(lambda a: int(a[j])==0, co2))
        if num0>num1:
            co2 = list(filter(lambda a: int(a[j])==1, co2))

print("life support rating",int(o2[0],2)*int(co2[0],2))
```
