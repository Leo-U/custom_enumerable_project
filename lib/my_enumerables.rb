module Enumerable
  def my_each_with_index
    index = 0
    each do 
      yield(self[index], index)
      index += 1
    end
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method

class Array
  def my_each
    return to_enum unless block_given?
    for i in self
      yield(i)
    end
  end
end