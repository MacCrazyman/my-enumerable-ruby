require './MyEnumerable'

class MyList
  include MYENUMERABLE
  attr_accessor :List
  def initialize (*args)
    @List = args
  end

  def each
    @List.each do |item|
      yield item   #{|item| item < 5}
    end
  end
  

  # def all?
  #   @List.each do |item|
  #     puts yield item   #{|item| item < 5}
  #   end
  # end
end

# {|e| e < 5}
new_list = MyList.new(1,2,3,4)
# print new_list.all? {|e| e>5}
new_list.hello