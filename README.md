# Heapq

> Simple heap (priority queue) implementation in Ruby. It provides `push`, `pop`, `peek`, and `push_pop`.

## Features

- **Max Heap Implementation:** Ensures that the largest element is always at the top.
- **Essential Heap Operations:** Supports `push`, `pop`, `peek`, and `push_pop`.
- **Bulk Initialization:** Initialize the heap with an array of elements.

## Usage
### Initializing the Heap

You can initialize a new heap with an array of elements. The first element of the array represents the size of the heap, followed by the heap elements.

```ruby
heap = Heapq.new([3, 1, 4, 1, 5, 9, 2, 6, 5])
```

### Pushing Elements
Add a new element to the heap. The heap maintains the max heap property after insertion.

```ruby
heap.push(7)
```

### Popping Elements
Remove and return the top (largest) element from the heap.

```ruby
max = heap.pop
puts max  # Output: 9
```

### Push-Pop Operation
Push a new element onto the heap and then pop and return the top element in a single operation. This is more efficient than performing push followed by pop.

```ruby
max = heap.push_pop(8)
puts max  # Output: 8
```

### Peeking
View the top element without removing it from the heap.

```ruby
top = heap.peek
puts top  # Output: 7
```

### Getting the Size
Retrieve the number of elements currently in the heap.

```ruby
size = heap.size
puts size  # Output: 8
```

## Installation

Add this line to your application's `Gemfile`:

```ruby
gem 'heapq', '~> 1.0'
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
