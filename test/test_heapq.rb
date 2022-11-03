gem "minitest"
require "minitest/autorun"
require "heapq"

class TestHeapq < Minitest::Test
  def test_pop
    q = Heapq.new([11, 5, 8, 3, 4])
    assert_equal q.pop, 11
    assert_equal q.pop, 8
    assert_equal q.pop, 5
  end

  def test_push
    q = Heapq.new([11, 5, 8, 3, 4])
    q.push 15
    assert_equal q.peek, 15
  end

  def test_push_pop_larger_than_root
    q = Heapq.new([11, 5, 8, 3, 4])
    assert_equal q.push_pop(15), 15
  end

  def test_push_pop_smaller_than_root
    q = Heapq.new([11, 5, 8, 3, 4])
    q.push_pop 10
    assert_equal q.peek, 10
  end

  def test_size
    q = Heapq.new([11, 5, 8, 3, 4])
    assert_equal q.pop, 11
    assert_equal q.pop, 8
    assert_equal q.pop, 5
    assert_equal q.size, 2

    q.push 4
    assert_equal q.size, 3
  end
end
