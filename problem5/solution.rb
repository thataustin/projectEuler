class Solution5 
end
def is_divisble_by_all(num)
    for i in 1..20
        return false if (num % i) != 0
    end
    return true
end

my_num = 380 
while !is_divisble_by_all(my_num)
    my_num += 380
end

puts my_num
