class Person
  def age=(num)
    @age = num * 2
  end

  def age
    puts @age * 2
  end
end

person1 = Person.new
person1.age = 20
puts person1.age

