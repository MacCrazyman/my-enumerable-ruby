module MYENUMERABLE
  def all?(&block)
    result = true
    each{ |e| result =false unless yield e}
    print result
  end

  def any?(&block)
    result = false
    each{ |e| result = true if yield e}
    print result
  end
end

# [1, 2,3,4,5]
# {|e|, e>5}