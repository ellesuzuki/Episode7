Dir["./lib/*.rb"].each {|file| require file }

=begin
phil = SalesPerson.new
phil.schedule_city(Place.build("Dallas, TX"))
phil.schedule_city(Place.build("El Paso, TX"))
phil.schedule_city(Place.build("Austin, TX"))
phil.schedule_city(Place.build("Lubbock, TX"))

puts phil.route
=end

mochi = SalesPerson.new

benicia = Place.build('Benicia, CA')
berkeley = Place.build('Berkeley, CA')
eville = Place.build('Emeryville, CA')
sf = Place.build('San Francisco, CA')
sm = Place.build('San Mateo, CA')
wc = Place.build('Walnut Creek, CA')

cities = [berkeley, wc, sf, sm, benicia, eville]

cities.each { |city|
  mochi.schedule_city(city)
}

mochi.start_city(benicia) # city that was already scheduled
#mochi.start_city(Place.build('Pleasant Hill, CA')) # a new city not already scheduled
#mochi.start_city(Place.build('Mill Valley'))
puts mochi.route
