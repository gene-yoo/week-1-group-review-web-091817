# Finish the implementation of the Car class so it has the functionality described below

class Car
  attr_accessor :make, :model
  @@all = []
  def initialize(make, model)
    @make = make
    @model = model
    @@all << self
  end

  def drive
    puts "VROOOOOOOOOOOOM!"
  end

  def self.all
    @@all
  end
end

car = Car.new("volvo", "lightening")
car.make
#=> "volvo"
car.model
#=> "ligthening"

car.drive
# => "VROOOOOOOOOOOOM!"

Car.all
#=> [car1, car2, car3]

# BONUS:
#
# Car.new(make: "volvo", model: "lightening")

# ------------ BONUS SOLUTION ------------
# class Car
#   attr_accessor :make, :model
#   @@all = []
#   def initialize(arg1, arg2=nil)
#     if arg1.class == Hash
#       @make = arg1[:make]
#       @model = arg1[:model]
#     else
#       @make = arg1
#       @model = arg2
#     end
#     @@all << self
#   end
#
#   def drive
#     puts "VROOOOOOOOOOOOM!"
#   end
#
#   def self.all
#     @@all
#   end
# end

car.make
#=> "volvo"
car.model
#=> "ligthening"
