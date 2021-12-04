# fbio_lib.rb : Replacement for printy when in FizzBuzz program
# If PRINT x is -3, send Fizz; if -5, sen Buzz; if -15, send FizzBuzz
def io_lib
  <<EOC
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
EOC
end
