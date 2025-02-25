class Mechanic

  @@all = []

  attr_reader :name, :specialty
  
  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select{|car| car.mechanic == self}
  end

  def car_owners
    cars.map{|car| car.owner}
  end

  def car_owner_names
    car_owners.map{|car_owner| car_owner.name}
  end
end
