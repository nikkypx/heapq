class Heapq
  VERSION = "1.0.0"
  EMPTY_SIZE = 0

  def initialize a
    @heap = heapify [a.size, *a.dup]
  end

  def push e
    @heap << e
    last_idx = @heap[0] += 1
    up_heap @heap, last_idx
    e
  end

  def pop
    val = peek
    @heap[1] = @heap[-1]
    @heap[0] -= 1
    @heap.pop
    heapify @heap
    val
  end

  def push_pop e
    if peek > e
      val = peek
      @heap[1] = e
      heapify @heap
      val
    else
      e
    end
  end

  def peek
    @heap[1]
  end

  def size
    @heap[0] || EMPTY_SIZE
  end

  private

  def heapify a
    a.tap { (a.size / 2).downto(1) { |i| down_heap a, i } }
  end

  def up_heap a, i
    p_idx = i / 2

    return if p_idx < 1

    if a[p_idx] < a[i]
      a[i], a[p_idx] = a[p_idx], a[i]

      up_heap a, i / 2
    end
  end

  def down_heap a, i
    l_idx = 2 * i
    r_idx = 2 * i + 1
    lrg = i
    size = a[0]

    lrg = l_idx if l_idx <= size && a[l_idx] > a[lrg]
    lrg = r_idx if r_idx <= size && a[r_idx] > a[lrg]

    if lrg != i
      a[i], a[lrg] = a[lrg], a[i]

      down_heap a, lrg
    end
  end
end
