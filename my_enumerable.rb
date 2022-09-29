module MyEnumerable
    def all?
        result = true
        each do |elem|
          result = false unless yield elem
        end
        result
      end
end
