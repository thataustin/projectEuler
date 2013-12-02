class Solution
  def solve (max)
    multiples_of_3_or_5(max)
  end

  def multiples_of_3_or_5 (max)
    max -= 1
    return 0 if max <= 0
    return max + multiples_of_3_or_5(max) if max % 5 == 0 or max % 3 == 0
    return multiples_of_3_or_5 (max)
  end
end
