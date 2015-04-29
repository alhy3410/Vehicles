class Dealership
  @@all_dealerships = []

  define_method(:initialize) do |dealership|
    @dealership = dealership
    @id = @@all_dealerships.length().+(1)
    @cars = []
  end

  define_singleton_method(:clear) do
    @@all_dealerships = []
  end

  define_method(:name) do
    @dealership
  end

  define_method(:id) do
    @id
  end

  define_method(:cars) do
    @cars
  end

  define_singleton_method(:all) do
    @@all_dealerships
  end

  define_method(:save) do
    @@all_dealerships.push(self)
  end

  define_singleton_method(:clear) do
    @@all_dealerships = []
  end

  define_singleton_method(:find) do |id|
    found_dealership = nil
    @@all_dealerships.each() do |dealership|
      if dealership.id().eql?(id)
        found_dealership = dealership
      end
    end
    found_dealership
  end

  define_method(:add_vehicle) do |vehicle|
    @cars.push(vehicle)
  end


end
