class Person
  attr_writer :name

  def name
    puts "Mr." + @name
  end
end

person1 = Person.new
person1.name = 'James'
puts person1.name
