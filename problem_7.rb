def is_prime(number, next_divisor = 2)
    go_up_to = number / next_divisor # it's ok if this is a decimal

    return true if (next_divisor > go_up_to) # return true because this must be a prime if we've reached a stopping point
    return false if (number % next_divisor) == 0 # found a multiple...return false
    return is_prime(number, next_divisor + 1)
end

count_of_primes = 6
current_highest_prime = 13
i = 14

while count_of_primes < 10001
    if is_prime(i)
        current_highest_prime = i
        count_of_primes += 1
    end
    i += 1
end

puts current_highest_prime
