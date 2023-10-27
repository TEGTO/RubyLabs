class Apartment
    attr_accessor :id, :apartment_number, :area, :floor, :number_of_rooms, :street, :building_type, :operation_period
  
    def initialize(id, apartment_number, area, floor, number_of_rooms, street, building_type, operation_period)
      @id = id
      @apartment_number = apartment_number
      @area = area
      @floor = floor
      @number_of_rooms = number_of_rooms
      @street = street
      @building_type = building_type
      @operation_period = operation_period
    end
  end
  
  # Creating an array of Apartment objects
  apartments = [
    Apartment.new(1, 10, 50, 2, 2, 'Street A', 'Concrete', 10),
    Apartment.new(2, 20, 70, 4, 3, 'Street B', 'Brick', 20),
    Apartment.new(3, 30, 65, 3, 2, 'Street A', 'Brick', 5),
    Apartment.new(4, 40, 90, 5, 4, 'Street C', 'Wood', 15)
  ]
  
  # а) List of apartments with a given number of rooms
  def apartments_with_rooms(apartments, rooms)
    apartments.select { |apt| apt.number_of_rooms == rooms }
  end
  
  puts "Apartments with 2 rooms:"
  apartments_with_rooms(apartments, 2).each { |apt| puts "Apartment number: #{apt.apartment_number}" }
  
  # б) List of apartments with a given number of rooms and located on a floor within a given range
  def apartments_with_rooms_and_floor_range(apartments, rooms, floor_range)
    apartments.select { |apt| apt.number_of_rooms == rooms && floor_range.include?(apt.floor) }
  end
  
  puts "\nApartments with 2 rooms and floor between 2 and 4:"
  apartments_with_rooms_and_floor_range(apartments, 2, 2..4).each { |apt| puts "Apartment number: #{apt.apartment_number}" }
  
  # в) List of apartments with an area exceeding the given one
  def apartments_exceeding_area(apartments, min_area)
    apartments.select { |apt| apt.area > min_area }
  end
  
  puts "\nApartments with area greater than 60:"
  apartments_exceeding_area(apartments, 60).each { |apt| puts "Apartment number: #{apt.apartment_number}" }
  