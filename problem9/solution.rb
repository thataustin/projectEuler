class Solution9 
end
possible_solutions = {}

1_000.times do |a|
    1_000.times do |b|
        if 500_000 == 1_000 * a + 1_000 * b - a * b
            possible_solutions[a] = b
            puts "a * b : #{a.to_s} * #{b.to_s}"
        end
    end
end
