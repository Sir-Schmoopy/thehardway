#So this is the fibonacci.rb file "golf'd" which is making it as short as possible.
#We use Ternary expressions to make things happen on less lines. 

$fibs = {}

def fib(n)
    return "undefined" if n < 1

    return $fibs[n] if $fibs.has_key?(n)
    
    $fibs(n) = \
        if n == 1 || n == 2
            1
    
        else 
            fib(n - 1) + fib(n - 2)
        end
end

def fib2(n)
    return "undefined" if n < 1

    return $fibs[n] if $fibs.has_key?(n)
    
    $fibs(n) = \
        (n == 1 || n == 2)
            ? 1
            : fib(n - 1) + fib(n - 2)
end

50.times do | n | 
    print "fib (#{n}) = "
    puts fib(n)
end