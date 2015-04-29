class Vehicle
  @@all_vehicle = []

  define_method(:initialize) do |make, modelvehicle, year|
    @make = make
    @model = modelvehicle
    @year = year
    @id = @@all_vehicle.length().+(1)
  end

  define_singleton_method(:all) do
    @@all_vehicle
  end

  define_method(:id) do
    @id
  end

  define_method(:save) do
    @@all_vehicle.push(self)
  end

  define_singleton_method(:clear) do
    @@all_vehicle = []
  end

  define_method(:make) do
    @make
  end

  define_method(:modelvehicle) do
    @model
  end

  define_method(:year) do
    @year
  end

  define_method(:age) do
    currentyear = Time.now().year()
    age = currentyear - @year
    age
  end

  define_method(:worth_buying?) do
    american_made = ["Ford", "GM", "Chevy"]
    self.age.<=(15) && american_made.include?(@make)
  end


  define_singleton_method(:find) do |identification|
    found_vehicle = nil
    @@all_vehicle.each() do |vehicle|
      if vehicle.id().eql?(identification.to_i())
        found_vehicle = vehicle
      end
    end
    found_vehicle
end
end
