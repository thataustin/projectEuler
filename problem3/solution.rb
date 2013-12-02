class Solution3 
end
max = 600851475143
i = 1
smallest_big_factor_so_far = 600851475143
all_factors = { i => smallest_big_factor_so_far }

while i < smallest_big_factor_so_far
    smallest_big_factor_so_far = all_factors.values.min
    break if i > smallest_big_factor_so_far

    if 600851475143 % i == 0
        all_factors[i] = 600851475143 / i 
    end

    i += 1
end

all_factors = all_factors.flatten # turn it into an array

def is_prime(number, next_divisor = 2, go_up_to = 1)
    go_up_to = number / next_divisor # it's ok if this is a decimal

    return true if (next_divisor > go_up_to) # return true because this must be a prime if we've reached a stopping point
    return false if (number % next_divisor) == 0 # found a multiple...return false
    return is_prime(number, next_divisor + 1, go_up_to)
end


all_factors =  all_factors.keep_if { |val| is_prime(val) }
# now we have a list of all the factors, so let's eliminate the easiest of the pairs

print all_factors
