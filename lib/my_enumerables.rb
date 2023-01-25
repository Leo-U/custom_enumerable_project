module Enumerable
  
  def my_each_with_index
    i = 0
    my_each do 
      yield(self[i], i)
      i += 1
    end
  end

  def my_select
    selected = []
    i = 0
    my_each do
      selected << self[i] if yield(self[i])
      i += 1
    end
    selected
  end

  def my_all?(&block)
    my_select(&block) == self
  end

  def my_any?(&block)
    my_select(&block) != []
  end

  def my_none?(&block)
    my_select(&block) == []
  end

  def my_count(&block)
    i = 0
    if block_given?
      my_select(&block).my_each { i += 1 }
    else
      my_each { i += 1 }
    end
    i
  end

  def my_map
    mapped = []
    i = 0
    my_each do
      mapped << yield(self[i])
      i += 1
    end
    mapped
  end 
  
  def my_inject(accumulator = (argument_not_passed = true; self[0]))
    argument_not_passed ? i = 1 : i = 0
    my_each do
      accumulator = yield(accumulator, self[i]) if self[i] != nil
      i += 1
    end
    accumulator
  end
end

class Array
  def my_each
    for i in self
      yield(i)
    end
  end
end