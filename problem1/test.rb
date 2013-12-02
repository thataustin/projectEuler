require_relative "solution"
require "test/unit"
class TestProblem < Test::Unit::TestCase
  def test_simple
    assert_equal(23, Solution.new.solve(10))
  end

  def test_final
    assert_equal(233168, Solution.new.solve(1000))
  end
end
