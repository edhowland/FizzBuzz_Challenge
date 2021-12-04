#!/usr/bin/env ruby
# Prelude
# Builtins
  # READ x
 def ready
  gets.to_i
end

# PRINT impl
def printy(val)
  puts case val
  when -3
    "Fizz"
  when -5
    "Buzz"
  when -15
    "FizzBuzz"
  else
    val
  end
end

# Initialize all variables in symbol table to 0 as required by BitsySpec
x=0
### Code begins
  x = 1

loop do
if (x % 3) == 0
  if (x % 5) == 0
  printy(-15)

else
  printy(-3)

end

else
  if (x % 5) == 0
  printy(-5)

else
  printy(x)

end

end

x = (x + 1)

end

