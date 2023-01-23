module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
  end
end





#each: executes block for each array element or hash element if you want to get fancy. #each takes in a block specified by user. looks like you can pass in as many arguments as you want with the real #each, including zero.
#do I use `yield`?
#do I use a proc or lambda? the thing about the number of arguments might be a consideration there.
#I intend to use a loop of some kind. decide which