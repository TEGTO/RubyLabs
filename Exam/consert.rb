class ConcertEvent
    attr_accessor :name, :date, :genre, :venue, :cost
  
    def initialize(name, date, genre, venue, cost)
      @name = name
      @date = date
      @genre = genre
      @venue = venue
      @cost = cost
    end
  
    def to_s
      "#{@name} - #{@date}, #{@venue}, #{@cost}$"
    end
  end
  
  class ConcertManager
    attr_accessor :concerts
  
    def initialize
      @concerts = []
    end
  
    def add_concert(concert)
      @concerts << concert
    end
  
    def search_by_genre(genre)
      @concerts.select { |concert| concert.genre == genre }
    end
  
    def search_by_date(date)
      @concerts.select { |concert| concert.date == date }
    end
  
    def search_by_cost(cost)
      @concerts.select { |concert| concert.cost <= cost }
    end
  
    def search_by_artist(artist)
      @concerts.select { |concert| concert.artists.include?(artist) }
    end
  
    def search_by_venue(venue)
      @concerts.select { |concert| concert.venue == venue }
    end
  
    def sort_by_date
      @concerts.sort_by { |concert| concert.date }
    end
  
    def sort_by_cost
      @concerts.sort_by { |concert| concert.cost }
    end
  
    def sort_by_name
      @concerts.sort_by { |concert| concert.name }
    end
  end
  
  # Приклад використання:
  
  concert_manager = ConcertManager.new
  
  concert1 = ConcertEvent.new("Concert 1", "2023-12-10", "Rock", "Venue A", 50)
  concert2 = ConcertEvent.new("Concert 2", "2023-12-15", "Pop", "Venue B", 40)
  concert3 = ConcertEvent.new("Concert 3", "2023-12-20", "Hip-hop", "Venue C", 60)
  
  concert_manager.add_concert(concert1)
  concert_manager.add_concert(concert2)
  concert_manager.add_concert(concert3)
  
  puts "All concerts:"
  puts concert_manager.concerts
  
  puts "\nConcerts sorted by date:"
  puts concert_manager.sort_by_date
  
  puts "\nConcerts sorted by cost:"
  puts concert_manager.sort_by_cost
  
  puts "\nConcerts sorted by name:"
  puts concert_manager.sort_by_name
  
  puts "\nRock concerts:"
  puts concert_manager.search_by_genre("Rock")
  
  puts "\nConcerts at Venue A:"
  puts concert_manager.search_by_venue("Venue A")
  