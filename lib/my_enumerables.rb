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

end

class Array
  def my_each
    for i in self
      yield(i)
    end
  end
end


p [1,2,3].my_select{|el| el == 2}
p [1,2,3].my_all?{|el| el == 2}