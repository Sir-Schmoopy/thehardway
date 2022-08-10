$fibs = {}

def fib(n)
  return "undefined" if n < 1

  if $fibs.has_key?(n)
    return $fibs[n]
  end

  if n == 1
    x = 1
  elsif n == 2
    x = 1
  else
    x = fib(n - 1) + fib(n - 2)
  end

  $fibs[n] = x
  return x
end

50.times do |n|
  print "fib (#{n}) = "
  puts fib(n)
end
