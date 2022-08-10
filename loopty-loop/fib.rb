# This is a spooky thing to demonstrate how recursion can be dangerous and fast.

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
        a = fib(n - 1) # a = 1
        b = fib(n - 2) # b = 1
        x = a + b
    end

    $fibs[n] = x
    return x
end
