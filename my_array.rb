class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    array.length
  end

  def reverse
    array.reverse
  end

  def max
    array.max
  end

  def min
    array.min
  end

  def desc
    array.sort! { |x, y| y <=> x }
  end

  def asc
    array.sort
  end

  def odd
    array.find_all { |integer| (integer % 2).nonzero? }
  end

  def multiple_to_three
    array.find_all { |integer| (integer % 3).zero? }
  end

  def uniq
    array.uniq
  end

  def devide_on_ten
    array.map { |integer| integer.to_f / 10 }
  end

  def chars
    array.collect { |x| ('a'..'z').to_a[x - 1].to_sym }
  end

  def switch
    a = @array.index(@array.min)
    b = @array.index(@array.max)
    array[a], array[b] = array[b], array[a]
    array
  end

  def before_min
    minarray = @array.index(array.min)
    @array[0, minarray]
  end

  def three_smallest
    array.sort[0..3]
  end
end
