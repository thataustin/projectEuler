def find_palindrome(largest_factor)
    potential_palindrome = largest_factor.to_s + largest_factor.to_s.reverse
    return potential_palindrome if is_qualifying_palindrome(potential_palindrome)
    return find_palindrome(largest_factor - 1)
end

def is_qualifying_palindrome(potential_palindrome)
    return false if potential_palindrome.to_i > 999 * 999
    return true if has_3_digit_divisors(potential_palindrome)
    return false
end

def has_3_digit_divisors(val)
    val = val.to_i
    for i in 100..999
        return true if (val % i) == 0 && (val / i) >= 100 && (val / i) <= 999
    end

    return false
end

puts find_palindrome(999)
