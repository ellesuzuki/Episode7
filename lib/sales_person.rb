class SalesPerson

  attr_reader :cities
  def initialize
    @cities = []
  end

  def schedule_city(city)
    @cities << city unless @cities.include?(city)
  end

  def route
    CalculatesRoute.calculate(cities)
  end

  ## ex. salesperson.start_city(place_obj)
  def start_city(city)
    if @cities.include?(city)
      @cities.delete(city)
    end

    @cities.insert(0, city)
  end
end
