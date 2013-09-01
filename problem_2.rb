def fib(smaller, larger)
    return 0 if larger > 4_000_000 
    return smaller + larger + fib(larger, smaller + larger) if (smaller + larger) % 2 == 0
    return fib(larger, smaller + larger)
end

puts fib(0, 1)
