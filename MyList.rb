require './MyEnumerable'

class MyList
  include MYENUMERABLE
  attr_accessor :List
  def initialize (*args)
    @List = args
  end

  def each
    @List.each do |item|
      yield item
    end
  end
end

new_list = MyList.new(6,2,3,4)

new_list.all? {|e| e < 5}
new_list.all? {|e| e > 5}
new_list.any? {|e| e < 5}
new_list.any? {|e| e > 5}
new_list.filter {|e| e < 5}
new_list.filter {|e| e > 5}
