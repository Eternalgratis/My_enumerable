module MyEnumerable
  def all?
    result = true
    each do |elem|
      result = false unless yield elem
    end
    result
  end

  def any?
    result = false
    each do |elem|
      result = true if yield elem
    end
    result
  end

  def filter
    result = []
    each do |elem|
      result.push(elem) if yield elem
    end
    result
  end
end
