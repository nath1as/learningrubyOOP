class Person

  def initialize(name)
    @name = name
  end

  def name
    copy = @name
    puts copy
  end
end

person1 = Person.new('James')
person1.name.reverse!
puts person1.name


#LS solution
#  def name
#    @name.clone
#  end
