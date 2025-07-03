---
date: 12-01-2024
tags:
  - python
  - bash
---

# 2024 Advent of Code


## See the code: https://github.com/thehandsomezebra/GARDEN_tech-scratchpad





Lemme tell ya. I really do love programming puzzles but when it comes to things that are "lets walk on this map.. and turn.." and it's like a video game? nah. just. nah. I've got better things to do with my life.. And that's ok. I don't mind that it's unfinished. If it doesn't spark joy, then that's fine. I love business logic - not this stuff.

I got a handful done.

I had a personal goal to at least do the first part for 20 days in Bash, Python and Go... but... uh.. you can see that did not happen. There's always next year.

| day                                            | bash    | python | 
| ---------------------------------------------- | ------- | ------ | 
| [day 1](https://adventofcode.com/2024/day/1)   | [✔️][✔️]  | [✔️][✔️] | 
| [day 2](https://adventofcode.com/2024/day/2)   | [✔️][✔️]  | [✔️][✔️] | 
| [day 3](https://adventofcode.com/2024/day/3)   | [✔️][✔️]  | [✔️][✔️] | 
| [day 4](https://adventofcode.com/2024/day/4)   | [✔️][✔️]  | [✔️][✔️] | 
| [day 5](https://adventofcode.com/2024/day/5)   | [✔️][✔️]  | [ ][ ] |


---

## Python stuff:

## day 1

```bash

cd python

#day 1
python day1.py

#day 1 unit tests
python -m unittest tests/test_day1a.py
python -m unittest tests/test_day1b.py

```



#### All tests
```bash
cd python
python -m unittest discover -s tests -p 'test*.py'
```


#### containerize it
```bash
#run from root
make run-python DAY=day1
```

