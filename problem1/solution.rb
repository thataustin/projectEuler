def multiples_of_3_or_5(max)
    if max <= 0; return 0; end
    return max + multiples_of_3_or_5(max - 1) if max % 5 == 0 or max % 3 == 0 
    return multiples_of_3_or_5 (max - 1)
end

puts multiples_of_3_or_5(999)
