require './my_enumerable'

class MyList
  include MYENUMERABLE
  attr_accessor :list

  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end

new_list = MyList.new(6, 2, 3, 4)

new_list.all? { |e| e < 5 }
new_list.all? { |e| e > 5 }
new_list.any? { |e| e < 5 }
new_list.any? { |e| e > 5 }
new_list.filter { |e| e < 5 }
new_list.filter { |e| e > 5 }
