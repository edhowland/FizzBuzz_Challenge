# fizzbuzz.py

import itertools as it

# This version is backward compat w/3.5 by removing the the f string and repacing with [str(d)] +
print("\n".join([([str(d)]+["Fizz","Buzz","FizzBuzz"])[s] for d,s in zip(range(1, 101),  it.cycle([0,0,1,0,2,1,0,0,1,2,0,1,0,0,3]))]))
