require_relative 'my_enumerable'
# defining class MyList
class MyList
  include MyEnumerable
  # initialize method
  def initialize(*param)
    # initialize instance variable @list
    @list = param
  end

  # Method to yields (call MyEnumerable methods) successive it of @list
  def each(&block)
    return 'No block given' unless block_given?

    @list.each { |e| block.call(e) }
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |e| e < 5 }) # true
puts(list.all? { |e| e > 5 }) # false

# Test #any?
puts(list.any? { |e| e == 2 }) # true
puts(list.any? { |e| e == 5 }) # false

# Test #filter
print(list.filter(&:even?)) # [2, 4]
