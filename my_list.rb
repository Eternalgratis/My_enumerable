require_relative "my_enumerable"
# defining class MyList
class MyList
  include MyEnumerable
  # initialize method
  def initialize(*param)
    # initialize intance variable @list
    @list = param
  end

  # Method to yields (call MyEnumerable methods) successive it of @list
  def each(&block)
    return 'No block given' unless block_given?

    @list.each { |e| block.call(e) }
  end
end
