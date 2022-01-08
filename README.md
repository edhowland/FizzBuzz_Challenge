# FizzBuzz Challenge

A placeholder for entries in the FizzBuzz Challenge

## Background

In September 2021, some members of the [St. Louis Unix User's Group](https://www.sluug.org)
participated in a programming challenge: FizzBuzz. Members submitted their
answers on the group's discussion mailing list.

[SLUUG Discuss ML: https://www.sluug.org/mailman/listinfo/discuss](https://www.sluug.org/mailman/listinfo/discuss)

This repository is a hub for investigating the various approaches to the challenge.
Members and anyone else who wish can submit their answers and they can be discussed
herein. Just fork this repository and edit this file, push it, and issue
a pull request [PR].

## The challenge

Create a computer program that prints all numbers in the range from 1 to 100, one per line.
Except, if the number is divisible by 3, then print Fizz instead.
Also, if the number is divisible by 5, then print Buzz instead.
Finally, if the number is divisible by both 3 and 5 ,  print FizzBuzz instead.
Else, just print the number.

### Sample output:

```bash
./fizzbuzz.rb
1
2
fizz
4
buzz
fizz
7
8
fizz
buzz
11
fizz
13
14
fizzbuzz
```

## Template for submissions

Please use the following sample template to submit your code answers:

## User/Language[/Count (if more than 1)]

- Coder: Ed Howland [Or use nicknames, first name and last initial or just initials]
- Email/URL: https://github.com/edhowland [This line is optional]
- Programming Language: Bitsy  [Required. Include release/version, if required to run your code]
- Operating System: Linux   [Optional. Some languages work better on some platforms better than others]
- Notes:   

Required. How to install, setup your system. Include notes on command line
options, program invocation. Optionally, include a short description on how
the code works

### Invocation

```bash
./bitsy.rb fizzbuzz.bitsy
...
```

### The code

```bitsy
{ Sample BitsyLang code follows this comment }
```

## Included code sample files, build scripts and support files

If you want to add your actual files beyond the code in the code listing itself,
then use the directory structure that matches the beginning Heading Level 2 at the start of your entry.

E.g.

```bash

$ tree edhowland/
edhowland/
└── bitsy
    └── fizzbuzz.bitsy
```

## About the license

All code submitted here will be subject to the M.I.T. License.
Please see: [LICENSE](LICENSE)

This license is fairly permissive, but if you do not want submit it here but still participate,
then consider creating your own repository and sharing the URL here.

That's it. Have fun and we look forward to your responses.

# Challenge Responses

## edhowland/bitsy

- Code: Ed Howland
- Language: Bitsy [Bitsy Specs](https://github.com/apbendi/bitsyspec)
- Operating System: Linux
- Notes


The Bitsy language does not have support for strings or any other data types
besides positive and negative integers. This presents a problem for FizzBuzz.
So, there is a little bit of a cheat here. The code prints -3, -5 and -15
for cases of Fizz, Buzz and FizzBuzz instead.
To get the right output, I modified the Ruby version of the Bitsy compiler
to tak an optional flag: --prelude fbio_lib. This file replaces the above
negative integers with the corresponding strings when 'PRINT -3' is called, for example.

### Requirements

You must have a valid bitsy runner. A program that compile and run legal Bitsy
code. Included in this repository is a Ruby version that runs on Linux or
anywhere Ruby 3.0 is installed.

Note: The canonical implementation of Bitsy is written in Swift and only
runs on MacOS, as far as the the current version of the currnet GitHub
repository has stated. It might be possible to compile the Swift code for
bitsy-swift on other platforms, but not to my knowledge.

[bitsy-swift]https://github.com/apbendi/bitsy-swift
### Invocation

```bash
$ ./bitsy.rb -p fbio_lib fizzbuzz.bitsy
```

### The code

```bitsy
{ fizzbuzz: Code the completes the FizzBuzz Challenge }
BEGIN
  x = 1
  LOOP
    IFZ x % 3
      IFZ x % 5
        PRINT -15
      ELSE
        PRINT -3
      END
    ELSE
      IFZ x % 5
        PRINT -5
      ELSE
        PRINT x
      END
    END
    IFZ 100 - x
      BREAK
    END
    x = x + 1
  END

END
```

### How the code workks

In Bitsy, there are only 10 keywords. BEGIN, END, LOOP, BREAK, IFP, IFN, IFZ, ELSE, PRINT and READ
All programs must begin and end with: BEGIN .... END. The left and right curly braces 
enclose [multi-line]  comments. 


#### The conditional statements

- IFP : If the following expression computes to a positive number. '> 0'
- IFZ. The following expression computes to exactly 0. '== 0'
- IFN : The following expression computes to a negative integer less than 0; '< 0'

The following operators work with integer expression with or without variables in the expressions:

+, -, *, / and %

The only I/O operations are: 'READ x' and 'PRINT expression'. Only PRINT expr is used
here.


<!-- Ed: remove this line -->

<!-- Robert: remove this line -->




