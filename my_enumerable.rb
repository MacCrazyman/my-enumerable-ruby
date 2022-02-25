module MYENUMERABLE
  def all?
    result = true
    each { |e| result = false unless yield e }
    p result
  end

  def any?
    result = false
    each { |e| result = true if yield e }
    p result
  end

  def filter
    result = []
    each { |e| result << e if yield e }
    p result
  end
end
