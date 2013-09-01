def is_prime(number, next_divisor = 2)
    go_up_to = number / next_divisor # it's ok if this is a decimal

    return true if (next_divisor > go_up_to) # return true because this must be a prime if we've reached a stopping point
    return false if (number % next_divisor) == 0 # found a multiple...return false
    return is_prime(number, next_divisor + 1)
end

sum = 0
for i in 2..1_999_999
    if is_prime(i)
        sum += i
    end
end

puts sum
