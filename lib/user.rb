require_relative 'bike_container'
require_relative 'bike'
require_relative 'docking_station'
require_relative 'van'

class User 
  include BikeContainer

  def initialize(options = {})
    # self.capacity is calling the capacity=() method
    # (note the equals sign) defined in BikeContainer
    # capacity (the second argument to fetch()) is calling
    # the capacity() method in BikeContainer
    self.capacity = options.fetch(:capacity, capacity)
  end

  def load_from(container, borisbike)
    container.release(borisbike)
    self.dock(borisbike)
  end

  def unload_to(container, borisbike)
    self.release(borisbike)
    container.dock(borisbike)
  end

  def crash(bike)
    bike.break
  end

end 

