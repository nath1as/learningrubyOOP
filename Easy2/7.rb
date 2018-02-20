class Pet
  attr_accessor :type, :name

  def initialize(type, name)
    @type = type
    @name = name
  end
end

class Owner
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = 0
  end

  def number_of_pets
    @pets
  end

  def add
    @pets += 1
  end
end

class Shelter
  attr_accessor :adoptions

  def initialize
    @adoptions = {}
  end

  def adopt(owner, pet)
    @adoptions[owner] ? @adoptions[owner] += [pet] : @adoptions[owner] = [pet]
    owner.add
  end

  def print_adoptions
    adoptions.each do |owner, pet|
      puts "#{owner.name}has adopted the following pets:"
      pet.each do |pet|
        puts "a #{pet.type} named #{pet.name}"
      end
    end
  end
end


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
