module MYENUMERABLE
  def all?(&block)
    result = true
    each{ |e| result =false unless yield e}
    print result
  end

  
end